.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;,
        Lcom/android/server/power/PowerManagerService$UserActivityTask;,
        Lcom/android/server/power/PowerManagerService$InputDeviceLightState;,
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandler;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/power/PowerManagerService$ScaleFactorLock;,
        Lcom/android/server/power/PowerManagerService$DozeLock;,
        Lcom/android/server/power/PowerManagerService$AlpmLock;,
        Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;
    }
.end annotation


# static fields
.field private static final ACTION_BROADCAST_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field static final ACTION_FTA_OFF:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_OFF"

.field static final ACTION_FTA_ON:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_ON"

.field private static final BOOT_ANIMATION_POLL_INTERVAL:I = 0xc8

.field private static final BOOT_ANIMATION_SERVICE:Ljava/lang/String; = "bootanim"

.field public static final COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field private static final COVER_SYSFS:Ljava/lang/String; = "/sys/class/sec/sec_key/hall_detect"

.field private static final CRITICAL_LOW_BATTERY_LEVEL:I = 0x5

.field private static final DEBUG:Z = false

.field private static final DEBUG_SPEW:Z = false

.field private static final DEFAULT_DOUBLE_TAP_TO_WAKE:I = 0x0

.field private static final DEFAULT_KEYBOARD_OFF_TIMEOUT:I = 0xbb8

.field private static final DEFAULT_KEY_NIGHT_MODE:I = 0x0

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_ALPM_MODE:I = 0x40000

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_BUTTON_EVENT:I = 0x4000

.field private static final DIRTY_DOCK_STATE:I = 0x400

.field private static final DIRTY_DUAL_SCREEN_EVENT:I = 0x80000

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_KEY_LIGHT_ONOFF_BY_FOLDER:I = 0x10000

.field private static final DIRTY_KEY_LIGHT_ONOFF_BY_SCREEN:I = 0x8000

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_SCREEN_BRIGHTNESS_BOOST:I = 0x800

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_TOUCHKEY_EVENT:I = 0x1000

.field private static final DIRTY_TOUCHSCREEN_EVENT:I = 0x2000

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static final DPM_CONFIG_FEATURE_MASK_NSRM:I = 0x4

.field public static final DUAL_SCREEN_ALL_OFF:I = 0x0

.field public static final DUAL_SCREEN_ALL_ON:I = 0x3

.field public static final DUAL_SCREEN_MAIN_SINGLE:I = 0x1

.field public static final DUAL_SCREEN_MODEL:Z = false

.field public static final DUAL_SCREEN_SUB_SINGLE:I = 0x2

.field private static final FAMILY_CONNECTED_PKG:Ljava/lang/String; = "com.samsung.android.familyshare.dashboard"

.field private static final FEATURE_COVER_FLIP:Ljava/lang/String; = "com.sec.feature.cover.flip"

.field private static final FEATURE_COVER_SVIEW:Ljava/lang/String; = "com.sec.feature.cover.sview"

.field private static final FORCE_BLANK:I = 0x0

.field private static final FORCE_DISPLAY_NONE:I = -0x1

.field private static final FORCE_UNBLANK:I = 0x1

.field private static final HALF_BRIGHTNESS_BATTERY_LEVEL:I = 0xf

.field private static final HALF_BRIGHTNESS_LEVEL:I = 0x80

.field public static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final LAST_PERCENT_BATTERY_LEVEL:I = 0x1

.field private static final MSG_KEY_LIGHT_ONOFF_BY_SCREEN:I = 0x4

.field private static final MSG_PRE_SMART_STAY:I = 0x2

.field private static final MSG_REGISTER_POCKET_SENSOR:I = 0x1

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x3

.field private static final MSG_SMART_STAY:I = 0x1

.field private static final MSG_UNREGISTER_POCKET_SENSOR:I = 0x2

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final OUTDOOR_MODE_SETTING:Ljava/lang/String; = "display_outdoor_mode"

.field private static final PMS_DB_BRIGHTNESS_ENABLE:Ljava/lang/String; = "pms_notification_panel_brightness_adjustment"

.field private static final POWER_FEATURE_DOUBLE_TAP_TO_WAKE:I = 0x1

.field private static final POWER_HINT_LOW_POWER:I = 0x5

.field public static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x1388

.field private static final SEC_USE_FACTORY_BINARY:Z

.field private static final SYSTEM_SHUTDOWN:Ljava/lang/String; = "system_shutdown"

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field private static final TAG_BRIGHTNESS:Ljava/lang/String; = "[BRIGHTNESS] "

.field private static final TAG_ETC:Ljava/lang/String; = ""

.field private static final TAG_INPUT_DEVICE_LIGHT:Ljava/lang/String; = "[input device light] "

.field public static final TAG_LOG_TO_KERNEL:Ljava/lang/String; = "!@"

.field private static final TAG_POWER_SAVE_MODE:Ljava/lang/String; = "[PSM] "

.field public static final TAG_POWER_STATE:Ljava/lang/String; = "[ps] "

.field public static final TAG_POWER_STATE_V:Ljava/lang/String; = "[s] "

.field private static final TAG_PRINT_WAKE_LOCK:Ljava/lang/String; = "[PWL] "

.field private static final TAG_SMART_STAY:Ljava/lang/String; = "[smart stay] "

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final USER_ACTIVITY_SCREEN_DREAM:I = 0x4

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_DOZE:I = 0x40

.field private static final WAKE_LOCK_DRAW:I = 0x80

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field private static final ifNotifierInSeperateThread:Z = true


# instance fields
.field private final COUNT_FOR_LOGGING_FREQUENT_EVENT:I

.field private final COUNT_TO_RESET_FOR_LOGGING_FREQUENT_EVENT:I

.field private final USE_DEVICE_LOCK_TIME:Z

.field private final USE_PRE_SMART_STAY:Z

.field private final USE_SMART_STAY:Z

.field private mAlpmHlpmMode:I

.field private mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAttentionLight:Lcom/android/server/lights/Light;

.field private mAutoLowPowerModeConfigured:Z

.field private mAutoLowPowerModeSnoozing:Z

.field private mBatteryLevel:I

.field private mBatteryLevelLow:Z

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatus:I

.field private final mBlockedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBootCompleted:Z

.field private mClearViewBrightnessModeCount:I

.field private mClearViewBrightnessModeEnabled:Z

.field private mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

.field private mColorFadeExit:Z

.field private mColorWeaknessModeCount:I

.field private mColorWeaknessModeEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverIsUpdatedFromCoverManager:Z

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

.field private mCoverType:I

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field private mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field private mDelayTimePrintWakeLock:J

.field private mDesiredMultiScreenState:I

.field private mDesiredMultiScreenStateChangeReason:I

.field private mDesiredMultiScreenStateOverride:I

.field private mDeviceIdleMode:Z

.field mDeviceIdleTempWhitelist:[I

.field mDeviceIdleWhitelist:[I

.field private mDirty:I

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mDisplayReady:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDockState:I

.field private mDoubleTapWakeEnabled:Z

.field private mDozeAfterScreenOffConfig:Z

.field private mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

.field private mDozeScreenBrightnessOverrideFromDreamManager:I

.field private mDozeScreenStateOverrideFromDreamManager:I

.field private mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsBatteryLevelDrainCutoffConfig:I

.field private mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field private mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledOnBatteryConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mDynamicAutoBrightnessRatioValueSetting:I

.field private mEmergencyMode:Z

.field private mFTAMode:Z

.field private mFaceDetected:Z

.field private mFaceDetectedFailIntent:Landroid/content/Intent;

.field private mFeatureCoverSysfs:Z

.field private mFeatureNotifyScreenOffTimeout:Z

.field private final mForceBlankDisplayRunnable:Ljava/lang/Runnable;

.field private mForceDoze:Z

.field private final mForceUnblankDisplayRunnable:Ljava/lang/Runnable;

.field private mHalAutoSuspendModeEnabled:Z

.field private mHalInteractiveModeEnabled:Z

.field private final mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

.field private mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

.field private mHandlerSmartStay:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHandlerThreadSmartStay:Landroid/os/HandlerThread;

.field private mHoldingDisplaySuspendBlocker:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private mInputDeviceEnabled:Z

.field private mIsAlpmMode:Z

.field private final mIsBadCurrentConsumptionDevice:Z

.field private mIsCocktailBarCover:Z

.field public mIsCoverClosed:Z

.field mIsDeviceMoving:Z

.field private mIsFolderType:Z

.field private mIsInPocket:Z

.field private mIsInPocketOrBagAvailable:Z

.field private mIsKeyboardVisible:Z

.field public mIsLidClosed:Z

.field private mIsPocketSensorEnabled:Z

.field private mIsPowered:Z

.field private mIsScreenBrightnessOverridenAfterCriticalLowBattery:Z

.field private mIsScreenBrightnessSettingChangedAfterCriticalLowBattery:Z

.field private mIsSettingChangedAfterLowBattery:Z

.field public mIsSipVisible:Z

.field private mIsSupportedLightSensor:Z

.field private mIsSupportedSensorHub:Z

.field mIsWirelessChargerSContextEnabled:Z

.field mIsWirelessChargerSContextRegistered:Z

.field mIsWirelessCharging:Z

.field private mKeyLedOffNightModeSetting:I

.field private mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

.field private mKeyboardOffTimeoutSetting:I

.field private mLCDFlashMode:Z

.field private mLastAndroidAutoBoostTime:J

.field private mLastBrightnessOverrideState:Z

.field private mLastInteractivePowerHintTime:J

.field private mLastOutdoorModeEnblaedTime:J

.field private mLastScreenBrightnessBoostTime:J

.field private mLastScreenOffEventElapsedRealTime:J

.field private mLastScreenTimeout:I

.field private mLastSleepTime:J

.field private mLastUserActivitySummary:I

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeTime:J

.field private mLastWakeUpReason:I

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private final mLock:Ljava/lang/Object;

.field private mLowBatteryTriggerLevel:I

.field private mLowPowerModeEnabled:Z

.field private final mLowPowerModeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/PowerManagerInternal$LowPowerModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPowerModeSetting:Z

.field private mMainScreenState:I

.field private mMaximumScreenDimDurationConfig:I

.field private mMaximumScreenDimRatioConfig:F

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:I

.field private mMinimumScreenOffTimeoutConfig:I

.field private mNativeUserActivityCount:I

.field private mNextTimeoutForPreSmartStay:J

.field private mNextTimeoutForSmartStay:J

.field private mNoUserActivityIntent:Landroid/content/Intent;

.field private mNoUserActivitySent:Z

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mOutdoorModeSetting:Z

.field private mOutdoorModeTimeout:I

.field private mPendingForceUnblankDisplayState:I

.field private mPendingMessagePreSmartStay:Z

.field private mPendingMessageSmartStay:Z

.field private mPlugType:I

.field private mPocketHandler:Landroid/os/Handler;

.field private mPocketHandlerThread:Landroid/os/HandlerThread;

.field private mPocketQueryDone:Z

.field private final mPocketQueryLock:Ljava/lang/Object;

.field private mPocketSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private final mPreSmartStayDelay:I

.field private mPrevDesiredMultiScreenState:I

.field private mPrevReleasedWakeLock:Ljava/lang/String;

.field private mPrevTouchKeyForceDisable:Z

.field private final mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

.field private mProximityPositive:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSandmanScheduled:Z

.field private mSandmanSummoned:Z

.field private mScaleFactorLock:Lcom/android/server/power/PowerManagerService$ScaleFactorLock;

.field private mScreenAutoBrightnessAdjustmentSetting:F

.field private mScreenBrightnessBoostInProgress:Z

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:I

.field private mScreenBrightnessScaleFactor:F

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenBrightnessSettingMaximum:I

.field private mScreenBrightnessSettingMinimum:I

.field private mScreenDimDurationOverrideFromWindowManager:J

.field private mScreenOffReason:Ljava/lang/String;

.field private mScreenOffTimeoutIntent:Landroid/content/Intent;

.field private mScreenOffTimeoutSetting:I

.field private mScreenOnOffCount:I

.field private mScreenOnReason:Ljava/lang/String;

.field private mSecuredLockEnableSetting:I

.field private mSecuredLockTimeoutSetting:I

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mSipIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSleepTimeoutSetting:I

.field private mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

.field private mSmartGlow:Lcom/android/server/lights/Light;

.field private final mSmartStayDelay:I

.field private mSmartStayEnabledSetting:Z

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private mSubScreenPolicyOverride:I

.field private mSubScreenState:I

.field private mSubTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

.field private mSupportsDoubleTapWakeConfig:Z

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mSystemReady:Z

.field private mTemporaryMarkerScreenBrightnessSettingOverride:I

.field private mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

.field private mTemporaryScreenBrightnessSettingOverride:I

.field private mTheaterModeEnabled:Z

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private mTouchKeyForceDisable:Z

.field private mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

.field private mTouchKeyOffTimeoutOverrideFromWindowManager:J

.field private mTouchKeyOffTimeoutSetting:I

.field private mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

.field private mTspMainLpmEnabled:Z

.field private mTspSubLpmEnabled:Z

.field private final mUidState:Landroid/util/SparseIntArray;

.field private mUserActivityIntent:Landroid/content/Intent;

.field private mUserActivitySummary:I

.field private final mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mUserActivityTimeoutSetting:I

.field private final mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

.field private mUserSwitched:Z

.field private mWakeLockSummary:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field mWakeUpEvenThoughProximityPositive:Z

.field private mWakeUpPreventionForNotificationSetting:Z

.field private mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

.field private mWakefulness:I

.field private mWakefulnessChanging:Z

.field private final mWhenCheckSmartStay:I

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

.field private mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

.field mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mlastSetCoverTypeTime:J

.field private mlastUpdateCoverStateReason:Ljava/lang/String;

.field private mlastUpdateCoverStateTime:J

.field private mlastUpdateCoverTypeReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 704
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->SEC_USE_FACTORY_BINARY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 775
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 314
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 315
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 317
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSubTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 321
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mCocktailBarManagerInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    .line 325
    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    .line 327
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardOffTimeoutSetting:I

    .line 330
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z

    .line 332
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mPrevTouchKeyForceDisable:Z

    .line 333
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mInputDeviceEnabled:Z

    .line 334
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisable:Z

    .line 335
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    .line 339
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mEmergencyMode:Z

    .line 344
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    .line 347
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 348
    const-string v0, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->USE_DEVICE_LOCK_TIME:Z

    .line 350
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockEnableSetting:I

    .line 351
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    .line 355
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsAlpmMode:Z

    .line 356
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    .line 360
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    .line 365
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    .line 366
    new-instance v0, Lcom/android/server/power/PowerManagerService$UserActivityTask;

    invoke-direct {v0, p0, v5}, Lcom/android/server/power/PowerManagerService$UserActivityTask;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    .line 367
    new-instance v0, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-direct {v0, p0, v5}, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    .line 385
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsSettingChangedAfterLowBattery:Z

    .line 389
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStatus:I

    .line 397
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 449
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 464
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mIsSupportedLightSensor:Z

    .line 515
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 597
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 616
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 629
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 634
    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 639
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 643
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    .line 650
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 653
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 656
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 659
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 676
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mLowBatteryTriggerLevel:I

    .line 683
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 686
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 688
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 691
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mUserSwitched:Z

    .line 703
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mFTAMode:Z

    .line 707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    .line 711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBlockedUids:Ljava/util/ArrayList;

    .line 718
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    .line 722
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    .line 726
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    .line 731
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    .line 733
    const v0, 0xdbba0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeTimeout:I

    .line 737
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeCount:I

    .line 738
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeEnabled:Z

    .line 739
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeCount:I

    .line 740
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeEnabled:Z

    .line 743
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mForceDoze:Z

    .line 744
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

    .line 745
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mAlpmHlpmMode:I

    .line 749
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 750
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextEnabled:Z

    .line 751
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    .line 752
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    .line 753
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessCharging:Z

    .line 757
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    .line 1827
    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    .line 2042
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsCocktailBarCover:Z

    .line 2043
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    .line 2045
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionForNotificationSetting:Z

    .line 2046
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    .line 2049
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsInPocketOrBagAvailable:Z

    .line 2052
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPocketQueryLock:Ljava/lang/Object;

    .line 2053
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mPocketQueryDone:Z

    .line 2054
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsInPocket:Z

    .line 2056
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 2058
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPocketSensorEnabled:Z

    .line 2128
    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPocketSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 3314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.server.PowerManagerService.action.SCREEN_OFF_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutIntent:Landroid/content/Intent;

    .line 3316
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mFeatureNotifyScreenOffTimeout:Z

    .line 3337
    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    .line 3354
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    .line 3838
    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mForceUnblankDisplayRunnable:Ljava/lang/Runnable;

    .line 3846
    new-instance v0, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mForceBlankDisplayRunnable:Ljava/lang/Runnable;

    .line 3893
    new-instance v0, Lcom/android/server/power/PowerManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$5;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 4896
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mScaleFactorLock:Lcom/android/server/power/PowerManagerService$ScaleFactorLock;

    .line 7018
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsSipVisible:Z

    .line 7019
    new-instance v0, Lcom/android/server/power/PowerManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$8;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 7039
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    .line 7040
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    .line 7041
    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    .line 7042
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;

    .line 7043
    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J

    .line 7044
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    .line 7045
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 7046
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    .line 7047
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mCoverIsUpdatedFromCoverManager:Z

    .line 7103
    new-instance v0, Lcom/android/server/power/PowerManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$9;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .line 7133
    iput-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 7142
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->USE_SMART_STAY:Z

    .line 7143
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->USE_PRE_SMART_STAY:Z

    .line 7144
    const-string v0, "2750"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayDelay:I

    .line 7145
    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mPreSmartStayDelay:I

    .line 7149
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mIsBadCurrentConsumptionDevice:Z

    .line 7151
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mWhenCheckSmartStay:I

    .line 7155
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    .line 7156
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessageSmartStay:Z

    .line 7157
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mPendingMessagePreSmartStay:Z

    .line 7158
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    .line 7159
    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    .line 7160
    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    .line 7349
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 7350
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 7351
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPrevReleasedWakeLock:Ljava/lang/String;

    .line 7352
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    .line 7355
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    .line 7356
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    .line 7359
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->COUNT_FOR_LOGGING_FREQUENT_EVENT:I

    .line 7360
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->COUNT_TO_RESET_FOR_LOGGING_FREQUENT_EVENT:I

    .line 7361
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    .line 7426
    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    .line 7427
    new-instance v0, Lcom/android/server/power/PowerManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$11;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    .line 7552
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mSubScreenPolicyOverride:I

    .line 7553
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDesiredMultiScreenState:I

    .line 7554
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDesiredMultiScreenState:I

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mPrevDesiredMultiScreenState:I

    .line 7555
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mMainScreenState:I

    .line 7556
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mSubScreenState:I

    .line 7557
    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDesiredMultiScreenStateOverride:I

    .line 7558
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDesiredMultiScreenStateChangeReason:I

    .line 7559
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mTspMainLpmEnabled:Z

    .line 7560
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mTspSubLpmEnabled:Z

    .line 7630
    new-instance v0, Lcom/android/server/power/PowerManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$13;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 778
    const-string v0, "PowerManagerService"

    const-string v1, "[api] PowerManagerService()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 782
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PowerManagerService"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 784
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 785
    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    .line 788
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 797
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 798
    :try_start_0
    const-string v0, "PowerManagerService.WakeLocks"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 799
    const-string v0, "PowerManagerService.Display"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 800
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 805
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 807
    const-string v0, "PowerManagerService"

    const-string v2, "[s] PowerManagerService() : WAKEFULNESS_AWAKE"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    .line 811
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    .line 812
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    .line 813
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V

    .line 814
    monitor-exit v1

    .line 815
    return-void

    .line 814
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisable:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsAlpmMode:Z

    return v0
.end method

.method static synthetic access$10200(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    return v0
.end method

.method static synthetic access$10202(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    return p1
.end method

.method static synthetic access$10300(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    return v0
.end method

.method static synthetic access$10400(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    return v0
.end method

.method static synthetic access$10500(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mForceUnblankDisplayRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mForceBlankDisplayRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object v0
.end method

.method static synthetic access$10802(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mCoverIsUpdatedFromCoverManager:Z

    return p1
.end method

.method static synthetic access$10902(Lcom/android/server/power/PowerManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11002(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    return v0
.end method

.method static synthetic access$11102(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    return p1
.end method

.method static synthetic access$11202(Lcom/android/server/power/PowerManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J

    return-wide p1
.end method

.method static synthetic access$11302(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11400(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeCount:I

    return v0
.end method

.method static synthetic access$11402(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeCount:I

    return p1
.end method

.method static synthetic access$11412(Lcom/android/server/power/PowerManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeCount:I

    return v0
.end method

.method static synthetic access$11420(Lcom/android/server/power/PowerManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeCount:I

    return v0
.end method

.method static synthetic access$11500(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeEnabled:Z

    return v0
.end method

.method static synthetic access$11502(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeEnabled:Z

    return p1
.end method

.method static synthetic access$11700(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeEnabled:Z

    return v0
.end method

.method static synthetic access$11702(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeEnabled:Z

    return p1
.end method

.method static synthetic access$11802(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeCount:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashMode:Z

    return v0
.end method

.method static synthetic access$12002(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashMode:Z

    return p1
.end method

.method static synthetic access$12100(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    return v0
.end method

.method static synthetic access$12200(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    return v0
.end method

.method static synthetic access$12300(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDesiredMultiScreenStateOverride:I

    return v0
.end method

.method static synthetic access$12302(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDesiredMultiScreenStateOverride:I

    return p1
.end method

.method static synthetic access$12400(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mPrevDesiredMultiScreenState:I

    return v0
.end method

.method static synthetic access$12502(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDesiredMultiScreenStateChangeReason:I

    return p1
.end method

.method static synthetic access$12600(Lcom/android/server/power/PowerManagerService;)Landroid/view/WindowManagerPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartGlow:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/LightsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    return-object v0
.end method

.method static synthetic access$12900(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSubScreenPolicyOverride:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPocketQueryLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$DozeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

    return-object v0
.end method

.method static synthetic access$13002(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$DozeLock;)Lcom/android/server/power/PowerManagerService$DozeLock;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lcom/android/server/power/PowerManagerService$DozeLock;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

    return-object p1
.end method

.method static synthetic access$13100(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mForceDoze:Z

    return v0
.end method

.method static synthetic access$13102(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mForceDoze:Z

    return p1
.end method

.method static synthetic access$13200(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    return-void
.end method

.method static synthetic access$13300(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromAodLocked(II)V

    return-void
.end method

.method static synthetic access$13400(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V

    return-void
.end method

.method static synthetic access$13500(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V

    return-void
.end method

.method static synthetic access$13600(Lcom/android/server/power/PowerManagerService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$13700(Lcom/android/server/power/PowerManagerService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setScreenDimDurationOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$13800(Lcom/android/server/power/PowerManagerService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setButtonTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$13900(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->disableAbusiveWakeLockInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsInPocket:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsInPocket:Z

    return p1
.end method

.method static synthetic access$14200(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    return v0
.end method

.method static synthetic access$14300(Lcom/android/server/power/PowerManagerService;)Lcom/samsung/android/cover/CoverManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-object v0
.end method

.method static synthetic access$14400(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleSmartStay(Z)V

    return-void
.end method

.method static synthetic access$14500(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    return v0
.end method

.method static synthetic access$14502(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    return p1
.end method

.method static synthetic access$14600(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$14800(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->printWakeLockLocked()V

    return-void
.end method

.method static synthetic access$15000(Lcom/android/server/power/PowerManagerService;)Landroid/os/BatteryManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mPocketQueryDone:Z

    return p1
.end method

.method static synthetic access$15100(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPocketSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsPocketSensorEnabled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPocketSContextListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/PowerManagerService;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPocketHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object v0
.end method

.method static synthetic access$2576(Lcom/android/server/power/PowerManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return p1
.end method

.method static synthetic access$2884(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/power/PowerManagerService;JIII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 189
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3084(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # I

    .prologue
    .line 189
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method static synthetic access$3502(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/power/PowerManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    return-wide v0
.end method

.method static synthetic access$3602(Lcom/android/server/power/PowerManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    return-wide p1
.end method

.method static synthetic access$3614(Lcom/android/server/power/PowerManagerService;J)J
    .locals 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    return-wide v0
.end method

.method static synthetic access$3700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/power/PowerManagerService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(ZI)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/power/PowerManagerService;JIII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 189
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/power/PowerManagerService;IIILandroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/os/IBinder;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->setAlpmModeInternal(IIILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->initAlpm()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDozeModeBySysfs(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->initDoze()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/power/PowerManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    return v0
.end method

.method static synthetic access$4802(Lcom/android/server/power/PowerManagerService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 189
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    return p1
.end method

.method static synthetic access$4902(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$ScaleFactorLock;)Lcom/android/server/power/PowerManagerService$ScaleFactorLock;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lcom/android/server/power/PowerManagerService$ScaleFactorLock;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mScaleFactorLock:Lcom/android/server/power/PowerManagerService$ScaleFactorLock;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic access$5202(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mUserSwitched:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$5402(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mFTAMode:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return v0
.end method

.method static synthetic access$5502(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p1
.end method

.method static synthetic access$5600(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSandman()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleInputDeviceLightOnByScreenOn()V

    return-void
.end method

.method static synthetic access$6000(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "x0"    # Landroid/os/WorkSource;

    .prologue
    .line 189
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic access$6200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/os/WorkSource;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # I
    .param p8, "x8"    # I

    .prologue
    .line 189
    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/os/WorkSource;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/power/PowerManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/server/power/PowerManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method static synthetic access$7102(Lcom/android/server/power/PowerManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide p1
.end method

.method static synthetic access$7200(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 189
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/power/PowerManagerService;JII)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->wakeUpWithReasonInternal(JII)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isQuickBootCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # I

    .prologue
    .line 189
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JLjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 189
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napInternal(JI)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isLowPowerModeInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8100(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isDeviceIdleModeInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoWithProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenBrightnessSettingOverrideInternal(I)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryMarkerScreenBrightnessSettingOverrideInternal(I)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/power/PowerManagerService;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/power/PowerManagerService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBrightnessBoostedInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/server/power/PowerManagerService;ILcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9500(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "x2"    # Z

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9600(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBlockedUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsKeyboardVisible:Z

    return v0
.end method

.method static synthetic access$9802(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsKeyboardVisible:Z

    return p1
.end method

.method static synthetic access$9900(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    return v0
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 15
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "pid"    # I

    .prologue
    .line 1473
    iget-object v14, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1481
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v12

    .line 1483
    .local v12, "index":I
    if-ltz v12, :cond_2

    .line 1484
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    .line 1485
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1488
    const-string v2, "PowerManagerService"

    const-string v3, "acquireWakeLockInternal : Update existing wake lock"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move-object v3, v1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 1490
    invoke-direct/range {v2 .. v10}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 1492
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    .line 1494
    :cond_0
    const/4 v13, 0x0

    .line 1516
    .local v13, "notifyAcquire":Z
    :goto_0
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v3, 0xffff

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1542
    :goto_1
    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1543
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1544
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1545
    if-eqz v13, :cond_1

    .line 1551
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1553
    :cond_1
    monitor-exit v14

    .line 1554
    return-void

    .line 1496
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v13    # "notifyAcquire":Z
    :cond_2
    new-instance v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1498
    .restart local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1502
    :try_start_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    .line 1504
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBlockedUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, p7

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    move/from16 v0, p7

    if-eq v0, v2, :cond_3

    .line 1511
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->updateBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    .line 1513
    :cond_3
    const/4 v13, 0x1

    .restart local v13    # "notifyAcquire":Z
    goto :goto_0

    .line 1499
    .end local v13    # "notifyAcquire":Z
    :catch_0
    move-exception v11

    .line 1500
    .local v11, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wake lock is already dead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1553
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v11    # "ex":Landroid/os/RemoteException;
    .end local v12    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1518
    .restart local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .restart local v12    # "index":I
    .restart local v13    # "notifyAcquire":Z
    :sswitch_0
    const/16 v2, 0xaa9

    const/4 v3, 0x2

    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1

    .line 1526
    :sswitch_1
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] acquire WakeLock flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1516
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0xa -> :sswitch_1
        0x1a -> :sswitch_1
        0x20 -> :sswitch_1
        0x40 -> :sswitch_1
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1568
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1573
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v6

    .line 1574
    .local v6, "opPackageName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    .line 1582
    .local v5, "opUid":I
    :goto_0
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->isWakeUpPreventionNeededForNotificationLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1583
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen__On : Cancel (wearable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    .end local v5    # "opUid":I
    .end local v6    # "opPackageName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1576
    :cond_1
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 1577
    .restart local v6    # "opPackageName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    .restart local v5    # "opUid":I
    :goto_2
    goto :goto_0

    .end local v5    # "opUid":I
    :cond_2
    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    goto :goto_2

    .line 1587
    .restart local v5    # "opUid":I
    :cond_3
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 1594
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object v1, p0

    move v7, v5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    goto :goto_1
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 7
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1679
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] applyWakeLockFlagsOnReleaseLocked : userActivityNoUpdateLocked is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1689
    :cond_0
    return-void
.end method

.method private boostScreenBrightnessInternal(JI)V
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    .line 4542
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4543
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 4545
    :cond_0
    monitor-exit v7

    .line 4560
    :goto_0
    return-void

    .line 4548
    :cond_1
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Brightness boost activated (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4549
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    .line 4550
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v0, :cond_2

    .line 4551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 4552
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    .line 4554
    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4556
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 4558
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4559
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static callerInfoToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 7412
    const-string v1, ""

    .line 7413
    .local v1, "retStr":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 7414
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 7416
    .local v0, "pid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7418
    return-object v1
.end method

.method private static callerInfoWithProcessName()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 7382
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 7383
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 7386
    .local v4, "pid":I
    const/4 v5, 0x0

    .line 7387
    .local v5, "processName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 7389
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/proc/%d/cmdline"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7391
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 7392
    const-string v8, "\u0000"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 7393
    .local v6, "t":[Ljava/lang/String;
    array-length v8, v6

    if-lez v8, :cond_0

    .line 7394
    const/4 v8, 0x0

    aget-object v5, v6, v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7400
    .end local v6    # "t":[Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_3

    .line 7402
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 7408
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    const-string v8, " (uid: %d pid: %d processName: %s)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 7403
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 7404
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "PowerManagerService"

    const-string/jumbo v9, "error on in.close"

    invoke-static {v8, v9, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 7405
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 7397
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 7398
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v8, "PowerManagerService"

    const-string/jumbo v9, "error on read process name"

    invoke-static {v8, v9, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7400
    if-eqz v1, :cond_1

    .line 7402
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 7403
    :catch_2
    move-exception v0

    .line 7404
    const-string v8, "PowerManagerService"

    const-string/jumbo v9, "error on in.close"

    invoke-static {v8, v9, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 7400
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v1, :cond_2

    .line 7402
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 7405
    :cond_2
    :goto_3
    throw v8

    .line 7403
    :catch_3
    move-exception v0

    .line 7404
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "PowerManagerService"

    const-string/jumbo v10, "error on in.close"

    invoke-static {v9, v10, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 7400
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 7397
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_3
    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private canDozeLocked()Z
    .locals 2

    .prologue
    .line 3310
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canDreamLocked()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3266
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v4, v4, 0x7

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    if-eqz v4, :cond_1

    .line 3303
    :cond_0
    :goto_0
    return v2

    .line 3279
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 3280
    .local v0, "mPersona":Landroid/os/PersonaManager;
    if-eqz v0, :cond_3

    .line 3281
    invoke-virtual {v0}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v1

    .line 3282
    .local v1, "userId":I
    const/16 v4, 0x64

    if-lt v1, v4, :cond_2

    const/16 v4, 0xc8

    if-le v1, v4, :cond_0

    :cond_2
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v4

    if-eq v4, v3, :cond_0

    .line 3288
    .end local v1    # "userId":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v4

    if-nez v4, :cond_6

    .line 3289
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    if-eqz v4, :cond_0

    .line 3292
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v4, :cond_5

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-lt v4, v5, :cond_0

    .line 3297
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz v4, :cond_6

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-lt v4, v5, :cond_0

    :cond_6
    move v2, v3

    .line 3303
    goto :goto_0
.end method

.method private checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "wl"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    const/4 v2, 0x0

    .line 1722
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_0
    iget-object v3, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1723
    iget-object v3, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v1}, Landroid/os/WorkSource;->get(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne p1, v3, :cond_1

    .line 1725
    const/4 v2, 0x1

    .line 1732
    :cond_0
    :goto_1
    return v2

    .line 1722
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1729
    :catch_0
    move-exception v0

    .line 1730
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 5241
    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private crashInternal(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 4397
    new-instance v1, Lcom/android/server/power/PowerManagerService$7;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/power/PowerManagerService$7;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 4404
    .local v1, "t":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 4405
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4409
    :goto_0
    return-void

    .line 4406
    :catch_0
    move-exception v0

    .line 4407
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5235
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 5236
    .local v0, "suspendBlocker":Lcom/android/server/power/SuspendBlocker;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5237
    return-object v0
.end method

.method private disableAbusiveWakeLockInternal(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "state"    # Z

    .prologue
    .line 4274
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4275
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 4276
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 4277
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4279
    .local v1, "temp":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v2, p2, :cond_0

    .line 4280
    iput-boolean p2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 4282
    iget-boolean v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v2, :cond_1

    .line 4283
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 4288
    :goto_0
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4289
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4292
    .end local v1    # "temp":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_0
    monitor-exit v3

    .line 4293
    return-void

    .line 4285
    .restart local v1    # "temp":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_0

    .line 4292
    .end local v0    # "index":I
    .end local v1    # "temp":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 4931
    const-string v8, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4934
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4935
    :try_start_0
    const-string v8, "Power Manager State:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4936
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDirty=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4937
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakefulness="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v10}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4938
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakefulnessChanging="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4939
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsPowered="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4940
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mPlugType="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4941
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBatteryLevel="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4943
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsScreenBrightnessSettingChangedAfterCriticalLowBattery="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsScreenBrightnessSettingChangedAfterCriticalLowBattery:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4944
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsScreenBrightnessOverridenAfterCriticalLowBattery="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsScreenBrightnessOverridenAfterCriticalLowBattery:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4946
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4947
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDockState="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4948
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mStayOn="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4949
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mProximityPositive="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4950
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBootCompleted="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4951
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSystemReady="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4952
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHalAutoSuspendModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4953
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHalInteractiveModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4954
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeLockSummary=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4955
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mUserActivitySummary=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4956
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4957
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSandmanScheduled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4958
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSandmanSummoned="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4959
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLowPowerModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4960
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBatteryLevelLow="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4961
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDeviceIdleMode="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4962
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDeviceIdleWhitelist="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4963
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDeviceIdleTempWhitelist="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4964
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastWakeTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4965
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastSleepTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4966
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastUserActivityTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4967
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastUserActivityTimeNoChangeLights="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4969
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastInteractivePowerHintTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4971
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastScreenBrightnessBoostTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4973
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessBoostInProgress="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4975
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDisplayReady="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4976
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4977
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4979
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4980
    const-string v8, "Settings and Configuration:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4981
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4983
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4985
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4987
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4989
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTheaterModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4991
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSuspendWhenScreenOffDueToProximityConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4993
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsSupportedConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4994
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsEnabledByDefaultConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4995
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivatedOnSleepByDefaultConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4997
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivatedOnDockByDefaultConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4999
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsEnabledOnBatteryConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5001
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5003
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5005
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsBatteryLevelDrainCutoffConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5007
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsEnabledSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5008
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5009
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5010
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDozeAfterScreenOffConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5011
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLowPowerModeSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5012
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mAutoLowPowerModeConfigured="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5013
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mAutoLowPowerModeSnoozing="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5014
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLowBatteryTriggerLevel="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mLowBatteryTriggerLevel:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5015
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMinimumScreenOffTimeoutConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5016
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMaximumScreenDimDurationConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5017
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMaximumScreenDimRatioConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5018
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenOffTimeoutSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5019
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSleepTimeoutSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5020
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " (enforced="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5023
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5024
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5025
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenAutoBrightnessAdjustmentSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5027
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessModeSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5028
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5030
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5032
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTemporaryScreenBrightnessSettingOverride="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5034
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTemporaryScreenAutoBrightnessAdjustmentSettingOverride="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5036
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDozeScreenStateOverrideFromDreamManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5038
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDozeScreenBrightnessOverrideFromDreamManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5040
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSettingMinimum="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5041
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSettingMaximum="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5042
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSettingDefault="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5043
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDoubleTapWakeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5045
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastUserActivitySummary: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5049
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsCocktailBarCover: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsCocktailBarCover:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5050
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsSupportedSensorHub: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsSupportedSensorHub:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5051
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsInPocketOrBagAvailable: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsInPocketOrBagAvailable:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5052
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastWakeUpReason: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5053
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeUpPreventionForNotificationSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionForNotificationSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5054
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeUpPreventionPackagesForNotificationSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5058
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mOutdoorModeSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5062
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsSupportedLightSensor: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsSupportedLightSensor:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5065
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTemporaryMarkerScreenBrightnessSettingOverride="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5070
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessScaleFactor: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5074
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5075
    const-string v8, "  SecProductFeature_FRAMEWORK.SEC_PRODUCT_FEATURE_FRAMEWORK_ENABLE_SMART_STAY: false"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5077
    const-string v8, "  SecProductFeature_CAMERA.SEC_PRODUCT_FEATURE_CAMERA_DELAY_TIME_FOR_SMART_STAY: 2750"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5080
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  USE_AUTO_BRIGHTNESS_DETAIL: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->USE_AUTO_BRIGHTNESS_DETAIL:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " (mSCafeName: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/android/server/power/PowerManagerUtil;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " mIsMocha: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->mIsMocha:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " upgradeLollipop: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->upgradeLollipop:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5084
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mFeatureNotifyScreenOffTimeout: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mFeatureNotifyScreenOffTimeout:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5088
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    move-result v5

    .line 5089
    .local v5, "sleepTimeout":I
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v4

    .line 5090
    .local v4, "screenOffTimeout":I
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v3

    .line 5091
    .local v3, "screenDimDuration":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5092
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sleep timeout: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5093
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen off timeout: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5094
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen dim duration: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5095
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen dim duration override: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5114
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5115
    const-string v8, "UID states:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 5117
    const-string v8, "  UID "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {p1, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5118
    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 5116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5121
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5122
    const-string v8, "InputDeviceLightState:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTouchKeyOffTimeoutSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5124
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v8, :cond_1

    .line 5125
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mKeyboardOffTimeoutSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardOffTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5126
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mKeyLedOffNightModeSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mKeyLedOffNightModeSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5128
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsSipVisible: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsSipVisible:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5129
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTouchKeyForceDisable: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisable:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5130
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTouchKeyForceDisableOverrideFromSystemPowerSaveMode: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mInputDeviceEnabled: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mInputDeviceEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mEmergencyMode: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mEmergencyMode:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5133
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsFolderType: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5137
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->USE_DEVICE_LOCK_TIME:Z

    if-eqz v8, :cond_2

    .line 5138
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5139
    const-string v8, "ATT EAS Pin lock:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSecuredLockEnableSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockEnableSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5141
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSecuredLockTimeoutSetting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5146
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5147
    const-string v8, "UID states:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5148
    const/4 v0, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 5149
    const-string v8, "  UID "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {p1, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5150
    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 5148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5153
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5154
    const-string v8, "Clear Cover:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5155
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsCoverClosed: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5156
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mlastUpdateCoverStateReason: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mlastUpdateCoverStateTime: = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mFeatureCoverSysfs: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5159
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsCocktailBarCover: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsCocktailBarCover:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5160
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mCoverType: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " at "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5161
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mlastUpdateCoverTypeReason: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5165
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5166
    const-string v8, "ALPM Mode:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5167
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsAlpmMode: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsAlpmMode:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5168
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mPendingForceUnblankDisplayState: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5172
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5173
    const-string v8, "SEC_PRODUCT_FEATURE_COMMON_SUPPORT_COCKTAIL_FW: false"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5189
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5190
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FTA mode: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mFTAMode:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5191
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SEC_USE_FACTORY_BINARY: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, Lcom/android/server/power/PowerManagerService;->SEC_USE_FACTORY_BINARY:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5195
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5196
    const-string v8, "SEC_FEATURE_MARKER_TRACKER: false"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5199
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SEC_FEATURE_USE_HBM_AT_MANUAL_MAX: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_HBM_AT_MANUAL_MAX:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5203
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5204
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wake Locks: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5205
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5206
    .local v7, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 5219
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "screenDimDuration":I
    .end local v4    # "screenOffTimeout":I
    .end local v5    # "sleepTimeout":I
    .end local v7    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 5209
    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "screenDimDuration":I
    .restart local v4    # "screenOffTimeout":I
    .restart local v5    # "sleepTimeout":I
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5210
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Suspend Blockers: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5211
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/SuspendBlocker;

    .line 5212
    .local v2, "sb":Lcom/android/server/power/SuspendBlocker;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 5215
    .end local v2    # "sb":Lcom/android/server/power/SuspendBlocker;
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5216
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Display Power: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5218
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 5219
    .local v6, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5221
    if-eqz v6, :cond_6

    .line 5222
    invoke-virtual {v6, p1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    .line 5225
    :cond_6
    const-string v8, "\n\n ====================== beginning of PMS  log ======================"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5226
    const-string v8, "  Day       Time    Tid Debug     TAG            INFO"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5227
    const-string v8, " ==================================================================="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5228
    invoke-static {p1}, Lcom/android/server/power/Slog;->savePMSLog(Ljava/io/PrintWriter;)I

    .line 5229
    const-string v8, " ======================= end of PMS log ========================"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5230
    const-string v8, " PMSLog Done !!! \n\n"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5232
    return-void
.end method

.method private enableQbCharger(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2031
    const-string/jumbo v0, "sys.quickboot.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "sys.quickboot.poweroff"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 2035
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2036
    const-string/jumbo v0, "sys.qbcharger.enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    :cond_0
    return-void
.end method

.method private faceDetect()Z
    .locals 1

    .prologue
    .line 7254
    const/4 v0, 0x0

    .line 7267
    .local v0, "bFaceDetected":Z
    return v0
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 1736
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1737
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1738
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 1742
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 1737
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1742
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private finishWakefulnessChangeIfNeededLocked()V
    .locals 2

    .prologue
    .line 2411
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_0

    .line 2412
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1

    .line 2419
    :cond_0
    :goto_0
    return-void

    .line 2416
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 2417
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    goto :goto_0
.end method

.method private getDesiredScreenPolicyLocked()I
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3864
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v4, :cond_1

    .line 3890
    :cond_0
    :goto_0
    return v0

    .line 3868
    :cond_1
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v4, v3, :cond_2

    .line 3869
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_0

    move v0, v1

    .line 3870
    goto :goto_0

    .line 3879
    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_5

    .line 3883
    :cond_3
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DIM_BRIGHTNESS_BELOW_BATTERY_LEVEL_1:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-gt v0, v1, :cond_4

    move v0, v2

    .line 3885
    goto :goto_0

    :cond_4
    move v0, v3

    .line 3887
    goto :goto_0

    :cond_5
    move v0, v2

    .line 3890
    goto :goto_0
.end method

.method private getMultipleScreenStateByPolicy(II)I
    .locals 1
    .param p1, "mainScreenPolicy"    # I
    .param p2, "subScreenPolicy"    # I

    .prologue
    .line 3506
    if-eqz p1, :cond_1

    .line 3507
    if-eqz p2, :cond_0

    .line 3508
    const/4 v0, 0x3

    .line 3517
    :goto_0
    return v0

    .line 3510
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3514
    :cond_1
    if-eqz p2, :cond_2

    .line 3515
    const/4 v0, 0x2

    goto :goto_0

    .line 3517
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScreenDimDurationLocked(I)I
    .locals 6
    .param p1, "screenOffTimeout"    # I

    .prologue
    .line 2998
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    .line 2999
    .local v0, "screenDimDuration":I
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 3000
    int-to-long v2, p1

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 3007
    :goto_0
    return v0

    .line 3004
    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    int-to-float v2, p1

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private getScreenOffTimeoutLocked(I)I
    .locals 6
    .param p1, "sleepTimeout"    # I

    .prologue
    .line 2964
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 2965
    .local v1, "timeout":I
    const/4 v0, 0x0

    .line 2966
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2967
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2969
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 2971
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    long-to-int v1, v2

    .line 2973
    :cond_1
    if-ltz p1, :cond_2

    .line 2974
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2976
    :cond_2
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2979
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->USE_DEVICE_LOCK_TIME:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockEnableSetting:I

    if-lez v2, :cond_3

    .line 2980
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    if-le v0, v2, :cond_3

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    if-le v2, v3, :cond_3

    .line 2981
    const-string v2, "PowerManagerService"

    const-string/jumbo v3, "getScreenOffTimeoutLocked return mSecuredLockTimeoutSetting"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    .line 2988
    :cond_3
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    if-eq v0, v2, :cond_4

    .line 2989
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[s] getScreenOffTimeoutLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenTimeout:I

    .line 2993
    :cond_4
    return v0
.end method

.method private getSleepTimeoutLocked()I
    .locals 2

    .prologue
    .line 2956
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    .line 2957
    .local v0, "timeout":I
    if-gtz v0, :cond_0

    .line 2958
    const/4 v1, -0x1

    .line 2960
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method private goToSleepInternal(JIII)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 2248
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2249
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2250
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2252
    :cond_0
    monitor-exit v1

    .line 2253
    return-void

    .line 2252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private goToSleepNoUpdateLocked(JIII)Z
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 2264
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v4, :cond_1

    .line 2268
    :cond_0
    const/4 v4, 0x0

    .line 2345
    :goto_0
    return v4

    .line 2272
    :cond_1
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@[ps] Screen__Off - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 2274
    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 2275
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    .line 2278
    const-wide/32 v4, 0x20000

    const-string/jumbo v6, "goToSleep"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2280
    packed-switch p3, :pswitch_data_0

    .line 2306
    :try_start_0
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep by application request (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    const/4 p3, 0x0

    .line 2311
    :goto_1
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    .line 2312
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 2313
    const/4 v4, 0x3

    invoke-direct {p0, v4, p3}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    .line 2316
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput p3, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    .line 2324
    const/4 v2, 0x0

    .line 2325
    .local v2, "numWakeLocksCleared":I
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2326
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 2327
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2328
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    sparse-switch v4, :sswitch_data_0

    .line 2326
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2283
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    .end local v2    # "numWakeLocksCleared":I
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :pswitch_0
    const-string v4, "PowerManagerService"

    const-string v5, "Going to sleep due to proximity..."

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2343
    :catchall_0
    move-exception v4

    const-wide/32 v6, 0x20000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v4

    .line 2287
    :pswitch_1
    :try_start_1
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to device administration policy (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2291
    :pswitch_2
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to screen timeout (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2294
    :pswitch_3
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to lid switch (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2297
    :pswitch_4
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to power button (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2300
    :pswitch_5
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to sleep button (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2303
    :pswitch_6
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to HDMI standby (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2332
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    .restart local v2    # "numWakeLocksCleared":I
    .restart local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 2336
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    const/16 v4, 0xaa4

    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2339
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3

    .line 2340
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2343
    :cond_3
    const-wide/32 v4, 0x20000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2345
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 2328
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private handleBatteryStateChangedLocked(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4347
    const-string/jumbo v0, "status"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStatus:I

    .line 4349
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4350
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4351
    return-void
.end method

.method private handleInputDeviceLightOnByScreenOn()V
    .locals 3

    .prologue
    .line 6905
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6906
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const v2, 0x8000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6907
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 6908
    monitor-exit v1

    .line 6909
    return-void

    .line 6908
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSandman()V
    .locals 13

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 3129
    const/4 v8, 0x0

    .line 3132
    .local v8, "needNotifyScreenOffTimeout":Z
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3133
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 3134
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 3135
    .local v10, "wakefulness":I
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v3, :cond_a

    .line 3136
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDozeLocked()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_0
    move v9, v1

    .line 3137
    .local v9, "startDreaming":Z
    :goto_0
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleSandman : startDreaming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  (canDreamLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  canDozeLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDozeLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 3142
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mFeatureNotifyScreenOffTimeout:Z

    if-eqz v3, :cond_9

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDozeLocked()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    if-ne v3, v7, :cond_9

    :cond_1
    move v8, v1

    .line 3151
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3157
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v2, :cond_d

    .line 3159
    if-eqz v9, :cond_2

    .line 3160
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v2, v11}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 3161
    const-string v3, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSandman : startDream("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v10, v6, :cond_b

    move v2, v1

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v10, v6, :cond_c

    :goto_3
    invoke-virtual {v2, v1}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    .line 3164
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    .line 3170
    .local v0, "isDreaming":Z
    :goto_4
    if-eqz v8, :cond_3

    .line 3171
    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "handleSandman : SCREEN_OFF_TIMEOUT"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3177
    :cond_3
    if-eqz v9, :cond_4

    if-nez v0, :cond_4

    .line 3178
    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "handleSandman : startDreaming, but isDreaming false"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3183
    :cond_4
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3185
    if-eqz v9, :cond_5

    if-eqz v0, :cond_5

    .line 3186
    :try_start_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    .line 3187
    if-ne v10, v6, :cond_e

    .line 3188
    const-string v1, "PowerManagerService"

    const-string v2, "Dozing..."

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    :cond_5
    :goto_5
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v1, v10, :cond_f

    .line 3197
    :cond_6
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3260
    :cond_7
    :goto_6
    return-void

    .end local v0    # "isDreaming":Z
    .end local v9    # "startDreaming":Z
    :cond_8
    move v9, v11

    .line 3136
    goto/16 :goto_0

    .restart local v9    # "startDreaming":Z
    :cond_9
    move v8, v11

    .line 3142
    goto :goto_1

    .line 3149
    .end local v9    # "startDreaming":Z
    :cond_a
    const/4 v9, 0x0

    .restart local v9    # "startDreaming":Z
    goto :goto_1

    .line 3151
    .end local v9    # "startDreaming":Z
    .end local v10    # "wakefulness":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v9    # "startDreaming":Z
    .restart local v10    # "wakefulness":I
    :cond_b
    move v2, v11

    .line 3161
    goto :goto_2

    :cond_c
    move v1, v11

    .line 3162
    goto :goto_3

    .line 3166
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "isDreaming":Z
    goto :goto_4

    .line 3190
    :cond_e
    :try_start_3
    const-string v1, "PowerManagerService"

    const-string v2, "Dreaming..."

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3253
    :catchall_1
    move-exception v1

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 3201
    :cond_f
    if-ne v10, v7, :cond_14

    .line 3202
    if-eqz v0, :cond_10

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3203
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v1, :cond_12

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_12

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v1

    if-nez v1, :cond_12

    .line 3210
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Battery level now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    :cond_10
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dream(timeout)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 3225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    .line 3227
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3253
    :cond_11
    :goto_7
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3256
    if-eqz v0, :cond_7

    .line 3257
    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "handleSandman : stopDream"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1, v11}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    goto/16 :goto_6

    .line 3216
    :cond_12
    :try_start_5
    monitor-exit v12

    goto/16 :goto_6

    .line 3230
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dream end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 3234
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    .line 3237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "android.server.power:DREAM"

    const/16 v5, 0x3e8

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    .line 3240
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_7

    .line 3242
    :cond_14
    if-ne v10, v6, :cond_11

    .line 3243
    if-eqz v0, :cond_15

    .line 3244
    monitor-exit v12

    goto/16 :goto_6

    .line 3247
    :cond_15
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mForceDoze:Z

    if-eqz v1, :cond_16

    monitor-exit v12

    goto/16 :goto_6

    .line 3250
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v1, 0x3e8

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z

    .line 3251
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7
.end method

.method private handleScreenBrightnessBoostTimeout()V
    .locals 2

    .prologue
    .line 4575
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4580
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4581
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4582
    monitor-exit v1

    .line 4583
    return-void

    .line 4582
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSettingsChangedLocked()V
    .locals 0

    .prologue
    .line 1467
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 1468
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1469
    return-void
.end method

.method private handleSmartStay(Z)V
    .locals 10
    .param p1, "bPreTest"    # Z

    .prologue
    .line 7192
    const-string v8, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_1

    const-string v1, "(preTest)"

    :goto_0
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7193
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    .line 7195
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v1, :cond_2

    .line 7196
    const-string v1, "PowerManagerService"

    const-string v8, "[smart stay] handleSmartStay: mBootCompleted is false. return"

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7240
    :cond_0
    :goto_1
    return-void

    .line 7192
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 7200
    :cond_2
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 7201
    const-string v1, "PowerManagerService"

    const-string v8, "[smart stay] handleSmartStay : skip smart stay because of screen bright wake lock"

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7205
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v1, :cond_4

    .line 7206
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    if-eqz v1, :cond_4

    .line 7207
    const-string v1, "PowerManagerService"

    const-string v8, "[smart stay] handleSmartStay : skip smart stay because folder is closed"

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7212
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 7213
    .local v6, "startTimeFaceDetect":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->faceDetect()Z

    move-result v0

    .line 7214
    .local v0, "bFaceDetected":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 7216
    .local v4, "finishTimeFaceDetect":J
    sub-long v2, v4, v6

    .line 7218
    .local v2, "elapsedTime":J
    if-eqz p1, :cond_6

    .line 7219
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_5

    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_5

    .line 7221
    if-nez v0, :cond_0

    .line 7222
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetectedFailIntent:Landroid/content/Intent;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7223
    const-string v1, "PowerManagerService"

    const-string v8, "[smart stay] handleSmartStay(preTest) : sendBroadcast done."

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7227
    :cond_5
    const-string v1, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay(preTest) : canceled (T:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7231
    :cond_6
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_7

    .line 7232
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    .line 7233
    const-string v1, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay : mFaceDetected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7237
    :cond_7
    const-string v1, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay : canceled (T:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private handleUserActivityTimeout()V
    .locals 2

    .prologue
    .line 2945
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2950
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2951
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2952
    monitor-exit v1

    .line 2953
    return-void

    .line 2952
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 4
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1647
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] handleWakeLockDeath : release WakeLock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1655
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1656
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1657
    monitor-exit v2

    .line 1662
    :goto_0
    return-void

    .line 1660
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1661
    monitor-exit v2

    goto :goto_0

    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initAlpm()V
    .locals 2

    .prologue
    .line 4828
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    .line 4829
    const-string v0, "PowerManagerService"

    const-string/jumbo v1, "mAlpmLock set to null"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4830
    return-void
.end method

.method private initDoze()V
    .locals 2

    .prologue
    .line 4854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeLock:Lcom/android/server/power/PowerManagerService$DozeLock;

    .line 4855
    const-string v0, "PowerManagerService"

    const-string/jumbo v1, "mDozeLock set to null"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    return-void
.end method

.method private initSmartStay()V
    .locals 3

    .prologue
    .line 7167
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[smart stay] "

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    .line 7168
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 7170
    new-instance v0, Lcom/android/server/power/PowerManagerService$10;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$10;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerSmartStay:Landroid/os/Handler;

    .line 7188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mFaceDetectedFailIntent:Landroid/content/Intent;

    .line 7189
    return-void
.end method

.method private initWakeUpPrevention()V
    .locals 2

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsCocktailBarCover:Z

    .line 2070
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsSupportedSensorHub:Z

    .line 2072
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsSupportedSensorHub:Z

    if-eqz v0, :cond_1

    .line 2073
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 2077
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_1

    .line 2078
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextManager;->getFeatureLevel(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 2081
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsInPocketOrBagAvailable:Z

    if-eqz v0, :cond_1

    .line 2082
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "mPocketHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPocketHandlerThread:Landroid/os/HandlerThread;

    .line 2083
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPocketHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2085
    new-instance v0, Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPocketHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPocketHandler:Landroid/os/Handler;

    .line 2091
    :cond_1
    return-void
.end method

.method private isBeingKeptAwakeLocked()Z
    .locals 1

    .prologue
    .line 3076
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCoverClosedBySysfs()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 7051
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isSupportCover()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7060
    :cond_0
    :goto_0
    return v1

    .line 7055
    :cond_1
    const-string v2, "/sys/class/sec/sec_key/hall_detect"

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7056
    .local v0, "coverState":Ljava/lang/String;
    const-string v2, "OPEN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7060
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDeviceIdleModeInternal()Z
    .locals 2

    .prologue
    .line 4340
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4341
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    monitor-exit v1

    return v0

    .line 4342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isFamilyConnectedInstalled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3319
    const-string v0, "com.samsung.android.familyshare.dashboard"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/PowerManagerService;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isInPocketLocked()Z
    .locals 6

    .prologue
    .line 2095
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mPocketQueryLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2096
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsInPocketOrBagAvailable:Z

    if-eqz v2, :cond_1

    .line 2097
    new-instance v1, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v1}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    .line 2098
    .local v1, "pocketQueryTM":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 2100
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsInPocket:Z

    .line 2101
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mPocketQueryDone:Z

    .line 2103
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2104
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2105
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPocketHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2107
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mPocketQueryDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 2109
    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPocketQueryLock:Ljava/lang/Object;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 2110
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mPocketQueryDone:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2112
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2113
    :catchall_0
    move-exception v2

    :try_start_2
    throw v2

    .line 2125
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "pocketQueryTM":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 2117
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "pocketQueryTM":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2118
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2119
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mPocketHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2121
    const-string/jumbo v2, "mPocketQueryDone"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    .line 2124
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "pocketQueryTM":Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsInPocket:Z

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v2
.end method

.method private isInputDeviceLightAvailable(I)Z
    .locals 3
    .param p1, "lightsId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3464
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisable:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v2, v1, :cond_1

    .line 3487
    :cond_0
    :goto_0
    return v0

    .line 3478
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mInputDeviceEnabled:Z

    if-eqz v2, :cond_0

    .line 3481
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 3482
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 3483
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 3484
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isKeyboardLightDisabledByNightMode()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method private isInteractiveInternal()Z
    .locals 2

    .prologue
    .line 4297
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4298
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 4299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isItBedTimeYetLocked()Z
    .locals 1

    .prologue
    .line 3064
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKeyboardLightDisabledByNightMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 3492
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 3493
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 3496
    .local v1, "nowHour":I
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil$Sales;->CHINA:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mKeyLedOffNightModeSetting:I

    if-ne v3, v2, :cond_0

    const/4 v3, 0x7

    if-lt v1, v3, :cond_0

    const/16 v3, 0x11

    if-ge v1, v3, :cond_0

    .line 3499
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isLowPowerModeInternal()Z
    .locals 2

    .prologue
    .line 4303
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4304
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    monitor-exit v1

    return v0

    .line 4305
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .locals 2

    .prologue
    .line 4524
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 3323
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3325
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3328
    :goto_0
    return v2

    .line 3327
    :catch_0
    move-exception v0

    .line 3328
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPreSmartStayNeeded(J)Z
    .locals 7
    .param p1, "now"    # J

    .prologue
    const/4 v0, 0x1

    .line 7243
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->USE_PRE_SMART_STAY:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-ne v1, v0, :cond_0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForPreSmartStay:J

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProximityPositveLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1929
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-ne v1, v0, :cond_0

    .line 1932
    .local v0, "proxEnabled":Z
    :goto_0
    return v0

    .line 1929
    .end local v0    # "proxEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isQuickBootCall()Z
    .locals 8

    .prologue
    .line 1795
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1798
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1800
    .local v5, "runningList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1801
    .local v1, "callingPid":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1802
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v1, :cond_0

    .line 1803
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1804
    .local v3, "process":Ljava/lang/String;
    const-string v6, "com.qapp.quickboot"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1805
    const/4 v6, 0x1

    .line 1808
    .end local v3    # "process":Ljava/lang/String;
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isScreenBrightnessBoostedInternal()Z
    .locals 2

    .prologue
    .line 4563
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4564
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    monitor-exit v1

    return v0

    .line 4565
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1558
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 1564
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1562
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1558
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private isSmartStayNeeded(J)Z
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 7250
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mNextTimeoutForSmartStay:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportCover()Z
    .locals 4

    .prologue
    .line 7099
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.cover.flip"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 7100
    .local v0, "sIsFilpCoverSystemFeatureEnabled":Z
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.feature.cover.sview"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 7101
    .local v1, "sIsSViewCoverSystemFeatureEnabled":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 7271
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7273
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isValidAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 3860
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidBrightness(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 3855
    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1774
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1775
    sparse-switch p1, :sswitch_data_0

    .line 1788
    :try_start_0
    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    .line 1782
    :sswitch_0
    monitor-exit v2

    goto :goto_0

    .line 1790
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1785
    :sswitch_1
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 1775
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private isWakeUpPreventionNeededForNotificationLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2146
    const/4 v0, 0x0

    .line 2148
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionForNotificationSetting:Z

    if-eqz v1, :cond_0

    .line 2149
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2150
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2151
    const/4 v0, 0x1

    .line 2156
    :cond_0
    return v0
.end method

.method private isWakeUpPreventionNeededLocked()Z
    .locals 4

    .prologue
    .line 2160
    const/4 v0, 0x0

    .line 2163
    .local v0, "isWakeUpPreventionNeeded":Z
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isProximityPositveLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    if-nez v1, :cond_1

    .line 2164
    const-string v1, "PowerManagerService"

    const-string v2, "!@Screen__On : Cancel (proximity)"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    const/4 v0, 0x1

    .line 2214
    :cond_0
    :goto_0
    return v0

    .line 2170
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    if-eqz v1, :cond_3

    .line 2171
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsCocktailBarCover:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 2175
    :cond_2
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen__On : Cancel (coverType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    const/4 v0, 0x1

    goto :goto_0

    .line 2189
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->NOVEL_PROJECT:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->SEC_USE_FACTORY_BINARY:Z

    if-nez v1, :cond_4

    .line 2190
    const-string v1, "PowerManagerService"

    const-string v2, "Screen__On : Cancel (folder)"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    const/4 v0, 0x1

    goto :goto_0

    .line 2196
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsInPocketOrBagAvailable:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInPocketLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2207
    const-string v1, "PowerManagerService"

    const-string v2, "Screen__On : Cancel (in pocket)"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 4
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 4737
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] lowLevelReboot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4740
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/power/Slog;->saveLastPMSLog(Z)I

    .line 4742
    if-nez p0, :cond_0

    .line 4743
    const-string p0, ""

    .line 4745
    :cond_0
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4750
    const-string/jumbo v1, "ctl.start"

    const-string/jumbo v2, "pre-recovery"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4755
    :goto_0
    const-wide/16 v2, 0x4e20

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4759
    :goto_1
    const-string v1, "PowerManagerService"

    const-string v2, "Unexpected return from lowLevelReboot!"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4760
    return-void

    .line 4752
    :cond_1
    const-string/jumbo v1, "sys.powerctl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reboot,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4756
    :catch_0
    move-exception v0

    .line 4757
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method public static lowLevelShutdown()V
    .locals 3

    .prologue
    .line 4720
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] lowLevelShutdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4723
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/power/Slog;->saveLastPMSLog(Z)I

    .line 4725
    const-string/jumbo v0, "sys.powerctl"

    const-string/jumbo v1, "shutdown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4726
    return-void
.end method

.method private napInternal(JI)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    .line 2349
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2350
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2351
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2353
    :cond_0
    monitor-exit v1

    .line 2354
    return-void

    .line 2353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private napNoUpdateLocked(JI)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const/4 v1, 0x0

    const-wide/32 v4, 0x20000

    const/4 v0, 0x1

    .line 2361
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 2375
    :goto_0
    return v0

    .line 2366
    :cond_1
    const-string/jumbo v1, "nap"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2368
    :try_start_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nap time (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 2371
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2373
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSendPowerHint(II)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetFeature(II)V
.end method

.method private static native nativeSetInteractive(Z)V
.end method

.method private static native nativeSetInteractive(ZI)V
.end method

.method private needDisplaySuspendBlockerLocked()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 4188
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-nez v1, :cond_1

    .line 4217
    :cond_0
    :goto_0
    return v0

    .line 4192
    :cond_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 4193
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "needDisplaySuspendBlockerLocked::mPendingForceUnblankDisplayState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4197
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4213
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v1, :cond_0

    .line 4217
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 9
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1746
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_0

    .line 1747
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1748
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1752
    :cond_0
    return-void
.end method

.method private notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 17
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "ws"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 1756
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v1, :cond_0

    .line 1757
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    invoke-virtual/range {v1 .. v16}, Lcom/android/server/power/Notifier;->onWakeLockChanging(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1761
    :cond_0
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 9
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1764
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_0

    .line 1765
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1766
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockReleased(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1770
    :cond_0
    return-void
.end method

.method private powerHintInternal(II)V
    .locals 0
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 4697
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->nativeSendPowerHint(II)V

    .line 4698
    return-void
.end method

.method private printCallerInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 7365
    const-string v1, ""

    .line 7366
    .local v1, "retStr":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->callerInfoToString()Ljava/lang/String;

    move-result-object v1

    .line 7368
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 7369
    .local v2, "ste":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    if-le v3, v5, :cond_1

    .line 7370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7378
    :cond_0
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7379
    return-void

    .line 7373
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 7374
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7373
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static printCurrentClassAndMethod()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 7422
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 7423
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[flow] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()  in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7424
    return-void
.end method

.method private printWakeLockLocked()V
    .locals 12

    .prologue
    .line 7443
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v5, :cond_2

    .line 7445
    :cond_0
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL] On : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7447
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]  mStayOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mWakeLockSummary & WAKE_LOCK_STAY_AWAKE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v7, v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mUserActivitySummary: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7452
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_b

    .line 7453
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 7454
    .local v4, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7455
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7462
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL] Off : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->timeSinceScreenWasLastOn()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "s ago"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7464
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/SuspendBlocker;

    .local v2, "sb":Lcom/android/server/power/SuspendBlocker;
    move-object v3, v2

    .line 7465
    check-cast v3, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 7466
    .local v3, "sbImpl":Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;
    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7467
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7469
    # getter for: Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->access$14900(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    check-cast v5, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    # getter for: Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->access$14900(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 7472
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, -0x11

    if-eqz v5, :cond_3

    .line 7474
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]     mWakeLockSummary : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7476
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    .line 7477
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 7478
    .restart local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 7479
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]       "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7483
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_5
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, -0x2

    if-eqz v5, :cond_3

    .line 7484
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 7485
    .restart local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7486
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]       "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 7492
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_7
    # getter for: Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->access$14900(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    check-cast v5, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    # getter for: Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->access$14900(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7493
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v5, :cond_8

    .line 7494
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]     mUserActivitySummary : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7497
    :cond_8
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v5, :cond_9

    .line 7498
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]     mDisplayPowerRequest.policy : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7501
    :cond_9
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-nez v5, :cond_a

    .line 7502
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]     mDisplayReady : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7505
    :cond_a
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v5, :cond_3

    .line 7506
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]     mBootCompleted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7512
    .end local v2    # "sb":Lcom/android/server/power/SuspendBlocker;
    .end local v3    # "sbImpl":Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;
    :cond_b
    return-void
.end method

.method private readConfigurationLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1144
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1148
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x1120073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    .line 1150
    const v1, 0x1120074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    .line 1163
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    .line 1165
    const v1, 0x112002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    .line 1167
    const v1, 0x1120042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 1169
    const v1, 0x112006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    .line 1171
    const v1, 0x112006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 1173
    const v1, 0x1120070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 1175
    const v1, 0x112006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 1177
    const v1, 0x1120071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    .line 1179
    const v1, 0x10e0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    .line 1181
    const v1, 0x10e0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    .line 1183
    const v1, 0x10e0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    .line 1185
    const v1, 0x1120072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    .line 1187
    const v1, 0x10e0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    .line 1189
    const v1, 0x10e0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    .line 1191
    const v1, 0x1130002

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    .line 1193
    const v1, 0x11200b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    .line 1195
    return-void
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 7064
    const-string v3, ""

    .line 7065
    .local v3, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .line 7068
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7069
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    if-eqz v1, :cond_0

    .line 7070
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 7071
    if-eqz v3, :cond_0

    .line 7072
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 7078
    :cond_0
    if-eqz v1, :cond_4

    .line 7080
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 7087
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 7090
    .end local v3    # "ret":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 7081
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 7082
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 7083
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_0

    .line 7075
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 7076
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7078
    if-eqz v0, :cond_1

    .line 7080
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 7081
    :catch_2
    move-exception v2

    .line 7082
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 7078
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v0, :cond_2

    .line 7080
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 7083
    :cond_2
    :goto_4
    throw v4

    .line 7081
    :catch_3
    move-exception v2

    .line 7082
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 7090
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    const-string v3, ""

    goto :goto_1

    .line 7078
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_3

    .line 7075
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_4
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private reallyGoToSleepNoUpdateLocked(JI)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const/4 v0, 0x0

    const-wide/32 v4, 0x20000

    .line 2385
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 2398
    :cond_0
    :goto_0
    return v0

    .line 2390
    :cond_1
    const-string/jumbo v0, "reallyGoToSleep"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2392
    :try_start_0
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sleeping (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2396
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2398
    const/4 v0, 0x1

    goto :goto_0

    .line 2396
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private registerReceiverInSystemReady()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1101
    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "registerReceiverInSystemReady"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1105
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1106
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1108
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1109
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1110
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1111
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1113
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1114
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1115
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1117
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1118
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1119
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$DockReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1122
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1123
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1124
    const-string/jumbo v1, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1125
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1129
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "ResponseAxT9Info"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1135
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.action.NO_USER_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivityIntent:Landroid/content/Intent;

    .line 1136
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.action.USER_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityIntent:Landroid/content/Intent;

    .line 1137
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    .line 1140
    return-void
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .locals 7
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1601
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1602
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 1603
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1608
    monitor-exit v3

    .line 1643
    :goto_0
    return-void

    .line 1611
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1617
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    .line 1618
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 1623
    :cond_1
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    .line 1640
    :goto_1
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1641
    invoke-direct {p0, v1, v0}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1642
    monitor-exit v3

    goto :goto_0

    .end local v0    # "index":I
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1625
    .restart local v0    # "index":I
    .restart local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_0
    const/16 v2, 0xaa9

    const/4 v4, 0x2

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1

    .line 1633
    :sswitch_1
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] release WakeLock flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1623
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0xa -> :sswitch_1
        0x1a -> :sswitch_1
        0x20 -> :sswitch_1
        0x40 -> :sswitch_1
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 1
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "index"    # I

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1666
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1668
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1671
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPrevReleasedWakeLock:Ljava/lang/String;

    .line 1674
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1675
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1676
    return-void
.end method

.method private scheduleSandmanLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3108
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v1, :cond_0

    .line 3109
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 3110
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3111
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3112
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3114
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setAlpmModeInternal(IIILandroid/os/IBinder;)V
    .locals 9
    .param p1, "mode"    # I
    .param p2, "startLine"    # I
    .param p3, "endLine"    # I
    .param p4, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 4784
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[api] setAlpmMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", startLine : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", endLine : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4785
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DEVICE_POWER"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4787
    const/4 v2, 0x0

    .line 4788
    .local v2, "out":Ljava/io/FileOutputStream;
    const-string v4, "/sys/class/lcd/panel/alpm"

    .line 4789
    .local v4, "sysfs":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 4790
    .local v5, "value":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4794
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4800
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 4801
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 4802
    if-eqz p1, :cond_1

    .line 4803
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mIsAlpmMode:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4817
    :goto_0
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    if-nez v6, :cond_0

    .line 4818
    new-instance v6, Lcom/android/server/power/PowerManagerService$AlpmLock;

    invoke-direct {v6, p0, p4}, Lcom/android/server/power/PowerManagerService$AlpmLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V

    iput-object v6, p0, Lcom/android/server/power/PowerManagerService;->mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    .line 4821
    :cond_0
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4822
    :try_start_2
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 v8, 0x40000

    or-int/2addr v6, v8

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4823
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4824
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    .line 4825
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 4795
    :catch_0
    move-exception v0

    .line 4796
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 4807
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 4808
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4810
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 4811
    :catch_2
    move-exception v1

    .line 4812
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 4805
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v6, 0x0

    :try_start_5
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mIsAlpmMode:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 4807
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 4824
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v6
.end method

.method private setAttentionLightInternal(ZI)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 4530
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4531
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 4532
    monitor-exit v3

    .line 4539
    :goto_0
    return-void

    .line 4534
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 4535
    .local v0, "light":Lcom/android/server/lights/Light;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4538
    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, p2, v3, v1, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_0

    .line 4535
    .end local v0    # "light":Lcom/android/server/lights/Light;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0    # "light":Lcom/android/server/lights/Light;
    :cond_1
    move v1, v2

    .line 4538
    goto :goto_1
.end method

.method private setButtonTimeoutOverrideFromWindowManagerInternal(J)V
    .locals 5
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 4702
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4703
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    .line 4704
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setButtonTimeoutOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4706
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    .line 4707
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4708
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4710
    :cond_0
    monitor-exit v1

    .line 4711
    return-void

    .line 4710
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setDozeModeBySysfs(I)V
    .locals 9
    .param p1, "mode"    # I

    .prologue
    .line 4859
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mAlpmHlpmMode:I

    if-eq v6, p1, :cond_0

    .line 4860
    const/4 v6, -0x1

    if-ne p1, v6, :cond_1

    .line 4861
    const-string v6, "PowerManagerService"

    const-string/jumbo v7, "setDozeModeBySysfs:  value is -1 , we ignore it. "

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4891
    :cond_0
    :goto_0
    return-void

    .line 4864
    :cond_1
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DEVICE_POWER"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4865
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mAlpmHlpmMode:I

    .line 4867
    const/4 v2, 0x0

    .line 4868
    .local v2, "out":Ljava/io/FileOutputStream;
    const-string v4, "/sys/class/lcd/panel/alpm"

    .line 4869
    .local v4, "sysfs":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 4873
    .local v5, "value":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 4878
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 4879
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 4880
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDozeModeBySysfs done:  value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4881
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 4882
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4884
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 4885
    :catch_1
    move-exception v1

    .line 4886
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4874
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 4875
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 4881
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private setDozeOverrideFromAodLocked(II)V
    .locals 1
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .prologue
    .line 4686
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v0, p2, :cond_1

    .line 4688
    :cond_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 4689
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 4690
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4691
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4693
    :cond_1
    return-void
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .locals 2
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .prologue
    .line 4673
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4674
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v0, p2, :cond_1

    .line 4676
    :cond_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 4677
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 4678
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4679
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4681
    :cond_1
    monitor-exit v1

    .line 4682
    return-void

    .line 4681
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setHalAutoSuspendModeLocked(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const-wide/32 v2, 0x20000

    .line 4221
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_0

    .line 4225
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 4226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalAutoSuspend("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4228
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4230
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 4233
    :cond_0
    return-void

    .line 4230
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setHalInteractiveModeLocked(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const-wide/32 v2, 0x20000

    .line 4236
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-eq p1, v0, :cond_0

    .line 4240
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 4241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4243
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p1, v0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4245
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 4248
    :cond_0
    return-void

    .line 4245
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setHalInteractiveModeLocked(ZI)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "displayId"    # I

    .prologue
    const-wide/32 v2, 0x20000

    .line 4252
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-ne p1, v0, :cond_0

    .line 4268
    :goto_0
    return-void

    .line 4257
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 4258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4261
    const/4 p2, 0x2

    .line 4263
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4265
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setInputDeviceEnabledFromNative(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 6899
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mInputDeviceEnabled:Z

    .line 6901
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessage(I)Z

    .line 6902
    return-void
.end method

.method private setLowPowerModeInternal(Z)Z
    .locals 5
    .param p1, "mode"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4309
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] setLowPowerModeInternal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsPowered="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4313
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v3, :cond_0

    .line 4314
    monitor-exit v2

    .line 4335
    :goto_0
    return v0

    .line 4316
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power"

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4318
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    .line 4320
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eqz v0, :cond_2

    .line 4321
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-eqz v0, :cond_3

    .line 4325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    .line 4334
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    .line 4335
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 4326
    :cond_3
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-nez v0, :cond_2

    .line 4330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    goto :goto_1

    .line 4336
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    .locals 4
    .param p1, "brightness"    # I

    .prologue
    .line 4597
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4598
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    if-eq v0, p1, :cond_0

    .line 4600
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setScreenBrightnessOverrideFromWindowManagerInternal: brightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4602
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 4603
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverridenAfterCriticalLowBatteryLocked(Z)V

    .line 4604
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4605
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4607
    :cond_0
    monitor-exit v1

    .line 4608
    return-void

    .line 4603
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setScreenBrightnessOverridenAfterCriticalLowBatteryLocked(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 4662
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 4664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsScreenBrightnessOverridenAfterCriticalLowBattery:Z

    .line 4668
    :cond_0
    return-void
.end method

.method private setScreenDimDurationOverrideFromWindowManagerInternal(J)V
    .locals 5
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 3340
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3341
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    .line 3342
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setScreenDimDurationOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    .line 3345
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3346
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3348
    :cond_0
    monitor-exit v1

    .line 3349
    return-void

    .line 3348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTemporaryMarkerScreenBrightnessSettingOverrideInternal(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 4636
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4637
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    if-eq v0, p1, :cond_0

    .line 4638
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    .line 4639
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverridenAfterCriticalLowBatteryLocked(Z)V

    .line 4640
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4641
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4643
    :cond_0
    monitor-exit v1

    .line 4644
    return-void

    .line 4639
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4643
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    .locals 2
    .param p1, "adj"    # F

    .prologue
    .line 4648
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4651
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 4652
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 4653
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverridenAfterCriticalLowBatteryLocked(Z)V

    .line 4654
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4655
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4657
    :cond_0
    monitor-exit v1

    .line 4658
    return-void

    .line 4653
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4657
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 4624
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4625
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    if-eq v0, p1, :cond_0

    .line 4626
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 4627
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverridenAfterCriticalLowBatteryLocked(Z)V

    .line 4628
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4629
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4631
    :cond_0
    monitor-exit v1

    .line 4632
    return-void

    .line 4627
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4631
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setUserActivityTimeoutLocked(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 7287
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_1

    .line 7288
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    int-to-long v2, v2

    add-long v0, p1, v2

    .line 7289
    .local v0, "when":J
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 7290
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7291
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7293
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7294
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 7297
    .end local v0    # "when":J
    :cond_1
    return-void
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .locals 5
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 4611
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4612
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    .line 4614
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setUserActivityTimeoutOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4616
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 4617
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4618
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4620
    :cond_0
    monitor-exit v1

    .line 4621
    return-void

    .line 4620
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 6
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    const/4 v2, 0x1

    .line 4499
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    if-ne v3, v2, :cond_1

    .line 4501
    const/4 v1, 0x0

    .line 4502
    .local v1, "disabled":Z
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v3, :cond_0

    .line 4503
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4506
    .local v0, "appid":I
    const/16 v3, 0x2710

    if-lt v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 4512
    const/4 v1, 0x1

    .line 4515
    .end local v0    # "appid":I
    :cond_0
    iget-boolean v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v3, v1, :cond_1

    .line 4516
    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 4520
    .end local v1    # "disabled":Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setWakefulnessLocked(II)V
    .locals 1
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I

    .prologue
    .line 2402
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, p1, :cond_0

    .line 2403
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 2404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 2405
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2406
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(II)V

    .line 2408
    :cond_0
    return-void
.end method

.method private shouldNapAtBedTimeLocked()Z
    .locals 1

    .prologue
    .line 3053
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldUseProximitySensorLocked()Z
    .locals 1

    .prologue
    .line 4113
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .locals 5
    .param p1, "wasPowered"    # Z
    .param p2, "oldPlugType"    # I
    .param p3, "dockedOnWirelessCharger"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2618
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    if-nez v3, :cond_1

    .line 2667
    :cond_0
    :goto_0
    return v1

    .line 2622
    :cond_1
    const-string/jumbo v3, "sys.quickboot.enable"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2646
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 2651
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    if-eqz v3, :cond_0

    .line 2658
    :cond_3
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getInstance()Landroid/app/enterprise/knoxcustom/SettingsManager;

    move-result-object v0

    .line 2659
    .local v0, "settingsManager":Landroid/app/enterprise/knoxcustom/SettingsManager;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SettingsManager;->getScreenWakeupOnPowerState()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 2667
    goto :goto_0
.end method

.method private shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    .locals 4
    .param p1, "shutdown"    # Z
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    .prologue
    .line 4355
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    .line 4356
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too early to call shutdown() or reboot()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4359
    :cond_1
    new-instance v1, Lcom/android/server/power/PowerManagerService$6;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;ZLjava/lang/String;Z)V

    .line 4379
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 4380
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4381
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4384
    if-eqz p4, :cond_2

    .line 4385
    monitor-enter v1

    .line 4388
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4389
    :catch_0
    move-exception v2

    goto :goto_0

    .line 4392
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 4394
    :cond_2
    return-void
.end method

.method private updateBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z
    .locals 3
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "update"    # Z

    .prologue
    const/4 v0, 0x1

    .line 6881
    if-eqz p1, :cond_1

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v2, 0xffff

    and-int/2addr v1, v2

    if-ne v1, v0, :cond_1

    .line 6883
    iget-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v1, p2, :cond_1

    .line 6884
    iput-boolean p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 6885
    iget-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v1, :cond_0

    .line 6887
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 6894
    :goto_0
    return v0

    .line 6889
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_0

    .line 6894
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDisplayPowerStateLocked(I)Z
    .locals 14
    .param p1, "dirty"    # I

    .prologue
    .line 3533
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 3534
    .local v4, "oldDisplayReady":Z
    const v10, 0xc093f

    and-int/2addr v10, p1

    if-eqz v10, :cond_f

    .line 3549
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked()I

    move-result v3

    .line 3551
    .local v3, "newScreenPolicy":I
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 3553
    .local v5, "prevScreenPolicy":I
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v3, v10, :cond_0

    .line 3554
    if-nez v3, :cond_0

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v10, :cond_0

    .line 3557
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    .line 3560
    :cond_0
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v3, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 3595
    const/4 v1, 0x1

    .line 3596
    .local v1, "brightnessSetByUser":Z
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 3597
    .local v7, "screenBrightness":I
    const/4 v6, 0x0

    .line 3598
    .local v6, "screenAutoBrightnessAdjustment":F
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    const/4 v0, 0x1

    .line 3601
    .local v0, "autoBrightness":Z
    :goto_0
    const/4 v2, 0x0

    .line 3602
    .local v2, "isBrightnessOverriden":Z
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 3603
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 3604
    const/4 v0, 0x0

    .line 3605
    const/4 v1, 0x0

    .line 3606
    const/4 v2, 0x1

    .line 3620
    :cond_1
    :goto_1
    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    if-eq v2, v10, :cond_2

    .line 3621
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateDisplayPowerStateLocked: Hide QuickPanel Brightness Bar: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "pms_notification_panel_brightness_adjustment"

    if-eqz v2, :cond_14

    const/4 v10, 0x0

    :goto_2
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3624
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    .line 3630
    :cond_2
    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v10, :cond_3

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mCoverIsUpdatedFromCoverManager:Z

    if-nez v10, :cond_3

    .line 3631
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isCoverClosedBySysfs()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    .line 3633
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3635
    .local v8, "time":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isCoverClosedBySysfs called on closed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    .line 3638
    .end local v8    # "time":J
    :cond_3
    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    if-eqz v10, :cond_4

    if-eqz v0, :cond_4

    .line 3639
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v10}, Landroid/hardware/display/DisplayManagerInternal;->getCurrentScreenBrightnessBeforeFinal()I

    move-result v7

    .line 3640
    if-gez v7, :cond_4

    .line 3641
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 3645
    :cond_4
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_5

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mEmergencyMode:Z

    if-nez v10, :cond_5

    .line 3646
    const/16 v7, 0xff

    .line 3652
    :cond_5
    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsSupportedLightSensor:Z

    if-eqz v10, :cond_7

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-nez v10, :cond_6

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    if-eqz v10, :cond_6

    if-nez v0, :cond_7

    :cond_6
    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v10, :cond_8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    if-eqz v10, :cond_8

    if-eqz v0, :cond_8

    .line 3656
    :cond_7
    const/4 v0, 0x0

    .line 3660
    :cond_8
    if-eqz v0, :cond_9

    .line 3661
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 3662
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 3664
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 3671
    :cond_9
    :goto_3
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 3673
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/high16 v11, -0x40800000    # -1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 3677
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v7, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    .line 3679
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    if-eqz v10, :cond_16

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    const/4 v12, 0x2

    if-eq v10, v12, :cond_16

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    .line 3683
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mFTAMode:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    .line 3687
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    iput-wide v12, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastUpdateCoverStateTime:J

    .line 3690
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v6, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 3692
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v1, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    .line 3693
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v0, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 3694
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v11

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 3695
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 3696
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 3698
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mIsAlpmMode:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isAlpmMode:Z

    .line 3702
    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v10, :cond_a

    .line 3703
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isLidClosed:Z

    .line 3707
    :cond_a
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_17

    .line 3708
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 3709
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_b

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_b

    .line 3711
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v11, 0x3

    iput v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 3713
    :cond_b
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    iput v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    .line 3721
    :goto_5
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    .line 3723
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeEnabled:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useColorWeaknessMode:Z

    .line 3724
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mClearViewBrightnessModeEnabled:Z

    if-eqz v10, :cond_18

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    if-nez v10, :cond_18

    const/4 v10, 0x1

    :goto_6
    iput-boolean v10, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    .line 3727
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    iput v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    .line 3730
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    .line 3732
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    if-eqz v10, :cond_c

    .line 3733
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_c

    if-nez v5, :cond_c

    .line 3735
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastOutdoorModeEnblaedTime:J

    sub-long/2addr v10, v12

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeTimeout:I

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_c

    .line 3736
    const-string v10, "PowerManagerService"

    const-string/jumbo v11, "updateDisplayPowerStateLocked: OutdoorMode timed out"

    invoke-static {v10, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    .line 3738
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "display_outdoor_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3744
    :cond_c
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    iget-boolean v12, p0, Lcom/android/server/power/PowerManagerService;->mLCDFlashMode:Z

    or-int/2addr v11, v12

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    .line 3747
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    invoke-static {v11}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v11

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTemporaryScreenBrightnessSettingOverride:Z

    .line 3748
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    iput v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->temporaryScreenBrightnessSettingOverride:I

    .line 3752
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    const/4 v11, 0x5

    if-gt v10, v11, :cond_19

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStatus:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_19

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsScreenBrightnessSettingChangedAfterCriticalLowBattery:Z

    if-nez v10, :cond_19

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsScreenBrightnessOverridenAfterCriticalLowBattery:Z

    if-nez v10, :cond_19

    .line 3757
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceDimBrightness:Z

    .line 3767
    :goto_7
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v10, v11, v12}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 3769
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 3772
    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eq v10, v4, :cond_d

    .line 3773
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mDisplayReady: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    :cond_d
    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v10, :cond_e

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_e

    .line 3779
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1b

    .line 3780
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mForceUnblankDisplayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3781
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    .line 3793
    :cond_e
    :goto_8
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    .line 3811
    .end local v0    # "autoBrightness":Z
    .end local v1    # "brightnessSetByUser":Z
    .end local v2    # "isBrightnessOverriden":Z
    .end local v3    # "newScreenPolicy":I
    .end local v5    # "prevScreenPolicy":I
    .end local v6    # "screenAutoBrightnessAdjustment":F
    .end local v7    # "screenBrightness":I
    :cond_f
    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v10, :cond_1d

    if-nez v4, :cond_1d

    const/4 v10, 0x1

    :goto_9
    return v10

    .line 3598
    .restart local v1    # "brightnessSetByUser":Z
    .restart local v3    # "newScreenPolicy":I
    .restart local v5    # "prevScreenPolicy":I
    .restart local v6    # "screenAutoBrightnessAdjustment":F
    .restart local v7    # "screenBrightness":I
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3609
    .restart local v0    # "autoBrightness":Z
    .restart local v2    # "isBrightnessOverriden":Z
    :cond_11
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 3610
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryMarkerScreenBrightnessSettingOverride:I

    goto/16 :goto_1

    .line 3613
    :cond_12
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 3614
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    goto/16 :goto_1

    .line 3615
    :cond_13
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3616
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    goto/16 :goto_1

    .line 3622
    :cond_14
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 3666
    :cond_15
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 3668
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_3

    .line 3679
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 3716
    :cond_17
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v11, 0x0

    iput v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 3717
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v11, -0x1

    iput v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto/16 :goto_5

    .line 3724
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 3759
    :cond_19
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    const/4 v11, 0x5

    if-le v10, v11, :cond_1a

    .line 3760
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsScreenBrightnessSettingChangedAfterCriticalLowBattery:Z

    .line 3761
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsScreenBrightnessOverridenAfterCriticalLowBattery:Z

    .line 3763
    :cond_1a
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceDimBrightness:Z

    goto/16 :goto_7

    .line 3782
    :cond_1b
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    if-nez v10, :cond_e

    .line 3783
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1c

    .line 3784
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mForceBlankDisplayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3788
    :goto_a
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/server/power/PowerManagerService;->mPendingForceUnblankDisplayState:I

    goto :goto_8

    .line 3786
    :cond_1c
    const-string v10, "PowerManagerService"

    const-string v11, "Pending mForceblankDisplayRunnable cleared due to WAKEFULNESS_AWAKE"

    invoke-static {v10, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 3811
    .end local v0    # "autoBrightness":Z
    .end local v1    # "brightnessSetByUser":Z
    .end local v2    # "isBrightnessOverriden":Z
    .end local v3    # "newScreenPolicy":I
    .end local v5    # "prevScreenPolicy":I
    .end local v6    # "screenAutoBrightnessAdjustment":F
    .end local v7    # "screenBrightness":I
    :cond_1d
    const/4 v10, 0x0

    goto :goto_9
.end method

.method private updateDreamLocked(IZ)V
    .locals 1
    .param p1, "dirty"    # I
    .param p2, "displayBecameReady"    # Z

    .prologue
    .line 3092
    and-int/lit16 v0, p1, 0x3f7

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 3101
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_1

    .line 3102
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    .line 3105
    :cond_1
    return-void
.end method

.method private updateInputDeviceLightStateLocked(I)V
    .locals 12
    .param p1, "dirty"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3367
    const v2, 0x1d123

    and-int/2addr v2, p1

    if-eqz v2, :cond_4

    .line 3370
    const/4 v0, 0x1

    .line 3372
    .local v0, "needUpdate":Z
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    if-eqz v2, :cond_5

    .line 3379
    :cond_0
    and-int/lit8 v2, p1, 0x20

    if-nez v2, :cond_1

    and-int/lit16 v2, p1, 0x100

    if-eqz v2, :cond_2

    .line 3382
    :cond_1
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    const-wide/16 v8, 0x5dc

    cmp-long v2, v6, v8

    if-ltz v2, :cond_6

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutSetting:I

    if-eqz v2, :cond_6

    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutOverrideFromWindowManager:J

    long-to-int v1, v6

    .line 3385
    .local v1, "timeout":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v2

    if-eq v2, v1, :cond_7

    .line 3386
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightTimeout(I)V
    invoke-static {v2, v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2100(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V

    .line 3387
    invoke-direct {p0, v11}, Lcom/android/server/power/PowerManagerService;->isInputDeviceLightAvailable(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3388
    const/4 v0, 0x0

    .line 3411
    .end local v1    # "timeout":I
    :cond_2
    :goto_1
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_3

    .line 3412
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightKeep()Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2200(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 3414
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2300(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    .line 3415
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v2, :cond_3

    .line 3416
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2300(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    .line 3436
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 3437
    invoke-direct {p0, v11}, Lcom/android/server/power/PowerManagerService;->isInputDeviceLightAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v2

    if-eqz v2, :cond_11

    .line 3439
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3451
    :goto_3
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v2, :cond_4

    .line 3452
    invoke-direct {p0, v10}, Lcom/android/server/power/PowerManagerService;->isInputDeviceLightAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v2

    if-eqz v2, :cond_12

    .line 3454
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 3461
    .end local v0    # "needUpdate":Z
    :cond_4
    :goto_4
    return-void

    .line 3374
    .restart local v0    # "needUpdate":Z
    :cond_5
    const-string v2, "PowerManagerService"

    const-string v3, "[input device light] updateInputDeviceLightStateLocked: Not ready"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3382
    :cond_6
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutSetting:I

    goto :goto_0

    .line 3390
    .restart local v1    # "timeout":I
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2000(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v2

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardOffTimeoutSetting:I

    if-eq v2, v5, :cond_8

    .line 3391
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardOffTimeoutSetting:I

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightTimeout(I)V
    invoke-static {v2, v5}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2100(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V

    .line 3392
    invoke-direct {p0, v10}, Lcom/android/server/power/PowerManagerService;->isInputDeviceLightAvailable(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3393
    const/4 v0, 0x0

    goto :goto_1

    .line 3401
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisable:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mEmergencyMode:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    if-eqz v2, :cond_b

    :cond_9
    move v2, v4

    :goto_5
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mPrevTouchKeyForceDisable:Z

    if-eq v2, v5, :cond_e

    .line 3403
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mPrevTouchKeyForceDisable:Z

    if-nez v2, :cond_c

    move v2, v4

    :goto_6
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mPrevTouchKeyForceDisable:Z

    .line 3404
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mEmergencyMode:Z

    if-eqz v2, :cond_d

    :cond_a
    move v2, v4

    :goto_7
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    goto/16 :goto_1

    :cond_b
    move v2, v3

    .line 3401
    goto :goto_5

    :cond_c
    move v2, v3

    .line 3403
    goto :goto_6

    :cond_d
    move v2, v3

    .line 3404
    goto :goto_7

    .line 3406
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 3421
    .end local v1    # "timeout":I
    :cond_f
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightKeep()Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2200(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3423
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2300(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    .line 3424
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v2, :cond_3

    .line 3425
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$2300(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    goto/16 :goto_2

    .line 3431
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 3441
    :cond_11
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    goto/16 :goto_3

    .line 3456
    :cond_12
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    goto/16 :goto_4
.end method

.method private updateIsPoweredLocked(I)V
    .locals 13
    .param p1, "dirty"    # I

    .prologue
    .line 2487
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_6

    .line 2488
    iget-boolean v12, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2489
    .local v12, "wasPowered":Z
    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2490
    .local v10, "oldPlugType":I
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 2491
    .local v9, "oldLevelLow":Z
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 2492
    .local v8, "oldBatteryLevel":I
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2493
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2494
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 2495
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 2505
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->enableQbCharger(Z)V

    .line 2506
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v12, v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v10, v1, :cond_3

    .line 2508
    :cond_0
    const-string v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] updateIsPoweredLocked : mIsPowered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPlugType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2513
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/power/WirelessChargerDetector;->update(ZII)Z

    move-result v0

    .line 2516
    .local v0, "dockedOnWirelessCharger":Z
    const/4 v11, 0x1

    .line 2517
    .local v11, "shouldWakeUpWhenWirelessChagerPluggedOrUnplugged":Z
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2519
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_8

    .line 2520
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    if-nez v1, :cond_7

    .line 2521
    const-string v1, "PowerManagerService"

    const-string/jumbo v4, "updateIsPoweredLocked : Register SContextListener"

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v5, 0x2e

    invoke-virtual {v1, v4, v5}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 2523
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    .line 2550
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2551
    .local v2, "now":J
    invoke-direct {p0, v12, v10, v0}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v11, :cond_2

    .line 2554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " powered change"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 2558
    const/16 v1, 0xb

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    .line 2561
    const-string v4, "android.server.power:POWER"

    const/16 v5, 0x3e8

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    .line 2564
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 2590
    .end local v0    # "dockedOnWirelessCharger":Z
    .end local v2    # "now":J
    .end local v11    # "shouldWakeUpWhenWirelessChagerPluggedOrUnplugged":Z
    :cond_3
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HALF_BRIGHTNESS_LOW_BATTERY:Z

    if-eqz v1, :cond_4

    .line 2591
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    const/16 v4, 0xf

    if-gt v1, v4, :cond_a

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStatus:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_a

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsSettingChangedAfterLowBattery:Z

    if-nez v1, :cond_a

    .line 2594
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsSettingChangedAfterLowBattery:Z

    .line 2595
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    const/16 v4, 0x80

    if-le v1, v4, :cond_4

    .line 2596
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "screen_brightness"

    const/16 v5, 0x80

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2597
    const-string v1, "PowerManagerService"

    const-string v4, "[s] Screen Brightness change to Half level for Battery deterioration prevent"

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v12, v1, :cond_5

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    if-eq v8, v1, :cond_6

    .line 2609
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    .line 2613
    .end local v8    # "oldBatteryLevel":I
    .end local v9    # "oldLevelLow":Z
    .end local v10    # "oldPlugType":I
    .end local v12    # "wasPowered":Z
    :cond_6
    return-void

    .line 2524
    .restart local v0    # "dockedOnWirelessCharger":Z
    .restart local v8    # "oldBatteryLevel":I
    .restart local v9    # "oldLevelLow":Z
    .restart local v10    # "oldPlugType":I
    .restart local v11    # "shouldWakeUpWhenWirelessChagerPluggedOrUnplugged":Z
    .restart local v12    # "wasPowered":Z
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    if-nez v1, :cond_1

    if-nez v12, :cond_1

    .line 2525
    const/4 v11, 0x0

    .line 2526
    const-string v1, "PowerManagerService"

    const-string/jumbo v4, "updateIsPoweredLocked : Device is not moved, skip wakeup when connect wireless chager "

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2528
    :cond_8
    const/4 v1, 0x4

    if-ne v10, v1, :cond_1

    .line 2529
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    if-eqz v1, :cond_9

    .line 2530
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    if-eqz v1, :cond_1

    .line 2531
    const-string v1, "PowerManagerService"

    const-string/jumbo v4, "updateIsPoweredLocked : Unregister SContextListener"

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v5, 0x2e

    invoke-virtual {v1, v4, v5}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 2533
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    goto/16 :goto_0

    .line 2536
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_1

    .line 2537
    const/4 v11, 0x0

    .line 2538
    const-string v1, "PowerManagerService"

    const-string/jumbo v4, "updateIsPoweredLocked : Device is not moved, skip wakeup when disconnect wireless charger"

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2600
    .end local v0    # "dockedOnWirelessCharger":Z
    .end local v11    # "shouldWakeUpWhenWirelessChagerPluggedOrUnplugged":Z
    :cond_a
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    const/16 v4, 0xf

    if-le v1, v4, :cond_4

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsSettingChangedAfterLowBattery:Z

    if-eqz v1, :cond_4

    .line 2602
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsSettingChangedAfterLowBattery:Z

    goto :goto_1
.end method

.method private updatePowerStateLocked()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x20000

    .line 2430
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-nez v3, :cond_1

    .line 2480
    :cond_0
    :goto_0
    return-void

    .line 2433
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2434
    const-string v3, "PowerManagerService"

    const-string v6, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    :cond_2
    const-string/jumbo v3, "updatePowerState"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2440
    :try_start_0
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    .line 2441
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    .line 2442
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateScreenBrightnessBoostLocked(I)V

    .line 2447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2448
    .local v4, "now":J
    const/4 v1, 0x0

    .line 2450
    .local v1, "dirtyPhase2":I
    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2451
    .local v0, "dirtyPhase1":I
    or-int/2addr v1, v0

    .line 2452
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2454
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 2455
    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 2456
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2462
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    move-result v2

    .line 2464
    .local v2, "displayBecameReady":Z
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateInputDeviceLightStateLocked(I)V

    .line 2468
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    .line 2471
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    .line 2476
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2478
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .end local v0    # "dirtyPhase1":I
    .end local v1    # "dirtyPhase2":I
    .end local v2    # "displayBecameReady":Z
    .end local v4    # "now":J
    :catchall_0
    move-exception v3

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method private updateScreenBrightnessBoostLocked(I)V
    .locals 12
    .param p1, "dirty"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 3815
    and-int/lit16 v1, p1, 0x800

    if-eqz v1, :cond_0

    .line 3816
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v1, :cond_0

    .line 3817
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3818
    .local v2, "now":J
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3819
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v1, v6, v10

    if-lez v1, :cond_1

    .line 3820
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    const-wide/16 v10, 0x1388

    add-long v8, v6, v10

    .line 3822
    .local v8, "boostTimeout":J
    cmp-long v1, v8, v2

    if-lez v1, :cond_1

    .line 3823
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3824
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3825
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0, v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3835
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "now":J
    .end local v8    # "boostTimeout":J
    :cond_0
    :goto_0
    return-void

    .line 3829
    .restart local v2    # "now":J
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 3830
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    .line 3831
    const/16 v6, 0x3e8

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    goto :goto_0
.end method

.method private updateSettingsLocked()V
    .locals 20

    .prologue
    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 1200
    .local v16, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v18, "screensaver_enabled"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    const/16 v17, 0x1

    :goto_0
    const/16 v19, -0x2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    .line 1204
    const-string/jumbo v18, "screensaver_activate_on_sleep"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    :goto_2
    const/16 v19, -0x2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    .line 1208
    const-string/jumbo v18, "screensaver_activate_on_dock"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    const/16 v17, 0x1

    :goto_4
    const/16 v19, -0x2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_f

    const/16 v17, 0x1

    :goto_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    .line 1212
    const-string/jumbo v17, "screen_off_timeout"

    const/16 v18, 0x3a98

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 1215
    const-string/jumbo v17, "sleep_timeout"

    const/16 v18, -0x1

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    .line 1218
    const-string/jumbo v17, "stay_on_while_plugged_in"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "theater_mode_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    const/16 v17, 0x1

    :goto_6
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    .line 1223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1224
    const-string/jumbo v17, "double_tap_to_wake"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_11

    const/4 v6, 0x1

    .line 1227
    .local v6, "doubleTapWakeEnabled":Z
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v6, v0, :cond_0

    .line 1228
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    .line 1229
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    const/16 v17, 0x1

    :goto_8
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V

    .line 1233
    .end local v6    # "doubleTapWakeEnabled":Z
    :cond_0
    const/4 v8, 0x0

    .line 1234
    .local v8, "isBrightnessSettingChanged":Z
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 1235
    .local v13, "oldScreenBrightnessSetting":I
    const-string/jumbo v17, "screen_brightness"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    move/from16 v18, v0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 1238
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v13, v0, :cond_1

    .line 1239
    const/4 v8, 0x1

    .line 1240
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 1242
    sget-boolean v17, Lcom/android/server/power/PowerManagerUtil;->USE_AUTO_BRIGHTNESS_DETAIL:Z

    if-nez v17, :cond_1

    .line 1243
    const/high16 v17, 0x7fc00000    # NaNf

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 1244
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 1245
    .local v5, "center":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    move/from16 v18, v0

    sub-int v11, v17, v18

    .line 1246
    .local v11, "lowRange":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 1247
    .local v7, "highRange":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v5, :cond_13

    .line 1248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    move/from16 v17, v0

    sub-int v17, v17, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v7

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 1259
    .end local v5    # "center":I
    .end local v7    # "highRange":I
    .end local v11    # "lowRange":I
    :cond_1
    :goto_9
    sget-boolean v17, Lcom/android/server/power/PowerManagerUtil;->USE_AUTO_BRIGHTNESS_DETAIL:Z

    if-eqz v17, :cond_2

    .line 1260
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    .line 1261
    .local v14, "prevDynamicAutoBrightnessRatioValueSetting":I
    const-string v17, "auto_brightness_detail"

    const/16 v18, 0x64

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    .line 1263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v14, v0, :cond_2

    .line 1264
    const/4 v8, 0x1

    .line 1265
    const/high16 v17, 0x7fc00000    # NaNf

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 1266
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    move/from16 v17, v0

    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    .line 1267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x64

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42c80000    # 100.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 1275
    .end local v14    # "prevDynamicAutoBrightnessRatioValueSetting":I
    :cond_2
    :goto_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 1276
    .local v12, "oldScreenBrightnessModeSetting":I
    const-string/jumbo v17, "screen_brightness_mode"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 1279
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v12, v0, :cond_3

    .line 1280
    const/4 v8, 0x1

    .line 1284
    :cond_3
    const-string v17, "button_key_light"

    const/16 v18, 0x5dc

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutSetting:I

    .line 1286
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1287
    const-string/jumbo v17, "key_backlight_timeout"

    const/16 v18, 0xbb8

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mKeyboardOffTimeoutSetting:I

    .line 1289
    const-string/jumbo v17, "key_night_mode"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mKeyLedOffNightModeSetting:I

    .line 1295
    :cond_4
    const-string/jumbo v17, "emergency_mode"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    const/16 v17, 0x1

    :goto_b
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mEmergencyMode:Z

    .line 1306
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->USE_DEVICE_LOCK_TIME:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 1307
    const-string/jumbo v17, "is_secured_lock"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mSecuredLockEnableSetting:I

    .line 1309
    const-string/jumbo v17, "lock_screen_lock_after_timeout"

    const/16 v18, -0x1

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mSecuredLockTimeoutSetting:I

    .line 1315
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    .line 1316
    .local v15, "prevOutdoorModeSetting":Z
    const-string/jumbo v17, "display_outdoor_mode"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    const/16 v17, 0x1

    :goto_c
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    .line 1319
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v15, v0, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1320
    const/4 v8, 0x1

    .line 1321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/power/PowerManagerService;->mLastOutdoorModeEnblaedTime:J

    .line 1322
    const-string v17, "PowerManagerService"

    const-string v18, "[api] updateSettingsLocked : Update OutdoorMode enabled time"

    invoke-static/range {v17 .. v18}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_7

    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1329
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mIsScreenBrightnessSettingChangedAfterCriticalLowBattery:Z

    .line 1334
    :cond_7
    const-string/jumbo v17, "user_activity_timeout"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    .line 1340
    const-string/jumbo v17, "low_power"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_18

    const/4 v10, 0x1

    .line 1348
    .local v10, "lowPowerModeEnabled":Z
    :goto_d
    const-string/jumbo v17, "low_power_trigger_level"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1350
    .local v9, "lowBatteryTriggerLevel":I
    if-eqz v9, :cond_19

    const/4 v4, 0x1

    .line 1352
    .local v4, "autoLowPowerModeConfigured":Z
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v10, v0, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mLowBatteryTriggerLevel:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v9, v0, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v4, v0, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mUserSwitched:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 1356
    :cond_8
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    .line 1357
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    .line 1358
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/power/PowerManagerService;->mLowBatteryTriggerLevel:I

    .line 1359
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    .line 1363
    :cond_9
    const-string/jumbo v17, "wakeup_prevention"

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_1a

    const/16 v17, 0x1

    :goto_f
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionForNotificationSetting:Z

    .line 1366
    const-string/jumbo v17, "wakeup_prevention_packages"

    const/16 v18, -0x2

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    .line 1371
    const-string v17, "PowerManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[api] [PSM] updateSettingsLocked : lowPowerModeEnabled: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " lowBatteryTriggerLevel: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mEmergencyMode "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mEmergencyMode:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const-string v18, "PowerManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[api] [BRIGHTNESS] updateSettingsLocked : mScreenBrightnessModeSetting: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    move/from16 v17, v0

    if-nez v17, :cond_1b

    const-string v17, "MANUAL"

    :goto_10
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mScreenBrightnessSetting: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mScreenAutoBrightnessAdjustmentSetting: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mOutdoorModeSetting : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mOutdoorModeSetting:Z

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const-string v17, "PowerManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[api] updateSettingsLocked : mDreamsEnabledSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mDreamsActivateOnSleepSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mDreamsActivateOnDockSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mScreenOffTimeoutSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mStayOnWhilePluggedInSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mSmartStayEnabledSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mWakeUpPreventionForNotificationSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionForNotificationSetting:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mWakeUpPreventionPackagesForNotificationSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionPackagesForNotificationSetting:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mTouchKeyOffTimeoutSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mTouchKeyOffTimeoutSetting:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mKeyboardOffTimeoutSetting: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mKeyboardOffTimeoutSetting:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1395
    return-void

    .line 1200
    .end local v4    # "autoLowPowerModeConfigured":Z
    .end local v8    # "isBrightnessSettingChanged":Z
    .end local v9    # "lowBatteryTriggerLevel":I
    .end local v10    # "lowPowerModeEnabled":Z
    .end local v12    # "oldScreenBrightnessModeSetting":I
    .end local v13    # "oldScreenBrightnessSetting":I
    .end local v15    # "prevOutdoorModeSetting":Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1204
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1208
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 1220
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 1224
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 1229
    .restart local v6    # "doubleTapWakeEnabled":Z
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 1249
    .end local v6    # "doubleTapWakeEnabled":Z
    .restart local v5    # "center":I
    .restart local v7    # "highRange":I
    .restart local v8    # "isBrightnessSettingChanged":Z
    .restart local v11    # "lowRange":I
    .restart local v13    # "oldScreenBrightnessSetting":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v5, :cond_14

    .line 1250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    move/from16 v17, v0

    sub-int v17, v17, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v11

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_9

    .line 1252
    :cond_14
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_9

    .line 1269
    .end local v5    # "center":I
    .end local v7    # "highRange":I
    .end local v11    # "lowRange":I
    .restart local v14    # "prevDynamicAutoBrightnessRatioValueSetting":I
    :cond_15
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_a

    .line 1295
    .end local v14    # "prevDynamicAutoBrightnessRatioValueSetting":I
    .restart local v12    # "oldScreenBrightnessModeSetting":I
    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_b

    .line 1316
    .restart local v15    # "prevOutdoorModeSetting":Z
    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_c

    .line 1340
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_d

    .line 1350
    .restart local v9    # "lowBatteryTriggerLevel":I
    .restart local v10    # "lowPowerModeEnabled":Z
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_e

    .line 1363
    .restart local v4    # "autoLowPowerModeConfigured":Z
    :cond_1a
    const/16 v17, 0x0

    goto/16 :goto_f

    .line 1376
    :cond_1b
    const-string v17, "AUTO"

    goto/16 :goto_10
.end method

.method private updateStayOnLocked(I)V
    .locals 3
    .param p1, "dirty"    # I

    .prologue
    .line 2675
    and-int/lit16 v1, p1, 0x120

    if-eqz v1, :cond_0

    .line 2676
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2677
    .local v0, "wasStayOn":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2679
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2684
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v1, v0, :cond_0

    .line 2685
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2688
    .end local v0    # "wasStayOn":Z
    :cond_0
    return-void

    .line 2681
    .restart local v0    # "wasStayOn":Z
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_0
.end method

.method private updateSuspendBlockerLocked()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4122
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9

    move v3, v4

    .line 4123
    .local v3, "needWakeLockSuspendBlocker":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDisplaySuspendBlockerLocked()Z

    move-result v2

    .line 4124
    .local v2, "needDisplaySuspendBlocker":Z
    if-nez v2, :cond_a

    move v0, v4

    .line 4125
    .local v0, "autoSuspend":Z
    :goto_1
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    .line 4130
    .local v1, "interactive":Z
    if-nez v0, :cond_0

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v6, :cond_0

    .line 4131
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 4135
    :cond_0
    if-eqz v3, :cond_1

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-nez v6, :cond_1

    .line 4136
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 4137
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 4139
    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-nez v6, :cond_2

    .line 4140
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 4141
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 4150
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v6, :cond_5

    .line 4160
    if-eqz v1, :cond_3

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-nez v6, :cond_4

    :cond_3
    if-nez v1, :cond_5

    .line 4163
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    .line 4168
    :cond_5
    if-nez v3, :cond_6

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v6, :cond_6

    .line 4169
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 4170
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 4172
    :cond_6
    if-nez v2, :cond_7

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v6, :cond_7

    .line 4173
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 4174
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 4178
    :cond_7
    if-eqz v0, :cond_8

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v5, :cond_8

    .line 4179
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 4181
    :cond_8
    return-void

    .end local v0    # "autoSuspend":Z
    .end local v1    # "interactive":Z
    .end local v2    # "needDisplaySuspendBlocker":Z
    .end local v3    # "needWakeLockSuspendBlocker":Z
    :cond_9
    move v3, v5

    .line 4122
    goto :goto_0

    .restart local v2    # "needDisplaySuspendBlocker":Z
    .restart local v3    # "needWakeLockSuspendBlocker":Z
    :cond_a
    move v0, v5

    .line 4124
    goto :goto_1
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .locals 13
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .prologue
    .line 2778
    and-int/lit8 v8, p3, 0x27

    if-eqz v8, :cond_5

    .line 2780
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2796
    const-wide/16 v4, 0x0

    .line 2797
    .local v4, "nextTimeout":J
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_9

    .line 2800
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    move-result v7

    .line 2801
    .local v7, "sleepTimeout":I
    invoke-direct {p0, v7}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v6

    .line 2802
    .local v6, "screenOffTimeout":I
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v3

    .line 2804
    .local v3, "screenDimDuration":I
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2805
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1

    .line 2806
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v10, v6

    add-long/2addr v8, v10

    int-to-long v10, v3

    sub-long v4, v8, v10

    .line 2808
    cmp-long v8, p1, v4

    if-gez v8, :cond_6

    .line 2809
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2817
    :cond_1
    :goto_0
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v8, :cond_2

    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    .line 2819
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    int-to-long v10, v6

    add-long v4, v8, v10

    .line 2820
    cmp-long v8, p1, v4

    if-gez v8, :cond_2

    .line 2821
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    .line 2822
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2828
    :cond_2
    :goto_1
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v8, :cond_3

    .line 2829
    if-ltz v7, :cond_8

    .line 2830
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2832
    .local v0, "anyUserActivity":J
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v8, v0, v8

    if-ltz v8, :cond_3

    .line 2833
    int-to-long v8, v7

    add-long v4, v0, v8

    .line 2834
    cmp-long v8, p1, v4

    if-gez v8, :cond_3

    .line 2835
    const/4 v8, 0x4

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2873
    .end local v0    # "anyUserActivity":J
    :cond_3
    :goto_2
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v8, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-ltz v8, :cond_4

    .line 2874
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2875
    .local v2, "msg":Landroid/os/Message;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2876
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v8, v2, v4, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2912
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "screenDimDuration":I
    .end local v6    # "screenOffTimeout":I
    .end local v7    # "sleepTimeout":I
    :cond_4
    :goto_3
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eq v8, v9, :cond_5

    .line 2913
    const-string v8, "PowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[s] UserActivityState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_a

    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-nez v8, :cond_a

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2917
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2923
    :goto_4
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivitySummary:I

    .line 2934
    .end local v4    # "nextTimeout":J
    :cond_5
    return-void

    .line 2811
    .restart local v3    # "screenDimDuration":I
    .restart local v4    # "nextTimeout":J
    .restart local v6    # "screenOffTimeout":I
    .restart local v7    # "sleepTimeout":I
    :cond_6
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v10, v6

    add-long v4, v8, v10

    .line 2812
    cmp-long v8, p1, v4

    if-gez v8, :cond_1

    .line 2813
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_0

    .line 2823
    :cond_7
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 2824
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_1

    .line 2839
    :cond_8
    const/4 v8, 0x4

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2840
    const-wide/16 v4, -0x1

    goto/16 :goto_2

    .line 2908
    .end local v3    # "screenDimDuration":I
    .end local v6    # "screenOffTimeout":I
    .end local v7    # "sleepTimeout":I
    :cond_9
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_3

    .line 2920
    :cond_a
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method private updateWakeLockDisabledStatesLocked()V
    .locals 6

    .prologue
    .line 4475
    const/4 v0, 0x0

    .line 4476
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4477
    .local v2, "numWakeLocks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 4478
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 4479
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 4481
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4482
    const/4 v0, 0x1

    .line 4483
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v4, :cond_1

    .line 4485
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 4477
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4487
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_1

    .line 4492
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    if-eqz v0, :cond_3

    .line 4493
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4494
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4496
    :cond_3
    return-void
.end method

.method private updateWakeLockSummaryLocked(I)V
    .locals 5
    .param p1, "dirty"    # I

    .prologue
    .line 2698
    and-int/lit8 v3, p1, 0x3

    if-eqz v3, :cond_6

    .line 2699
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2701
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2702
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2703
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2704
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 2702
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2706
    :sswitch_0
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v3, :cond_0

    .line 2708
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2712
    :sswitch_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2715
    :sswitch_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2718
    :sswitch_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2721
    :sswitch_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2724
    :sswitch_5
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2727
    :sswitch_6
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2733
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 2734
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v3, v3, -0xc1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2736
    :cond_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_4

    .line 2738
    :cond_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, -0xf

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2750
    :cond_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_5

    .line 2751
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 2752
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x21

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2757
    :cond_5
    :goto_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    .line 2758
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2767
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    :cond_6
    return-void

    .line 2753
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    :cond_7
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 2754
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_2

    .line 2704
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_3
        0xa -> :sswitch_2
        0x1a -> :sswitch_1
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 11
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 1693
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1694
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v9

    .line 1695
    .local v9, "index":I
    if-gez v9, :cond_0

    .line 1700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake lock not active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1717
    .end local v9    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1704
    .restart local v9    # "index":I
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1710
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1711
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object v0, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1714
    iput-object p3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 1715
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 1717
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1718
    return-void
.end method

.method private updateWakefulnessLocked(I)Z
    .locals 8
    .param p1, "dirty"    # I

    .prologue
    const/16 v6, 0x3e8

    .line 3020
    const/4 v0, 0x0

    .line 3021
    .local v0, "changed":Z
    and-int/lit16 v1, p1, 0x697

    if-eqz v1, :cond_0

    .line 3024
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3028
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3029
    .local v2, "time":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3030
    invoke-direct {p0, v2, v3, v6}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v0

    .line 3045
    .end local v2    # "time":J
    :cond_0
    :goto_0
    return v0

    .line 3033
    .restart local v2    # "time":J
    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "release wake lock: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mPrevReleasedWakeLock:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3034
    .local v7, "screenOffReason":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_3

    const-string/jumbo v1, "release stay on "

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    const-string/jumbo v1, "timeout "

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_5

    const-string/jumbo v1, "prox pos "

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "(0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 3040
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    goto/16 :goto_0

    .line 3033
    .end local v7    # "screenOffReason":Ljava/lang/String;
    :cond_2
    const-string v7, ""

    goto/16 :goto_1

    .line 3034
    .restart local v7    # "screenOffReason":Ljava/lang/String;
    :cond_3
    const-string v1, ""

    goto :goto_2

    .line 3035
    :cond_4
    const-string v1, ""

    goto :goto_3

    .line 3036
    :cond_5
    const-string v1, ""

    goto :goto_4
.end method

.method private userActivityFromNative(JII)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1814
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    .line 1815
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    .line 1816
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] userActivityFromNative : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " eventTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    const/16 v1, 0x1388

    if-lt v0, v1, :cond_0

    .line 1819
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I

    .line 1824
    :cond_0
    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    .line 1825
    return-void
.end method

.method private userActivityInternal(JIII)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 1830
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_1

    .line 1831
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1832
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    .line 1834
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x76c

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1835
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.ANDROID_AUTO_BOOSTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1836
    .local v0, "mAutoIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1837
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastAndroidAutoBoostTime:J

    .line 1841
    .end local v0    # "mAutoIntent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1842
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1843
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1845
    :cond_2
    monitor-exit v2

    .line 1846
    return-void

    .line 1845
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/32 v4, 0x20000

    .line 1855
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 1921
    :goto_0
    return v0

    .line 1860
    :cond_1
    const-string/jumbo v2, "userActivity"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1862
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    .line 1863
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    .line 1864
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 1868
    :cond_2
    if-ne p3, v6, :cond_4

    .line 1869
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    .line 1876
    :goto_1
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v6, :cond_3

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_5

    .line 1919
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v1

    goto :goto_0

    .line 1873
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v2, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1919
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1882
    :cond_5
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_6

    .line 1883
    :try_start_2
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_c

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_c

    .line 1885
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 1886
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1919
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1890
    :cond_6
    :try_start_3
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_c

    .line 1891
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 1892
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1895
    if-eq p3, v6, :cond_7

    if-ne p3, v7, :cond_b

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil$Sales;->NORTH_AMERICA:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsSipVisible:Z

    if-nez v1, :cond_b

    .line 1897
    :cond_7
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1907
    :cond_8
    :goto_2
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutSetting:I

    if-lez v1, :cond_a

    .line 1908
    if-nez p3, :cond_9

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    .line 1909
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutLocked(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1919
    :cond_a
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1898
    :cond_b
    if-ne p3, v0, :cond_8

    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v1, :cond_8

    .line 1899
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1919
    :cond_c
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v1

    .line 1921
    goto/16 :goto_0
.end method

.method private wakeUpInternal(JLjava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "opUid"    # I

    .prologue
    .line 1958
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1960
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    .line 1963
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1964
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1966
    :cond_0
    monitor-exit v1

    .line 1967
    return-void

    .line 1966
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "reasonUid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "opUid"    # I

    .prologue
    .line 1975
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 1977
    :cond_0
    const/4 v1, 0x0

    .line 2027
    :goto_0
    return v1

    .line 1981
    :cond_1
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@[ps] Screen__On  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnOffCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 1984
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 1988
    const/4 v0, 0x0

    .line 1989
    .local v0, "isWakeUpPreventionNeeded":Z
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isWakeUpPreventionNeededLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1990
    const/4 v0, 0x1

    .line 1993
    :cond_2
    if-eqz v0, :cond_3

    .line 1994
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    .line 1995
    const/4 v1, 0x1

    goto :goto_0

    .line 2003
    :cond_3
    const-wide/32 v2, 0x20000

    const-string/jumbo v1, "wakeUp"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2005
    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    packed-switch v1, :pswitch_data_0

    .line 2016
    :goto_1
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mForceDoze:Z

    .line 2017
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    .line 2018
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    .line 2020
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/android/server/power/Notifier;->onWakeUp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 2021
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2024
    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2026
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    .line 2027
    const/4 v1, 0x1

    goto :goto_0

    .line 2007
    :pswitch_1
    :try_start_1
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waking up from sleep (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2024
    :catchall_0
    move-exception v1

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    .line 2010
    :pswitch_2
    :try_start_2
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waking up from dream (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2013
    :pswitch_3
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waking up from dozing (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 2005
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private wakeUpWithReasonInternal(JII)V
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "uid"    # I

    .prologue
    const/4 v1, 0x1

    .line 1936
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1938
    :try_start_0
    iput p3, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    .line 1941
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isProximityPositveLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    if-ne v0, v1, :cond_0

    .line 1943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    .line 1946
    :cond_0
    const-string v4, "android.server.power:POWER"

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1947
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1952
    :goto_0
    monitor-exit v8

    .line 1953
    return-void

    .line 1950
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpEvenThoughProximityPositive:Z

    goto :goto_0

    .line 1952
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method dumpDebugLog()V
    .locals 3

    .prologue
    .line 7515
    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "dumpDebugLog +"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7517
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/power/PowerManagerService$12;

    invoke-direct {v1, p0}, Lcom/android/server/power/PowerManagerService$12;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7547
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7548
    return-void
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 4926
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4927
    :try_start_0
    monitor-exit v1

    .line 4928
    return-void

    .line 4927
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 10
    .param p1, "phase"    # I

    .prologue
    const/16 v5, 0x3e8

    .line 829
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] onBootPhase() phase= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 832
    if-ne p1, v5, :cond_1

    .line 833
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 834
    .local v2, "now":J
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 835
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 836
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 839
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isSupportCover()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverIsUpdatedFromCoverManager:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    if-eqz v0, :cond_0

    .line 840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    .line 842
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 843
    .local v8, "time":J
    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBootPhase called on closed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    .line 847
    .end local v8    # "time":J
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 849
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    .line 852
    .end local v2    # "now":J
    :cond_1
    monitor-exit v7

    .line 853
    return-void

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 819
    const-string/jumbo v0, "power"

    new-instance v1, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 820
    const-class v0, Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 822
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 823
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 824
    return-void
.end method

.method setDeviceIdleModeInternal(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 4425
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4426
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eq v0, p1, :cond_0

    .line 4427
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 4428
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4429
    if-eqz p1, :cond_1

    .line 4430
    const-string/jumbo v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    .line 4435
    :cond_0
    :goto_0
    monitor-exit v1

    .line 4436
    return-void

    .line 4432
    :cond_1
    const-string/jumbo v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    goto :goto_0

    .line 4435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDeviceIdleTempWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    .prologue
    .line 4448
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4449
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 4450
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_0

    .line 4451
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4453
    :cond_0
    monitor-exit v1

    .line 4454
    return-void

    .line 4453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDeviceIdleWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    .prologue
    .line 4439
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4440
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 4441
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_0

    .line 4442
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4444
    :cond_0
    monitor-exit v1

    .line 4445
    return-void

    .line 4444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHallstateForMultiScreenInternal(I)V
    .locals 9
    .param p1, "desiredMultiScreenState"    # I

    .prologue
    .line 7580
    const-string v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] setHallstateForMultiScreen : state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7582
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 7583
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 7584
    .local v2, "time":J
    const/4 v0, 0x0

    .line 7586
    .local v0, "need_update":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDesiredMultiScreenState:I

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mPrevDesiredMultiScreenState:I

    .line 7587
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDesiredMultiScreenState:I

    .line 7589
    packed-switch p1, :pswitch_data_0

    .line 7616
    const-string v1, "PowerManagerService"

    const-string v4, "[api] Unknown desiredMultiScreenState state"

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7619
    :goto_0
    const-string v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] setHallstateForMultiScreen :  mSubScreenPolicyOverride: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mSubScreenPolicyOverride:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; need_upate= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7621
    if-eqz v0, :cond_0

    .line 7622
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 v4, 0x80000

    or-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 7623
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 7625
    :cond_0
    monitor-exit v8

    .line 7626
    return-void

    .line 7591
    :pswitch_0
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7592
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    goto :goto_0

    .line 7595
    :cond_1
    const-string v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] Screen__Off cancel : isRunningFactoryApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isFactoryBinary="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7625
    .end local v0    # "need_update":Z
    .end local v2    # "time":J
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7600
    .restart local v0    # "need_update":Z
    .restart local v2    # "time":J
    :pswitch_1
    const/4 v1, 0x3

    :try_start_1
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mSubScreenPolicyOverride:I

    .line 7601
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    .line 7602
    const-string v4, "android.server.power:POWER"

    const/16 v5, 0x3e8

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    goto/16 :goto_0

    .line 7604
    :cond_2
    const/4 v0, 0x1

    .line 7606
    goto/16 :goto_0

    .line 7608
    :pswitch_2
    const/4 v0, 0x1

    .line 7609
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mSubScreenPolicyOverride:I

    goto/16 :goto_0

    .line 7612
    :pswitch_3
    const/4 v0, 0x1

    .line 7613
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mSubScreenPolicyOverride:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 7589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    .locals 2
    .param p1, "timeMs"    # I

    .prologue
    .line 4417
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4418
    :try_start_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 4419
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4420
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4421
    monitor-exit v1

    .line 4422
    return-void

    .line 4421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setStayOnSettingInternal(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 4412
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4414
    return-void
.end method

.method public setTspLpmMode(IZ)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7563
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7564
    if-nez p2, :cond_0

    :try_start_0
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 7565
    .local v0, "changeStateOnly":Z
    :cond_0
    if-nez p1, :cond_3

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mTspMainLpmEnabled:Z

    if-eq p2, v3, :cond_3

    .line 7566
    if-nez v0, :cond_1

    .line 7567
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p2}, Lcom/android/server/power/Notifier;->onTspLpmNeed(IZ)V

    .line 7569
    :cond_1
    iput-boolean p2, p0, Lcom/android/server/power/PowerManagerService;->mTspMainLpmEnabled:Z

    .line 7576
    :cond_2
    :goto_0
    monitor-exit v2

    .line 7577
    return-void

    .line 7570
    :cond_3
    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mTspSubLpmEnabled:Z

    if-eq p2, v1, :cond_2

    .line 7571
    if-nez v0, :cond_4

    .line 7572
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, p2}, Lcom/android/server/power/Notifier;->onTspLpmNeed(IZ)V

    .line 7574
    :cond_4
    iput-boolean p2, p0, Lcom/android/server/power/PowerManagerService;->mTspSubLpmEnabled:Z

    goto :goto_0

    .line 7576
    .end local v0    # "changeStateOnly":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .locals 11
    .param p1, "appOps"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 857
    const-string v0, "PowerManagerService"

    const-string v3, "[api] systemReady()"

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 860
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 861
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 862
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    .line 863
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 864
    const-class v0, Landroid/view/WindowManagerPolicy;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 865
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 867
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 868
    .local v7, "pm":Landroid/os/PowerManager;
    invoke-virtual {v7}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    .line 869
    invoke-virtual {v7}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    .line 870
    invoke-virtual {v7}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 872
    new-instance v9, Landroid/hardware/SystemSensorManager;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v9, v0, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 875
    .local v9, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v0, 0x5

    invoke-virtual {v9, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsSupportedLightSensor:Z

    .line 880
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 884
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotifierInSeperateThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

    .line 885
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 886
    new-instance v0, Lcom/android/server/power/Notifier;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const-string v5, "PowerManagerService.Broadcasts"

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 897
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector;

    const-string v1, "PowerManagerService.WirelessChargerDetector"

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 900
    new-instance v0, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 902
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 903
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 904
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSmartGlow:Lcom/android/server/lights/Light;

    .line 907
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    .line 908
    new-instance v0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 909
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v0, :cond_0

    .line 910
    new-instance v0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->isFamilyConnectedInstalled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mFeatureNotifyScreenOffTimeout:Z

    .line 922
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isSupportCover()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    .line 926
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v2, v9}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V

    .line 953
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 954
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "screensaver_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 957
    const-string/jumbo v0, "screensaver_activate_on_sleep"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 960
    const-string/jumbo v0, "screensaver_activate_on_dock"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 963
    const-string/jumbo v0, "screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 966
    const-string/jumbo v0, "sleep_timeout"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 969
    const-string/jumbo v0, "stay_on_while_plugged_in"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 972
    const-string/jumbo v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 975
    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 978
    const-string/jumbo v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 981
    const-string/jumbo v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 984
    const-string/jumbo v0, "low_power_trigger_level"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 987
    const-string/jumbo v0, "theater_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 990
    const-string/jumbo v0, "double_tap_to_wake"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 995
    const-string v0, "button_key_light"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 998
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsFolderType:Z

    if-eqz v0, :cond_1

    .line 999
    const-string/jumbo v0, "key_backlight_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1002
    const-string/jumbo v0, "key_night_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1009
    :cond_1
    const-string v0, "auto_brightness_detail"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1015
    const-string/jumbo v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1029
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->USE_DEVICE_LOCK_TIME:Z

    if-eqz v0, :cond_2

    .line 1030
    const-string/jumbo v0, "is_secured_lock"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1033
    const-string/jumbo v0, "lock_screen_lock_after_timeout"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1041
    :cond_2
    const-string/jumbo v0, "user_activity_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1048
    const-string/jumbo v0, "display_outdoor_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1054
    const-string/jumbo v0, "wakeup_prevention"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1057
    const-string/jumbo v0, "wakeup_prevention_packages"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1063
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1064
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 1065
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_3

    .line 1066
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextEnabled:Z

    .line 1067
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start : (mWirelessChargerSContextManager != null - mIsWirelessChargerSContextEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mFeatureCoverSysfs:Z

    if-eqz v0, :cond_4

    .line 1074
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 1076
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_6

    .line 1077
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V

    .line 1084
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    .line 1085
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 1086
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1087
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1088
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->initWakeUpPrevention()V

    .line 1095
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->registerReceiverInSystemReady()V

    .line 1097
    return-void

    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :cond_5
    move v0, v2

    .line 875
    goto/16 :goto_0

    .line 1079
    .restart local v8    # "resolver":Landroid/content/ContentResolver;
    :cond_6
    :try_start_1
    const-string v0, "PowerManagerService"

    const-string/jumbo v1, "mCoverManager is null!!!!"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1088
    .end local v7    # "pm":Landroid/os/PowerManager;
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    .end local v9    # "sensorManager":Landroid/hardware/SensorManager;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public timeSinceScreenWasLastOn()J
    .locals 6

    .prologue
    .line 4587
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4588
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v0, :cond_0

    .line 4589
    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 4591
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    sub-long/2addr v0, v4

    monitor-exit v2

    goto :goto_0

    .line 4592
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method uidGoneInternal(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 4466
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4467
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4468
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_0

    .line 4469
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4471
    :cond_0
    monitor-exit v1

    .line 4472
    return-void

    .line 4471
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateLidState(Z)V
    .locals 3
    .param p1, "closed"    # Z

    .prologue
    .line 3356
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3357
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    if-eq v0, p1, :cond_0

    .line 3358
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsLidClosed:Z

    .line 3359
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3360
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3362
    :cond_0
    monitor-exit v1

    .line 3363
    return-void

    .line 3362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateLowPowerModeLocked()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1399
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1400
    :cond_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLowPowerModeLocked: mBootCompleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ActivityManagerNative.isSystemReady(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_1
    :goto_0
    return-void

    .line 1420
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mLowBatteryTriggerLevel:I

    if-gt v3, v4, :cond_5

    :cond_3
    move v0, v1

    .line 1424
    .local v0, "lowPowerModeEnabled":Z
    :goto_1
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PSM] lowPowerModeEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (mLowPowerModeSetting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsPowered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mAutoLowPowerModeConfigured: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mBatteryLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLowBatteryTriggerLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mLowBatteryTriggerLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    if-ne v3, v0, :cond_4

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mUserSwitched:Z

    if-eqz v3, :cond_1

    .line 1433
    :cond_4
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    .line 1435
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUserSwitched:Z

    .line 1437
    const/4 v3, 0x5

    if-eqz v0, :cond_6

    :goto_2
    invoke-direct {p0, v3, v1}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    .line 1438
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .end local v0    # "lowPowerModeEnabled":Z
    :cond_5
    move v0, v2

    .line 1420
    goto :goto_1

    .restart local v0    # "lowPowerModeEnabled":Z
    :cond_6
    move v1, v2

    .line 1437
    goto :goto_2
.end method

.method updateUidProcStateInternal(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .prologue
    .line 4457
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4458
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4459
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_0

    .line 4460
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 4462
    :cond_0
    monitor-exit v1

    .line 4463
    return-void

    .line 4462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
