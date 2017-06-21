.class public Lcom/android/server/wifi/WifiWatchdogStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiWatchdogStateMachine$6;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;,
        Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    }
.end annotation


# static fields
.field private static final ACTIVITY_CHECK_POLL:I = 0x21035

.field private static final ACTIVITY_CHECK_START:I = 0x21033

.field private static final ACTIVITY_CHECK_STOP:I = 0x21034

.field public static final AUTO_NETWORK_SWITCH_TURNED_ON_SCAN_DEFER_DURATION:J = 0x2ee0L

.field private static final BASE:I = 0x21000

.field public static final BASE_WWSM_PATCHER:I = 0x213e8

.field private static final BSSID_STAT_CACHE_SIZE:I = 0x14

.field private static final BSSID_STAT_EMPTY_COUNT:I = 0x3

.field private static final BSSID_STAT_RANGE_HIGH_DBM:I = -0x2d

.field private static final BSSID_STAT_RANGE_LOW_DBM:I = -0x69

.field private static final CAPTIVE_PORTAL_CHECK_AUTH_MODE:I = 0xb

.field private static final CAPTIVE_PORTAL_CHECK_AUTO_JOIN_MODE:I = 0xe

.field private static final CAPTIVE_PORTAL_CHECK_NONE_MODE:I = 0xd

.field private static final CAPTIVE_PORTAL_CHECK_STATE:I = 0x21028

.field static final CAPTIVE_PORTAL_EVENT_AUTHENTICATED:I = 0x2101c

.field static final CAPTIVE_PORTAL_EVENT_DETECTED:I = 0x2101a

.field static final CAPTIVE_PORTAL_EVENT_DETECTED_FOR_A_WHILE:I = 0x2101b

.field private static final CAPTIVE_PORTAL_RESULT_DETECTED:I = 0x1

.field private static final CAPTIVE_PORTAL_RESULT_NONE:I = 0x0

.field private static final CAPTIVE_PORTAL_RESULT_NO_INTERNET:I = 0x2

.field private static final CAPTIVE_PORTAL_RESULT_TIMEOUT:I = 0x3

.field static final CAPTIVE_PORTAL_STATE_EVENT:I = 0x21019

.field private static final CHECK_CAPTIVE_PORTAL:I = 0x21029

.field private static final CMD_QUALITY_CHECK:I = 0x21020

.field private static final CMD_QUALITY_RECHECK:I = 0x2100c

.field private static final CMD_RSSI_FETCH:I = 0x2100b

.field private static final CMD_RTT_204_TEST:I = 0x21021

.field private static final CMD_RTT_GOOGLE_TEST:I = 0x21022

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final CONNECT_CAPTIVE_PORTAL:I = 0x2102b

.field private static DBG:Z = false

.field public static final DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED:Z = false

.field private static final DELAYED_QUALITY_CHECK:I = 0x2101f

.field private static final EVENT_AUTHENTICATION_COMPLETE:I = 0x21047

.field private static final EVENT_BSSID_CHANGE:I = 0x21007

.field private static final EVENT_DHCP_SESSION_COMPLETE:I = 0x21045

.field private static final EVENT_DHCP_SESSION_STARTED:I = 0x21044

.field private static final EVENT_ENABLE_HIPRI:I = 0x21042

.field private static final EVENT_MOBILE_CONNECTED:I = 0x2103f

.field private static final EVENT_MOBILE_HIPRI_CONNECTED:I = 0x21040

.field private static final EVENT_NETWORK_PROPERTIES_CHANGED:I = 0x21043

.field private static final EVENT_NETWORK_STATE_CHANGE:I = 0x21002

.field private static final EVENT_QC_PARAMETER_UPDATE:I = 0x21048

.field private static final EVENT_RSSI_CHANGE:I = 0x21003

.field private static final EVENT_SCAN_COMPLETE:I = 0x2103e

.field private static final EVENT_SCAN_STARTED:I = 0x2103d

.field private static final EVENT_SCAN_TIMEOUT:I = 0x21046

.field private static final EVENT_SCREEN_OFF:I = 0x21009

.field private static final EVENT_SCREEN_ON:I = 0x21008

.field private static final EVENT_SUPPLICANT_STATE_CHANGE:I = 0x21004

.field private static final EVENT_SWITCH_TIMEOUT:I = 0x21041

.field private static final EVENT_WATCHDOG_SETTINGS_CHANGE:I = 0x21006

.field private static final EVENT_WATCHDOG_TOGGLED:I = 0x21001

.field private static final EVENT_WIFI_RADIO_STATE_CHANGE:I = 0x21005

.field private static final EXP_COEFFICIENT_MONITOR:D = 0.5

.field private static final EXP_COEFFICIENT_RECORD:D = 0.1

.field static final GOOD_LINK_DETECTED:I = 0x21016

.field private static final GOOD_LINK_LOSS_THRESHOLD:D = 0.1

.field private static final GOOD_LINK_RSSI_RANGE_MAX:I = 0x14

.field private static final GOOD_LINK_RSSI_RANGE_MIN:I = 0x5

.field private static final GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

.field private static final L2_CONNECTED:I = 0x4

.field private static final L2_CONNECTING:I = 0x2

.field private static final L2_DISCONNECTED:I = 0x1

.field private static final L2_RECONNECTING:I = 0x3

.field static final LINK_DETECTION_DISABLED:I = 0x21017

.field private static final LINK_MONITORING_SAMPLING_INTERVAL_MS:J = 0x1f4L

.field private static final LINK_MONITOR_LEVEL_THRESHOLD:I = 0x4

.field private static LINK_SAMPLING_INTERVAL_MS:J = 0x0L

.field public static final LINK_STATUS_EXTRA_INFO_CAPTIVE_PORTAL:I = 0x1

.field public static final LINK_STATUS_EXTRA_INFO_EXCEPTION:I = 0x5

.field public static final LINK_STATUS_EXTRA_INFO_NONE:I = 0x0

.field public static final LINK_STATUS_EXTRA_INFO_NO_INTERNET:I = 0x3

.field public static final LINK_STATUS_EXTRA_INFO_POOR_DISCONNECT:I = 0x4

.field public static final LINK_STATUS_EXTRA_INFO_POOR_LINK:I = 0x2

.field private static final MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

.field private static final MAX_PAUSE_TIME:I = 0x1b7740

.field private static final MAX_TIME_AVOID_LIMIT:I = 0xa

.field private static final MONITORING_TIMEOUT:I = 0x1e

.field private static final MPTCP_PORT:I = 0x5603

.field static final NEED_FETCH_RSSI_AND_LINKSPEED:I = 0x21018

.field private static NETWORK_STAT_HISTORY_COUNT_MAX:I = 0x0

.field private static final POLICY_AFTER_CONNECTION:I = 0x2

.field private static final POLICY_BEFORE_CONNECTION:I = 0x1

.field private static final POLICY_DISABLED:I = 0x0

.field static final POOR_LINK_DETECTED:I = 0x21015

.field private static final POOR_LINK_LOSS_THRESHOLD:D = 0.5

.field private static final POOR_LINK_MIN_VOLUME:D

.field private static final POOR_LINK_SAMPLE_COUNT:I = 0x3

.field private static final QC_FAILED_BY_HIGH_LOSS:I = 0x2102f

.field private static final QC_FAIL_CAPTIVE_PORTAL:I = 0x9

.field private static final QC_FAIL_DNS_CAPTIVE_PORTAL:I = 0x6

.field private static final QC_FAIL_DNS_CHECK_FAIL:I = 0x5

.field private static final QC_FAIL_DNS_NO_DNS_LIST:I = 0x3

.field private static final QC_FAIL_DNS_NO_RESOLVED_URL:I = 0x1

.field private static final QC_FAIL_DNS_PRIVATE_IP:I = 0x2

.field private static final QC_FAIL_DNS_RESOLVED_IP_NOT_IPV4:I = 0x4

.field private static final QC_FAIL_DNS_TIMEOUT:I = 0x7

.field private static final QC_FAIL_FAST_DISCONNECTION:I = 0xd

.field private static final QC_FAIL_TCP_CONNECT_TIMEOUT:I = 0x8

.field private static final QC_FAIL_TRAFFIC_HIGH_LOSS:I = 0xc

.field private static final QC_FAIL_TRAFFIC_NO_INTERNET:I = 0xa

.field private static final QC_FAIL_TRAFFIC_POOR_LINK:I = 0xb

.field private static final QC_GET_TIMEOUT:I = 0x2105e

.field private static final QC_GOOD_RX_DETECTED:I = 0x21026

.field private static final QC_HISTORY_COUNT_MAX:I = 0x1e

.field private static final QC_REDIRECT:I = 0x21027

.field private static final QC_RESOLVE_HOSTNAME_TIMEOUT:I = 0x2105c

.field private static final QC_RESULT_RECEIVED:I = 0x21025

.field private static final QC_SOCKET_TIMEOUT:I = 0x2105d

.field private static final QC_STEP_CP_DNS:I = 0x3

.field private static final QC_STEP_CP_READ_RESULT:I = 0x6

.field private static final QC_STEP_CP_SOCKET_CONNECTION:I = 0x4

.field private static final QC_STEP_CP_SOCKET_FLUSH:I = 0x5

.field private static final QC_STEP_DEFAULT_DNS:I = 0x2

.field private static final QC_STEP_GOOGLE_DNS:I = 0x1

.field private static final QC_STEP_QC_DNS:I = 0x7

.field private static final QC_STEP_QC_READ_RESULT:I = 0xa

.field private static final QC_STEP_QC_SOCKET_CONNECTION:I = 0x8

.field private static final QC_STEP_QC_SOCKET_FLUSH:I = 0x9

.field private static final QC_TRIGGER_BAD_QUALITY:I = 0x15

.field private static final QC_TRIGGER_CP_RESULT_NO_DNS_LIST:I = 0xa

.field private static final QC_TRIGGER_CP_RESULT_NO_INTERNET:I = 0xb

.field private static final QC_TRIGGER_CP_RESULT_TIMEOUT:I = 0xc

.field private static final QC_TRIGGER_QUALITY_CHECKING_ENTER:I = 0x14

.field private static final QC_TRIGGER_RECHECK_ABNORMAL_STREAMING:I = 0x23

.field private static final QC_TRIGGER_RECHECK_AGRRESSIVE_MODE_RSSI:I = 0x27

.field private static final QC_TRIGGER_RECHECK_CONTINUOUS_POOR_RX:I = 0x26

.field private static final QC_TRIGGER_RECHECK_DNS_ABNORMAL_RESPONSE:I = 0x21

.field private static final QC_TRIGGER_RECHECK_NO_DNS_LIST:I = 0x1e

.field private static final QC_TRIGGER_RECHECK_NO_SYNACK:I = 0x1f

.field private static final QC_TRIGGER_RECHECK_PERIODIC_DNS_CHECK:I = 0x20

.field private static final QC_TRIGGER_RECHECK_SUSPICIOUS_NO_RX_STATE:I = 0x22

.field private static final QC_TRIGGER_RECHECK_SUSPICIOUS_POOR_RX_STATE:I = 0x24

.field private static final QC_TRIGGER_RECHECK_TOO_SHORT_INTERVAL:I = 0x25

.field private static final QC_TRIGGER_VERIFYING_BAD_QUALITY:I = 0x7

.field private static final QC_TRIGGER_VERIFYING_CP_CHECK_SKIP:I = 0x2

.field private static final QC_TRIGGER_VERIFYING_CP_RESULT_DETECTED:I = 0x4

.field private static final QC_TRIGGER_VERIFYING_CP_RESULT_NONE:I = 0x3

.field private static final QC_TRIGGER_VERIFYING_ENTER:I = 0x1

.field private static final QC_TRIGGER_VERIFYING_L2_AVOID_TIME:I = 0x5

.field private static final QC_TRIGGER_VERIFYING_L2_RECOVERY_CONDITION:I = 0x6

.field private static final QUALITY_CHECK_RESULT_NO_INTERNET:I = 0x0

.field private static final QUALITY_CHECK_RESULT_SKIP:I = -0x1

.field private static final QUALITY_CHECK_RESULT_TIMEOUT:I = 0x1

.field private static final QUALITY_CHECK_START:I = 0x21024

.field private static final QUALITY_CHECK_TIMEOUT:I = 0x2105b

.field private static final REPORT_QC_RESULT:I = 0x21023

.field static final REQUEST_POWER_SAVE_OFF:I = 0x21013

.field static final REQUEST_POWER_SAVE_ON:I = 0x21014

.field private static final RESULT_CAPTIVE_PORTAL:I = 0x2102a

.field private static final RESUME_CAPTIVE_PORTAL_CHECK:I = 0x2102e

.field private static final SCAN_TIMEOUT:I = 0x1388

.field private static SMARTCM_DBG:Z = false

.field public static final SNS_FW_VERSION:I = 0x1

.field public static SNS_VERSION:I = 0x0

.field private static final STATUS_CODE_CAPTIVE_PORTAL:I = 0x2102c

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine"

.field private static final TIMEOUT_CAPTIVE_PORTAL:I = 0x2102d

.field private static final USE_PUBLIC_DNS:Z = false

.field private static final VERSION:I = 0x1

.field private static bUpdateLinkMonitor:I

.field private static lock:Ljava/lang/Object;

.field private static final mApMaskCheckVsie:[I

.field public static mCouldNotIdentifyCaptivePortalState:Z

.field private static mCurrentApDefault:Z

.field private static final mEnableAutoConnectHotspot:Ljava/lang/String;

.field private static mEnableSnsDuringConnected:Z

.field private static final mIgnorableApMASK:[I

.field private static mRawRssiEMA:D

.field private static sPresetLoss:[D

.field private static sWifiOnly:Z

.field private static stayAwake:Z


# instance fields
.field private bSetQcResult:Z

.field private m407ResponseReceived:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBssidCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptivePortalCheckMode:I

.field private mCaptivePortalDetected:Z

.field private mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

.field private mCaptivePortalSocket:Ljava/net/Socket;

.field private mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCountryIso:Ljava/lang/String;

.field private mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

.field private mCurrentLinkSpeed:I

.field private mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

.field private mCurrentRssi:I

.field private mCurrentSignalLevel:I

.field private mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

.field private mDetectedCPBefore:Z

.field private mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

.field private mDnsServerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mEvaluationLevelStayed:I

.field private mFirstRequest:Z

.field private mIgnoreCPResult:Z

.field private mImsRegistered:Z

.field private mImsRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsFmcNetwork:Z

.field private mIsInDhcpSession:Z

.field private mIsMobileConnected:Z

.field private mIsMobileHipriConnected:Z

.field private mIsScanning:Z

.field private mIsScreenOn:Z

.field private mIsUsingProxy:Z

.field private mIsWaitingSwitchToHipri:Z

.field private mL2State:I

.field private mLastCheckTimeByRssi:J

.field private mLastQualityCheckTimeByActivity:J

.field private mLastTxBad:I

.field private mLastTxGood:I

.field private mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMaxAvoidCount:I

.field private mMobilePolicyDataEnable:Z

.field private mMptcpEnabled:Z

.field private mNeedToUsePreviousIP:Z

.field private mNetworkStatHistory:[Ljava/lang/String;

.field private mNetworkStatHistoryIndex:I

.field private mNetworkStatHistoryUpdate:Z

.field private mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

.field private mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

.field private mNotiManager:Landroid/app/NotificationManager;

.field private mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

.field private mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

.field private mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

.field private mPauseStartTime:J

.field private mPoorNetworkAggressiveModeEnabled:Z

.field private mPoorNetworkAvoidanceEnabled:Z

.field private mPoorNetworkAvoidanceEnabledTime:J

.field private mPoorNetworkDetectionEnabled:Z

.field private mProxyAddress:Ljava/lang/String;

.field private mProxyPort:I

.field private mPublicDnsAvailable:Z

.field private mQCSSLSocket:Ljavax/net/ssl/SSLSocket;

.field private mQCSocket:Ljava/net/Socket;

.field private mQcDumpHistory:[Ljava/lang/String;

.field private mQcDumpVer:Ljava/lang/String;

.field private mQcHistory:[Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

.field private mQcHistoryHead:I

.field private mQcHistoryTotal:I

.field private mQualityCheckingState:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;

.field private mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

.field private mQualitySocketHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

.field mRawRssi:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRecoveryCanceledByScan:Z

.field private mReportedLinkStatusType:I

.field private mRssiFetchToken:I

.field private mSwitchFailCount:I

.field private mSwitchable:Z

.field private mSwitchableCondition:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserOwner:Z

.field private final mUsingSecSettings2:Z

.field private mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

.field private mWWSMPatcher:Lcom/android/server/wifi/WWSMPatcher;

.field private mWaitingSwitchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

.field private mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 181
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    .line 262
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->lock:Ljava/lang/Object;

    .line 266
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 269
    const-wide/high16 v4, -0x3f97000000000000L    # -200.0

    sput-wide v4, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    .line 270
    sput v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->bUpdateLinkMonitor:I

    .line 322
    const-wide/16 v4, 0x3e8

    sput-wide v4, Lcom/android/server/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    .line 379
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sget-wide v6, Lcom/android/server/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    long-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    sput-wide v4, Lcom/android/server/wifi/WifiWatchdogStateMachine;->POOR_LINK_MIN_VOLUME:D

    .line 420
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_ConfigAutoConnectHotspot"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mEnableAutoConnectHotspot:Ljava/lang/String;

    .line 444
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    new-instance v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const v4, 0x1b7740

    invoke-direct {v3, v1, v8, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v3, v0, v1

    new-instance v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v4, 0x5

    const v5, 0x493e0

    invoke-direct {v3, v8, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v3, v0, v2

    new-instance v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/4 v4, 0x6

    const v5, 0xea60

    invoke-direct {v3, v4, v10, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v3, v0, v9

    new-instance v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    const/16 v4, 0x9

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v5, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;-><init>(III)V

    aput-object v3, v0, v8

    sput-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->GOOD_LINK_TARGET:[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    .line 462
    new-array v0, v8, [Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    new-instance v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const v4, 0x1b7740

    const/16 v5, -0xc8

    invoke-direct {v3, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v3, v0, v1

    new-instance v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const v4, 0x493e0

    const/16 v5, -0x46

    invoke-direct {v3, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v3, v0, v2

    new-instance v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    const/16 v4, -0x37

    invoke-direct {v3, v1, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;-><init>(II)V

    aput-object v3, v0, v9

    sput-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    .line 471
    sput v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SNS_VERSION:I

    .line 483
    sput-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    .line 553
    sput-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentApDefault:Z

    .line 556
    sput-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    .line 991
    sput-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mEnableSnsDuringConnected:Z

    .line 993
    sput-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->stayAwake:Z

    .line 1126
    sput v10, Lcom/android/server/wifi/WifiWatchdogStateMachine;->NETWORK_STAT_HISTORY_COUNT_MAX:I

    .line 4113
    sput-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    .line 4784
    new-array v0, v2, [I

    const v3, 0x2ba8c0

    aput v3, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIgnorableApMASK:[I

    .line 4785
    new-array v0, v2, [I

    const v2, 0xa14ac

    aput v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mApMaskCheckVsie:[I

    return-void

    :cond_0
    move v0, v2

    .line 181
    goto/16 :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Messenger;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    .line 1172
    const-string v8, "WifiWatchdogStateMachine"

    invoke-direct {p0, v8}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 268
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    .line 419
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUsingSecSettings2:Z

    .line 421
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalDetected:Z

    .line 423
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUserOwner:Z

    .line 478
    new-instance v8, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v8}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 487
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    .line 488
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z

    .line 489
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMptcpEnabled:Z

    .line 490
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRecoveryCanceledByScan:Z

    .line 491
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mImsRegistered:Z

    .line 493
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z

    .line 494
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;

    .line 495
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyPort:I

    .line 505
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 506
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 507
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMobilePolicyDataEnable:Z

    .line 508
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;

    .line 509
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    .line 510
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->m407ResponseReceived:Z

    .line 513
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z

    .line 514
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z

    .line 515
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z

    .line 516
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z

    .line 523
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotiManager:Landroid/app/NotificationManager;

    .line 524
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;

    .line 525
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 526
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastQualityCheckTimeByActivity:J

    .line 527
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastCheckTimeByRssi:J

    .line 528
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    .line 531
    new-instance v8, Landroid/util/LruCache;

    const/16 v9, 0x14

    invoke-direct {v8, v9}, Landroid/util/LruCache;-><init>(I)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    .line 533
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    .line 538
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mEvaluationLevelStayed:I

    .line 541
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 542
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    .line 550
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mL2State:I

    .line 979
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    .line 980
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    .line 981
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    .line 982
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    .line 983
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    .line 984
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    .line 985
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    .line 986
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    .line 987
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    .line 988
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    .line 989
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    .line 995
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I

    .line 1054
    const-string v8, "2.1"

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcDumpVer:Ljava/lang/String;

    .line 1055
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    .line 1056
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    .line 1057
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z

    .line 1120
    const/16 v8, 0x1e

    new-array v8, v8, [Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistory:[Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    .line 1121
    const/16 v8, 0x1e

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcDumpHistory:[Ljava/lang/String;

    .line 1122
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    .line 1492
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$5;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$5;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mImsRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 2963
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNeedToUsePreviousIP:Z

    .line 2964
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z

    .line 4112
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;

    .line 4114
    const/16 v8, 0xb

    iput v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I

    .line 4115
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDetectedCPBefore:Z

    .line 4116
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIgnoreCPResult:Z

    .line 6308
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I

    .line 6309
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchableCondition:Z

    .line 6310
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J

    .line 6452
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I

    .line 6453
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchable:Z

    .line 7106
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    .line 1173
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    .line 1174
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    .line 1175
    const-string v8, "wifi"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1176
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v8, v9, v10, p2}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 1179
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const-string v10, "WifiWatchdogStateMachine.DnsPinger"

    invoke-direct {v8, p0, v9, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    .line 1184
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1185
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1186
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDefaultState:Lcom/android/server/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1187
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1188
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1189
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1190
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1191
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1192
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1193
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1194
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1196
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1197
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1201
    :goto_0
    const/16 v8, 0x19

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setLogRecSize(I)V

    .line 1202
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setLogOnlyTransitions(Z)V

    .line 1205
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCountryIsoCode()V

    .line 1206
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    .line 1208
    new-instance v3, Landroid/os/HandlerThread;

    const-string v8, "NetworkStatsThread"

    invoke-direct {v3, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1209
    .local v3, "networkStatsThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 1210
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    .line 1212
    new-instance v5, Landroid/os/HandlerThread;

    const-string v8, "QualityResultHandlerThread_0"

    invoke-direct {v5, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v5, "qualityResultThread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 1214
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;I)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    .line 1216
    new-instance v6, Landroid/os/HandlerThread;

    const-string v8, "QualitySocketHandlerThread"

    invoke-direct {v6, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1217
    .local v6, "qualitySocketThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 1218
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    .line 1220
    new-instance v1, Landroid/os/HandlerThread;

    const-string v8, "CaptivePortalHandlerThread"

    invoke-direct {v1, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1221
    .local v1, "captivePortalThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1222
    new-instance v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    .line 1225
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "WifiMaliciousHotspotDetectorThread"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1226
    .local v7, "wifiMHDThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 1227
    new-instance v8, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    .line 1231
    new-instance v0, Landroid/os/HandlerThread;

    const-string v8, "WWSMPatcherThread"

    invoke-direct {v0, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1232
    .local v0, "WWSMPatcherThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1233
    new-instance v8, Lcom/android/server/wifi/WWSMPatcher;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    new-instance v10, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-direct {v8, v9, p1, v10}, Lcom/android/server/wifi/WWSMPatcher;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Messenger;)V

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWWSMPatcher:Lcom/android/server/wifi/WWSMPatcher;

    .line 1237
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x1e

    if-ge v2, v8, :cond_1

    .line 1238
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistory:[Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    new-instance v9, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-direct {v9, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    aput-object v9, v8, v2

    .line 1237
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1199
    .end local v0    # "WWSMPatcherThread":Landroid/os/HandlerThread;
    .end local v1    # "captivePortalThread":Landroid/os/HandlerThread;
    .end local v2    # "i":I
    .end local v3    # "networkStatsThread":Landroid/os/HandlerThread;
    .end local v5    # "qualityResultThread":Landroid/os/HandlerThread;
    .end local v6    # "qualitySocketThread":Landroid/os/HandlerThread;
    .end local v7    # "wifiMHDThread":Landroid/os/HandlerThread;
    :cond_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 1240
    .restart local v0    # "WWSMPatcherThread":Landroid/os/HandlerThread;
    .restart local v1    # "captivePortalThread":Landroid/os/HandlerThread;
    .restart local v2    # "i":I
    .restart local v3    # "networkStatsThread":Landroid/os/HandlerThread;
    .restart local v5    # "qualityResultThread":Landroid/os/HandlerThread;
    .restart local v6    # "qualitySocketThread":Landroid/os/HandlerThread;
    .restart local v7    # "wifiMHDThread":Landroid/os/HandlerThread;
    :cond_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1241
    .local v4, "powerManager":Landroid/os/PowerManager;
    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1244
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 178
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 178
    sput-boolean p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 178
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    return v0
.end method

.method static synthetic access$11000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z

    return p1
.end method

.method static synthetic access$11200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$11504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$11600(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRecoveryCanceledByScan:Z

    return v0
.end method

.method static synthetic access$11802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRecoveryCanceledByScan:Z

    return p1
.end method

.method static synthetic access$11900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggresiveModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$12100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V

    return-void
.end method

.method static synthetic access$12400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    return-object v0
.end method

.method static synthetic access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateDnsLinkProperty()V

    return-void
.end method

.method static synthetic access$13000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J

    return-wide v0
.end method

.method static synthetic access$13002(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J

    return-wide p1
.end method

.method static synthetic access$13100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I

    return v0
.end method

.method static synthetic access$13102(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I

    return p1
.end method

.method static synthetic access$13108(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I

    return v0
.end method

.method static synthetic access$13200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    return-object v0
.end method

.method static synthetic access$13500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    return-object v0
.end method

.method static synthetic access$14000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14100()D
    .locals 2

    .prologue
    .line 178
    sget-wide v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->POOR_LINK_MIN_VOLUME:D

    return-wide v0
.end method

.method static synthetic access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$14400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$14602(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$14700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method static synthetic access$14702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;

    return-object p1
.end method

.method static synthetic access$14800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z

    return v0
.end method

.method static synthetic access$15000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z

    return p1
.end method

.method static synthetic access$15100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z

    return v0
.end method

.method static synthetic access$15302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z

    return p1
.end method

.method static synthetic access$15400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyPort:I

    return v0
.end method

.method static synthetic access$15502(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyPort:I

    return p1
.end method

.method static synthetic access$15600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z

    return v0
.end method

.method static synthetic access$15602(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z

    return p1
.end method

.method static synthetic access$15900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotiManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$15902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/app/NotificationManager;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotiManager:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z

    return p1
.end method

.method static synthetic access$16100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistoryUpdate:Z

    return v0
.end method

.method static synthetic access$16102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistoryUpdate:Z

    return p1
.end method

.method static synthetic access$16200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16300(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V

    return-void
.end method

.method static synthetic access$16400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNeedToUsePreviousIP:Z

    return v0
.end method

.method static synthetic access$16802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNeedToUsePreviousIP:Z

    return p1
.end method

.method static synthetic access$16900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$17000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    return-object v0
.end method

.method static synthetic access$17102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    return-object p1
.end method

.method static synthetic access$17200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->initNetworkStatHistory()V

    return-void
.end method

.method static synthetic access$17400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->addNetworkStatHistory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17602(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastQualityCheckTimeByActivity:J

    return-wide p1
.end method

.method static synthetic access$17700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastCheckTimeByRssi:J

    return-wide v0
.end method

.method static synthetic access$17702(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastCheckTimeByRssi:J

    return-wide p1
.end method

.method static synthetic access$17800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z

    return v0
.end method

.method static synthetic access$17802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z

    return p1
.end method

.method static synthetic access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z

    return v0
.end method

.method static synthetic access$18000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z

    return p1
.end method

.method static synthetic access$18100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalDetected:Z

    return v0
.end method

.method static synthetic access$18802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalDetected:Z

    return p1
.end method

.method static synthetic access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    return v0
.end method

.method static synthetic access$19000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    return p1
.end method

.method static synthetic access$19100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->authenticationComplete()V

    return-void
.end method

.method static synthetic access$19300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I

    move-result v0

    return v0
.end method

.method static synthetic access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->initCurrentQcFailRecord()V

    return-void
.end method

.method static synthetic access$19600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$19700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    return-object v0
.end method

.method static synthetic access$20400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    return-object v0
.end method

.method static synthetic access$21000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21200(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$21300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21800(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I

    return v0
.end method

.method static synthetic access$22000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I

    return p1
.end method

.method static synthetic access$22100(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$22200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22500(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$22600(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$22700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$23000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateTargetRssiForCurrentAP()V

    return-void
.end method

.method static synthetic access$23100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23200()Z
    .locals 1

    .prologue
    .line 178
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentApDefault:Z

    return v0
.end method

.method static synthetic access$23202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 178
    sput-boolean p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentApDefault:Z

    return p0
.end method

.method static synthetic access$23300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24200(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isInEvaluationLevel(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$24300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCountryIsoCode()V

    return-void
.end method

.method static synthetic access$25000()I
    .locals 1

    .prologue
    .line 178
    sget v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->bUpdateLinkMonitor:I

    return v0
.end method

.method static synthetic access$25002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 178
    sput p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->bUpdateLinkMonitor:I

    return p0
.end method

.method static synthetic access$25100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$25300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$25600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$25900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    return-object v0
.end method

.method static synthetic access$26000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$26100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchableCondition:Z

    return v0
.end method

.method static synthetic access$26300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$26400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$26500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26600(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$26700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchable:Z

    return p1
.end method

.method static synthetic access$27000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUserOwner:Z

    return p1
.end method

.method static synthetic access$27100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$27400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updatePoorNetworkParameters()V

    return-void
.end method

.method static synthetic access$28000()[D
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    return-object v0
.end method

.method static synthetic access$28002([D)[D
    .locals 0
    .param p0, "x0"    # [D

    .prologue
    .line 178
    sput-object p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D

    return-object p0
.end method

.method static synthetic access$28100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28500()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    return-object v0
.end method

.method static synthetic access$28600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForImsRegistration()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 178
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMptcpEnabled:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMptcpEnabled:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mImsRegistered:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForSettingsChanges()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForWatchdogToggle()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForMptcpChange()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLinkSpeed:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLinkSpeed:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentRssi:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentRssi:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 178
    sget-wide v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    return-wide v0
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 178
    sput-wide p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J

    return-wide p0
.end method

.method static synthetic access$5100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setL2State(I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDetectedCPBefore:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDetectedCPBefore:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIgnoreCPResult:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIgnoreCPResult:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    return v0
.end method

.method static synthetic access$7902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    return p1
.end method

.method static synthetic access$8000(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxBad:I

    return v0
.end method

.method static synthetic access$8302(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxBad:I

    return p1
.end method

.method static synthetic access$8400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxGood:I

    return v0
.end method

.method static synthetic access$8402(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxGood:I

    return p1
.end method

.method static synthetic access$8500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I

    return v0
.end method

.method static synthetic access$8602(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I

    return p1
.end method

.method static synthetic access$8608(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I

    return v0
.end method

.method static synthetic access$8900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I

    return v0
.end method

.method static synthetic access$8902(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I

    return p1
.end method

.method static synthetic access$9000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z

    return v0
.end method

.method static synthetic access$9002(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->m407ResponseReceived:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    return v0
.end method

.method static synthetic access$9400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggresiveModeSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAggressiveModeEnabled:Z

    return v0
.end method

.method static synthetic access$9600()Z
    .locals 1

    .prologue
    .line 178
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mEnableSnsDuringConnected:Z

    return v0
.end method

.method static synthetic access$9602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 178
    sput-boolean p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mEnableSnsDuringConnected:Z

    return p0
.end method

.method static synthetic access$9700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private addNetworkStatHistory(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistory:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistory:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistoryIndex:I

    aput-object p1, v0, v1

    .line 1140
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistoryIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistoryIndex:I

    sget v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->NETWORK_STAT_HISTORY_COUNT_MAX:I

    if-lt v0, v1, :cond_0

    .line 1141
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistoryIndex:I

    goto :goto_0
.end method

.method private authenticationComplete()V
    .locals 1

    .prologue
    .line 6554
    const v0, 0x21047

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 6555
    return-void
.end method

.method private calculateSignalLevel(I)I
    .locals 3
    .param p1, "rssi"    # I

    .prologue
    .line 6421
    const/4 v1, 0x5

    invoke-static {p1, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 6422
    .local v0, "signalLevel":I
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    .line 6423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSSI current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 6424
    :cond_0
    return v0
.end method

.method private static checkVersion(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 7213
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_watchdog_version"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 7216
    .local v3, "mWatchdogVersionFromSettings":I
    const/high16 v9, -0x10000

    and-int/2addr v9, v3

    ushr-int/lit8 v6, v9, 0x10

    .line 7217
    .local v6, "storedOSver":I
    const v9, 0xffff

    and-int v5, v3, v9

    .line 7219
    .local v5, "storedFileRev":I
    const/4 v8, 0x0

    .line 7220
    .local v8, "updatingOSver":I
    const/4 v7, 0x1

    .line 7222
    .local v7, "updatingFileRev":I
    const-string v9, "ro.build.version.release"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7223
    .local v4, "propertyOsVersion":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 7224
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 7225
    shl-int/lit8 v9, v8, 0x4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v10

    add-int v8, v9, v10

    .line 7223
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7228
    :cond_1
    if-nez v8, :cond_3

    .line 7229
    const-string v9, "WifiWatchdogStateMachine"

    const-string v10, "Cannot retrieve version info from SystemProperties."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7275
    .end local v1    # "i":I
    .end local v3    # "mWatchdogVersionFromSettings":I
    .end local v4    # "propertyOsVersion":Ljava/lang/String;
    .end local v5    # "storedFileRev":I
    .end local v6    # "storedOSver":I
    .end local v7    # "updatingFileRev":I
    .end local v8    # "updatingOSver":I
    :cond_2
    :goto_1
    return-void

    .line 7233
    .restart local v1    # "i":I
    .restart local v3    # "mWatchdogVersionFromSettings":I
    .restart local v4    # "propertyOsVersion":Ljava/lang/String;
    .restart local v5    # "storedFileRev":I
    .restart local v6    # "storedOSver":I
    .restart local v7    # "updatingFileRev":I
    .restart local v8    # "updatingOSver":I
    :cond_3
    sget-boolean v9, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v9, :cond_4

    .line 7234
    const-string v9, "WifiWatchdogStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkVersion - Current version: 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", New version: 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    shl-int/lit8 v11, v8, 0x10

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7238
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_watchdog_poor_network_test_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x1

    .line 7241
    .local v2, "mAutoNetworkSwitchEnabled":Z
    :cond_5
    const-string v9, "DEFAULT_ON"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 7242
    const/4 v2, 0x0

    .line 7245
    :cond_6
    sparse-switch v6, :sswitch_data_0

    .line 7267
    :sswitch_0
    shl-int/lit8 v9, v8, 0x10

    add-int/lit8 v9, v9, 0x1

    if-eq v3, v9, :cond_2

    .line 7268
    const-string v9, "WifiWatchdogStateMachine"

    const-string v10, "Version chaged. Updating the version..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7269
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_watchdog_version"

    shl-int/lit8 v11, v8, 0x10

    add-int/lit8 v11, v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7272
    .end local v1    # "i":I
    .end local v2    # "mAutoNetworkSwitchEnabled":Z
    .end local v3    # "mWatchdogVersionFromSettings":I
    .end local v4    # "propertyOsVersion":Ljava/lang/String;
    .end local v5    # "storedFileRev":I
    .end local v6    # "storedOSver":I
    .end local v7    # "updatingFileRev":I
    .end local v8    # "updatingOSver":I
    :catch_0
    move-exception v0

    .line 7273
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "WifiWatchdogStateMachine"

    const-string v10, "checkVersion - failed."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7245
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_0
        0x422 -> :sswitch_0
    .end sparse-switch
.end method

.method private freeWifiScanStatusNotification(I)V
    .locals 5
    .param p1, "openInfo"    # I

    .prologue
    .line 7460
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 7461
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xdc

    iput v2, v1, Landroid/os/Message;->what:I

    .line 7462
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 7463
    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freeWifiScanStatusNotification : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWifiInfo.ssid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7464
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.OPEN_AP_CHECK_RESULT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7465
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "wifiInfo"

    new-instance v3, Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7466
    const-string v2, "free_wifi_scan_open_network_status"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7467
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7470
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private getL2State()I
    .locals 3

    .prologue
    .line 7284
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getL2State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mL2State:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7285
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mL2State:I

    return v0
.end method

.method private getNetworkStatHistory()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1146
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistory:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1147
    const/4 v2, 0x0

    .line 1157
    :cond_0
    return-object v2

    .line 1149
    :cond_1
    const-string v2, ""

    .line 1150
    .local v2, "str":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistoryIndex:I

    .line 1151
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    sget v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->NETWORK_STAT_HISTORY_COUNT_MAX:I

    if-ge v0, v3, :cond_0

    .line 1152
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistory:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 1153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistory:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1155
    :cond_2
    add-int/lit8 v3, v1, 0x1

    sget v4, Lcom/android/server/wifi/WifiWatchdogStateMachine;->NETWORK_STAT_HISTORY_COUNT_MAX:I

    rem-int v1, v3, v4

    .line 1151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6571
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private initCurrentQcFailRecord()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 7096
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    .line 7097
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 7098
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 7099
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 7100
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcUrlIndex:I

    .line 7101
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 7102
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    .line 7103
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 7104
    return-void
.end method

.method private initNetworkStatHistory()V
    .locals 1

    .prologue
    .line 1130
    sget v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->NETWORK_STAT_HISTORY_COUNT_MAX:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistory:[Ljava/lang/String;

    .line 1131
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistoryIndex:I

    .line 1132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistoryUpdate:Z

    .line 1133
    return-void
.end method

.method private isAggresiveModeEnabled()Z
    .locals 1

    .prologue
    .line 4776
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggresiveModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAggressiveModeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAggresiveModeSupported()Z
    .locals 2

    .prologue
    .line 4781
    const-string v0, "note_6"

    const-string v1, "galaxy_7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEnterpriseAP()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4843
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_1

    .line 4858
    :cond_0
    :goto_0
    return v1

    .line 4844
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 4845
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 4847
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 4848
    goto :goto_0

    .line 4849
    :cond_2
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 4850
    goto :goto_0

    .line 4851
    :cond_3
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 4852
    goto :goto_0

    .line 4853
    :cond_4
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 4854
    goto :goto_0

    .line 4857
    :cond_5
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "It\'s not a eap AP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isIgnorableAP()Z
    .locals 9

    .prologue
    const v8, 0xffffff

    const/4 v5, 0x1

    .line 4787
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    .line 4795
    .local v4, "ssid":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isSpecificPackageOnScreen(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4796
    sget-boolean v6, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, " Specific Package is on SCREEN! "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4839
    :cond_0
    :goto_1
    return v5

    .line 4787
    .end local v4    # "ssid":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 4800
    .restart local v4    # "ssid":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Wifi_ShowDetailedApInfo"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "\"CMCC\""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4802
    sget-boolean v6, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "It\'s CMCC AP, no need to check the quality!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4805
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSkipInternetCheck()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4808
    sget-boolean v6, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "The type of current AP is not suitable to check the quality!(1)"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4811
    :cond_4
    const-string v6, "\"gogoinflight\""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "\"Carnival-WiFi\""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "\"orange\""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "\"ChinaNet\""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v4, :cond_6

    const-string v6, "DIRECT-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, ":NEX-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4813
    :cond_5
    sget-boolean v6, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "SNS/CaptivePortal not applicable AP."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4816
    :cond_6
    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIgnorableApMASK:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v2, :cond_8

    aget v3, v0, v1

    .line 4817
    .local v3, "mask":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    and-int/2addr v6, v8

    if-ne v6, v3, :cond_7

    .line 4818
    sget-boolean v6, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "The type of current AP is not suitable to check the quality!(2)"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4816
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4822
    .end local v3    # "mask":I
    :cond_8
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getCheckVsieForSns()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 4823
    sget-object v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mApMaskCheckVsie:[I

    array-length v2, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_a

    aget v3, v0, v1

    .line 4824
    .restart local v3    # "mask":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    and-int/2addr v6, v8

    if-ne v6, v3, :cond_9

    .line 4825
    sget-boolean v6, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "The type of current AP is not suitable to check the quality!(3)"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4823
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4830
    .end local v3    # "mask":I
    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiIBSSState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    .line 4832
    sget-boolean v6, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "IBSS AP is not suitable to check the quality!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4835
    :cond_b
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->m407ResponseReceived:Z

    if-ne v6, v5, :cond_c

    .line 4836
    sget-boolean v6, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "Proxy AP with 407 responses."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4839
    :cond_c
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    goto/16 :goto_1
.end method

.method private isInEvaluationLevel()Z
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4748
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_0

    .line 4758
    :goto_0
    return v1

    .line 4749
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggresiveModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4750
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggModeCurrentAP:I

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThresholdAggMode:I

    if-ge v3, v4, :cond_3

    :cond_1
    move v0, v2

    .line 4751
    .local v0, "ret":Z
    :goto_1
    sget-boolean v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInEvaluationLevel(AGG_MODE) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rssi:%d, rate:%d"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    move v1, v0

    .line 4758
    goto :goto_0

    .end local v0    # "ret":Z
    :cond_3
    move v0, v1

    .line 4750
    goto :goto_1

    .line 4754
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThreshold:I

    if-le v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThreshold:I

    if-ge v3, v4, :cond_6

    :cond_5
    move v0, v2

    .line 4755
    .restart local v0    # "ret":Z
    :goto_3
    sget-boolean v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInEvaluationLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rssi:%d, rate:%d"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "ret":Z
    :cond_6
    move v0, v1

    .line 4754
    goto :goto_3
.end method

.method private isInEvaluationLevel(II)Z
    .locals 8
    .param p1, "currentRssi"    # I
    .param p2, "currentLinkSpeed"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4763
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggresiveModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4764
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggModeCurrentAP:I

    if-le p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThresholdAggMode:I

    if-ge p2, v3, :cond_2

    :cond_0
    move v0, v2

    .line 4765
    .local v0, "ret":Z
    :goto_0
    sget-boolean v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInEvaluationLevel(AGG_MODE) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rssi:%d, rate:%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4772
    :cond_1
    :goto_1
    return v0

    .end local v0    # "ret":Z
    :cond_2
    move v0, v1

    .line 4764
    goto :goto_0

    .line 4768
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThreshold:I

    if-le p1, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mDataRateThreshold:I

    if-ge p2, v3, :cond_5

    :cond_4
    move v0, v2

    .line 4769
    .restart local v0    # "ret":Z
    :goto_2
    sget-boolean v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "WifiWatchdogStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInEvaluationLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rssi:%d, rate:%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "ret":Z
    :cond_5
    move v0, v1

    .line 4768
    goto :goto_2
.end method

.method private isKTCMWifiSettingScreen(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 7429
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 7430
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 7431
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7432
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7433
    .local v3, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    sget-boolean v5, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isKTCMWifiSettingScreen: top:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7434
    :cond_1
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.kt.wificm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7438
    .end local v3    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isSimCheck()Z
    .locals 2

    .prologue
    .line 6999
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7000
    const/4 v0, 0x0

    .line 7001
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSpecificPackageOnScreen(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 7444
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 7445
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 7446
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7447
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7448
    .local v3, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    sget-boolean v5, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSpecificPackageOnScreen: top:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7449
    :cond_1
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.akazam.android.wlandialer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7450
    sget-boolean v5, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "WifiWatchdogStateMachine"

    const-string v6, " Specific Package(com.akazam.android.wlandialer) is on SCREEN! "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7454
    .end local v3    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isWatchdogEnabled()Z
    .locals 4

    .prologue
    .line 1565
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "wifi_watchdog_on"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 1567
    .local v0, "ret":Z
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Watchdog enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1568
    :cond_0
    return v0
.end method

.method public static makeWifiWatchdogStateMachine(Landroid/content/Context;Landroid/os/Messenger;)Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dstMessenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1247
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1249
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1251
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    .line 1256
    sget-boolean v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-nez v3, :cond_0

    const-string v3, "REMOVED"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1259
    :cond_0
    const-string v3, "wifi_watchdog_on"

    invoke-static {v1, v3, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 1264
    :goto_1
    new-instance v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;-><init>(Landroid/content/Context;Landroid/os/Messenger;)V

    .line 1265
    .local v2, "wwsm":Lcom/android/server/wifi/WifiWatchdogStateMachine;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->start()V

    .line 1266
    invoke-static {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkVersion(Landroid/content/Context;)V

    .line 1267
    return-object v2

    .end local v2    # "wwsm":Lcom/android/server/wifi/WifiWatchdogStateMachine;
    :cond_1
    move v3, v5

    .line 1251
    goto :goto_0

    .line 1261
    :cond_2
    const-string v3, "wifi_watchdog_on"

    invoke-static {v1, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_1
.end method

.method private static putSettingsGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 6587
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private qualityCheckRequest(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 4716
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v1, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSets:I

    if-le p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v1, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mQCSetsVerifyingState:I

    if-le p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-ne v1, v2, :cond_3

    .line 4718
    :cond_1
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "WifiWatchdogStateMachine"

    const-string v2, "QC already requested as much as mQCSets!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    :cond_2
    :goto_0
    return-void

    .line 4721
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v0

    .line 4722
    .local v0, "ongoingId":I
    if-lez v0, :cond_4

    .line 4723
    const-string v1, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The previous evaluation set - ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] isn\'t finished!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4725
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z

    if-eqz v1, :cond_8

    .line 4726
    :cond_5
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "WifiWatchdogStateMachine"

    const-string v2, "qualityCheckRequest is called during scan or DHCP session -> Cancel and reschedule the request."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4727
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-ne v1, v2, :cond_7

    .line 4728
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRecoveryCanceledByScan:Z

    goto :goto_0

    .line 4730
    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->restartQCCancelledByScanOrDhcp()V

    goto :goto_0

    .line 4734
    :cond_8
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[qualityCheckRequest] id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    :cond_9
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    iput v2, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 4736
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    const v2, 0x21020

    const/4 v3, -0x1

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private registerForImsRegistration()V
    .locals 4

    .prologue
    .line 1480
    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "registerForImsRegistration"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 1485
    .local v1, "mImsInterface":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    if-eqz v1, :cond_0

    .line 1486
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mImsRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    :cond_0
    :goto_0
    return-void

    .line 1487
    :catch_0
    move-exception v0

    .line 1488
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "Failed to register IMSListener"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerForMptcpChange()V
    .locals 4

    .prologue
    .line 1460
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$4;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$4;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 1473
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mptcp_value_internal"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1476
    return-void
.end method

.method private registerForSettingsChanges()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1435
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$3;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$3;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 1442
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1445
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1448
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1451
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1454
    return-void
.end method

.method private registerForWatchdogToggle()V
    .locals 4

    .prologue
    .line 1419
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 1426
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1429
    return-void
.end method

.method private reportQCResult(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "avg"    # I

    .prologue
    const v2, 0x21023

    .line 4740
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportQCResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    .line 4741
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistoryUpdate:Z

    .line 4742
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 4743
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->sendMessage(Landroid/os/Message;)Z

    .line 4744
    return-void
.end method

.method private sendLinkStatusNotification(Z)V
    .locals 4
    .param p1, "isGood"    # Z

    .prologue
    .line 6428
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "########################################"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 6429
    :cond_0
    if-eqz p1, :cond_3

    .line 6430
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x21016

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 6431
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_1

    .line 6432
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$27702(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 6434
    :cond_1
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "Good link notification is sent"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 6443
    :cond_2
    :goto_0
    return-void

    .line 6436
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setNextTargetRssi()V

    .line 6437
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x21015

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 6438
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_4

    .line 6439
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$27802(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 6441
    :cond_4
    const-string v0, "Poor link notification is sent"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendLinkStatusNotification(ZI)V
    .locals 10
    .param p1, "isGood"    # Z
    .param p2, "extraInfo"    # I

    .prologue
    const/4 v9, 0x2

    const v8, 0x21016

    const v7, 0x21015

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 6455
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "########################################"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 6456
    :cond_0
    iput p2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I

    .line 6457
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendLinkStatusNotification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6459
    :cond_1
    if-eqz p1, :cond_4

    .line 6460
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v8, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 6461
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v2, :cond_2

    .line 6462
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J
    invoke-static {v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$27702(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 6464
    :cond_2
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "Good link notification is sent"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 6546
    :cond_3
    :goto_0
    return-void

    .line 6466
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_17

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v2, :cond_17

    .line 6467
    const-string v2, "KTT"

    sget-object v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mEnableAutoConnectHotspot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6468
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isKTCMWifiSettingScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6469
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-ne v2, v3, :cond_6

    .line 6470
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v8, v9}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 6471
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v2, :cond_5

    .line 6472
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J
    invoke-static {v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$27702(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 6474
    :cond_5
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "*** [sendLinkStatusNotification]: Good link notification with POOR_LINK is sent"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 6476
    :cond_6
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** [sendLinkStatusNotification]: Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + poor link but ignore send EVENT because KTCM IS RUNNING ***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 6482
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->setNextTargetRssi()V

    .line 6484
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 6485
    .local v1, "mobileInfo":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 6487
    .local v0, "hipriInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-ne v2, v3, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getNetworkClass()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3G"

    if-eq v2, v3, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getNetworkClass()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4G"

    if-eq v2, v3, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getNetworkClass()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unknown"

    if-ne v2, v3, :cond_b

    .line 6491
    :cond_a
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchable:Z

    .line 6493
    :cond_b
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchable:Z

    if-eqz v2, :cond_d

    .line 6494
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v7, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 6495
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v2, :cond_c

    .line 6496
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J
    invoke-static {v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$27802(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 6498
    :cond_c
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchable:Z

    .line 6499
    const-string v2, "Poor link notification is sent"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6501
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-ne v2, v3, :cond_f

    .line 6502
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v8, v9}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 6503
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v2, :cond_e

    .line 6504
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J
    invoke-static {v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$27702(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 6506
    :cond_e
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "Good link notification with POOR_LINK is sent"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6508
    :cond_f
    const/4 v2, 0x3

    if-eq p2, v2, :cond_10

    const/4 v2, 0x4

    if-eq p2, v2, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getNetworkClass()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3G"

    if-eq v2, v3, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getNetworkClass()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4G"

    if-eq v2, v3, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getNetworkClass()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unknown"

    if-ne v2, v3, :cond_16

    .line 6511
    :cond_10
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z

    .line 6512
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchableCondition:Z

    .line 6513
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    .line 6514
    :cond_11
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v3, "enableHIPRI"

    invoke-virtual {v2, v6, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_15

    .line 6516
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_12

    const-string v2, "[sendLinkStatusNotification] Already HIPRI enabled"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 6517
    :cond_12
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v7, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 6518
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v2, :cond_13

    .line 6519
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J
    invoke-static {v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$27802(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 6521
    :cond_13
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z

    .line 6522
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchable:Z

    .line 6523
    const-string v2, "Poor link notification is sent"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 6533
    :cond_14
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v2, :cond_3

    .line 6534
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(II)Z

    goto/16 :goto_0

    .line 6525
    :cond_15
    const v2, 0x21042

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 6527
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_14

    const-string v2, "[sendLinkStatusNotification] FEATURE_ENABLE_HIPRI"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 6530
    :cond_16
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchableCondition:Z

    .line 6531
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 6539
    .end local v0    # "hipriInfo":Landroid/net/NetworkInfo;
    .end local v1    # "mobileInfo":Landroid/net/NetworkInfo;
    :cond_17
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2, v7, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 6540
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v2, :cond_18

    .line 6541
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J
    invoke-static {v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$27802(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 6543
    :cond_18
    const-string v2, "Poor link notification is sent"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setL2State(I)V
    .locals 3
    .param p1, "newL2State"    # I

    .prologue
    .line 7278
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setL2State: orig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mL2State:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7279
    :cond_0
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mL2State:I

    .line 7280
    return-void
.end method

.method private setNextTargetRssi()V
    .locals 7

    .prologue
    .line 7508
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggresiveModeSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_2

    .line 7509
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 7510
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 7511
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    const/16 v5, 0xfa0

    if-le v4, v5, :cond_3

    const/4 v3, 0x1

    .line 7513
    .local v3, "is5G":Z
    :goto_0
    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v2, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggMode5G:I

    .line 7514
    .local v2, "defaultThreshold":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    .line 7515
    .local v1, "currRssi":I
    if-gt v1, v2, :cond_5

    .end local v1    # "currRssi":I
    :goto_2
    add-int/lit8 v4, v1, 0x3

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    .line 7517
    const-string v4, "WifiWatchdogStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNextTargetRssi - SSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", frequency: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", is5G: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", config.nextTargetRssi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7520
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 7521
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 7524
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "defaultThreshold":I
    .end local v3    # "is5G":Z
    :cond_2
    return-void

    .line 7511
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 7513
    .restart local v3    # "is5G":Z
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v2, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggMode2G:I

    goto :goto_1

    .restart local v1    # "currRssi":I
    .restart local v2    # "defaultThreshold":I
    :cond_5
    move v1, v2

    .line 7515
    goto :goto_2
.end method

.method private declared-synchronized setQcFailHistory()V
    .locals 18

    .prologue
    .line 7019
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 7021
    .local v4, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_0

    .line 7092
    :goto_0
    monitor-exit p0

    return-void

    .line 7023
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    .line 7024
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    .line 7029
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 7031
    .local v5, "currentTime":Ljava/lang/String;
    :try_start_2
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v12, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v10, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7032
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 7036
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_2
    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7037
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7038
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", [i]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v13, v13, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7039
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", [s]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v13, v13, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7040
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", [t]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v13, v13, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7041
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", [e]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v13, v13, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7042
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", [b]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v13, v13, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->bytes:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7043
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", [u]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v13, v13, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcUrlIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SNS_VERSION:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7044
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentRssi:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7045
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLinkSpeed:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7046
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7047
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7048
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggresiveModeSupported()Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAggressiveModeEnabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7050
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v12, :cond_4

    .line 7051
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    .line 7052
    .local v11, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    .line 7053
    .local v3, "bssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    .line 7055
    .local v2, "apIndex":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7057
    const-string v6, ""

    .line 7058
    .local v6, "hexSsid":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v7, v12, :cond_3

    .line 7059
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 7058
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 7026
    .end local v2    # "apIndex":I
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v5    # "currentTime":Ljava/lang/String;
    .end local v6    # "hexSsid":Ljava/lang/String;
    .end local v7    # "j":I
    .end local v11    # "ssid":Ljava/lang/String;
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    rem-int/lit8 v12, v12, 0x1e

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 7019
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 7061
    .restart local v2    # "apIndex":I
    .restart local v3    # "bssid":Ljava/lang/String;
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "currentTime":Ljava/lang/String;
    .restart local v6    # "hexSsid":Ljava/lang/String;
    .restart local v7    # "j":I
    .restart local v11    # "ssid":Ljava/lang/String;
    :cond_3
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7063
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x10

    if-le v12, v13, :cond_4

    .line 7064
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 7065
    .local v8, "patchedBssid":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7066
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7067
    const/16 v12, 0xc

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7068
    const/16 v12, 0xd

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7069
    const/16 v12, 0xf

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7070
    const/16 v12, 0x10

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7071
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7074
    .end local v2    # "apIndex":I
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v6    # "hexSsid":Ljava/lang/String;
    .end local v7    # "j":I
    .end local v8    # "patchedBssid":Ljava/lang/StringBuilder;
    .end local v11    # "ssid":Ljava/lang/String;
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v13, v13, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7075
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    if-ne v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget v12, v12, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 7077
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", [ns]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getNetworkStatHistory()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 7083
    :cond_5
    :goto_4
    :try_start_6
    const-string v12, "WifiWatchdogStateMachine"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7084
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcDumpHistory:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 7086
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z

    .line 7087
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    .line 7088
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    .line 7090
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->initCurrentQcFailRecord()V

    goto/16 :goto_0

    .line 7079
    :catch_0
    move-exception v9

    .line 7080
    .local v9, "re":Ljava/lang/RuntimeException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ex"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 7033
    .end local v9    # "re":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v12

    goto/16 :goto_2
.end method

.method private setupNetworkReceiver()V
    .locals 3

    .prologue
    .line 1279
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1393
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    .line 1394
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1395
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1397
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1401
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1403
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1404
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1406
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1411
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1412
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1413
    return-void
.end method

.method private skipCaptivePortalCheck()Z
    .locals 2

    .prologue
    .line 7148
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 7149
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCountryIsoCode()V

    .line 7151
    :cond_1
    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7152
    const-string v0, "WifiWatchdogStateMachine"

    const-string v1, "Need to skip captive portal check."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7153
    const/4 v0, 0x1

    .line 7155
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCountryIsoCode()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 7160
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    .line 7162
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7168
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    .line 7169
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    .line 7170
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCountryIsoCode() via TelephonyManager : mCountryIso: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7173
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_5

    .line 7175
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CountryISO"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 7176
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 7177
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7184
    .end local v0    # "countryCode":Ljava/lang/String;
    :goto_1
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCountryIsoCode() via Property(CSC) : mCountryIso: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7209
    :cond_3
    :goto_2
    return-void

    .line 7163
    :catch_0
    move-exception v1

    .line 7164
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WifiWatchdogStateMachine"

    const-string v3, "Exception occured at updateCountryIsoCode(), while retrieving Context.TELEPHONY_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7179
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "countryCode":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v2, " "

    iput-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 7181
    .end local v0    # "countryCode":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto :goto_1

    .line 7187
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sns_visited_country_iso"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 7189
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sns_visited_country_iso"

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7191
    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI_SNS_VISITED_COUNTRY_ISO is null, putString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7194
    :cond_6
    const-string v2, "LGU"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7196
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sns_visited_country_iso"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7198
    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI_SNS_VISITED_COUNTRY_ISO need to be updated from/to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_sns_visited_country_iso"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Initialize WIFI_POOR_CONNECTION_WARNING to 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7202
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_poor_connection_warning"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7204
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sns_visited_country_iso"

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2
.end method

.method private updateCurrentBssid(Ljava/lang/String;)V
    .locals 3
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    const v2, 0x21007

    .line 6394
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update current BSSID to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_2

    move-object v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 6397
    :cond_0
    if-nez p1, :cond_5

    .line 6398
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-nez v0, :cond_3

    .line 6418
    :cond_1
    :goto_1
    return-void

    .line 6394
    :cond_2
    const-string v0, "null"

    goto :goto_0

    .line 6399
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .line 6400
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "BSSID changed"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 6401
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 6406
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$6000(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6409
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .line 6410
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    if-nez v0, :cond_7

    .line 6411
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .line 6412
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mBssidCache:Landroid/util/LruCache;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6416
    :cond_7
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "BSSID changed"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 6417
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_1
.end method

.method private updateDnsLinkProperty()V
    .locals 2

    .prologue
    .line 1271
    const-string v0, "WifiWatchdogStateMachine"

    const-string v1, "updateDnsLinkProperty: enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$600(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/DnsPinger;->setCurrentLinkProperties(Landroid/net/LinkProperties;)V

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->access$700(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$600(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/DnsPinger;->setCurrentLinkProperties(Landroid/net/LinkProperties;)V

    .line 1274
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$600(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/DnsPinger;->setCurrentLinkProperties(Landroid/net/LinkProperties;)V

    .line 1275
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$900(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$600(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/DnsPinger;->setCurrentLinkProperties(Landroid/net/LinkProperties;)V

    .line 1276
    :cond_3
    return-void
.end method

.method private updatePoorNetworkParameters()V
    .locals 19

    .prologue
    .line 6878
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v14, :cond_0

    .line 6879
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 6881
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v14, :cond_1

    .line 6882
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v15, "connectivity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 6884
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->isMobilePolicyDataEnable()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMobilePolicyDataEnable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6888
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    .line 6889
    .local v5, "mPreviousPoorNetworkAvoidanceEnabled":Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 6890
    .local v6, "mPreviousPoorNetworkDetectionEnabled":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAggressiveModeEnabled:Z

    .line 6891
    .local v4, "mPreviousPoorNetworkAggressiveModeEnabled":Z
    const/4 v7, 0x0

    .line 6892
    .local v7, "simState":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 6893
    .local v13, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_9

    const/4 v3, 0x1

    .line 6894
    .local v3, "isMultiSim":Z
    :goto_1
    if-nez v13, :cond_a

    .line 6895
    const/4 v7, 0x0

    .line 6915
    :cond_2
    :goto_2
    const-string v14, "DEFAULT_ON"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 6918
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_watchdog_poor_network_test_enabled"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    if-nez v14, :cond_11

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    .line 6928
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggresiveModeSupported()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 6929
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_watchdog_poor_network_aggressive_mode_on"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_14

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAggressiveModeEnabled:Z

    .line 6931
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAggressiveModeEnabled:Z

    if-eq v14, v4, :cond_4

    .line 6932
    sget-boolean v14, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[SNS_AGGRESSIVE_MODE_ON] : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAggressiveModeEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 6933
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggresiveModeEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateTargetRssiForCurrentAP()V

    .line 6937
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "airplane_mode_on"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "mobile_data"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    if-nez v14, :cond_15

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 6941
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isSimCheck()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 6942
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v14, :cond_16

    const/4 v14, 0x5

    if-ne v7, v14, :cond_16

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMobilePolicyDataEnable:Z

    if-eqz v14, :cond_16

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 6946
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_wwsm_patch_remove_sns_menu_from_settings"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_17

    const/4 v12, 0x1

    .line 6949
    .local v12, "snsDisabled":Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUserOwner:Z

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mImsRegistered:Z

    if-nez v14, :cond_18

    if-eqz v12, :cond_18

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 6963
    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v14, :cond_6

    .line 6964
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    .line 6965
    const-string v14, "WifiWatchdogStateMachine"

    const-string v15, "ANS turned on. Do not start scan for a while."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6968
    :cond_6
    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v14, :cond_7

    .line 6969
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_7

    .line 6970
    const-string v14, "WifiWatchdogStateMachine"

    const-string v15, "during connected state"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6971
    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mEnableSnsDuringConnected:Z

    .line 6975
    :cond_7
    sget-boolean v14, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_8

    .line 6976
    const-string v15, "WifiWatchdogStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updatePoorNetworkAvoidance - Poor Network Test Enabled / !mIsFmcNetwork : "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v17, "wifi_watchdog_poor_network_test_enabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_19

    const/4 v14, 0x1

    :goto_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " / "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    if-nez v14, :cond_1a

    const/4 v14, 0x1

    :goto_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " - mPoorNetworkAvoidanceEnabled:"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    if-eqz v14, :cond_1b

    const-string v14, "enabled"

    :goto_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6981
    const-string v15, "WifiWatchdogStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updatePoorNetworkDetection - Airplane Mode Off / Mobile Data Enabled / SIM State-Ready / MobilePolicyDataDisabled / !mIsFmcNetwork / mUserOwner / !mImsRegistered / snsDisabled: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v17, "airplane_mode_on"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_1c

    const/4 v14, 0x1

    :goto_d
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " / "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v17, "mobile_data"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_1d

    const/4 v14, 0x1

    :goto_e
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " / "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/4 v14, 0x5

    if-ne v7, v14, :cond_1e

    const/4 v14, 0x1

    :goto_f
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " / "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMobilePolicyDataEnable:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " / "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    if-nez v14, :cond_1f

    const/4 v14, 0x1

    :goto_10
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " / "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUserOwner:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " / "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mImsRegistered:Z

    if-nez v14, :cond_20

    const/4 v14, 0x1

    :goto_11
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " / "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " - mPoorNetworkDetectionEnabled: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v14, :cond_21

    const-string v14, "enabled"

    :goto_12
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6989
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggresiveModeSupported()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 6990
    const-string v15, "WifiWatchdogStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "WIFI_WATCHDOG_POOR_NETWORK_TEST_ENABLED: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v17, "wifi_watchdog_poor_network_test_enabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_22

    const/4 v14, 0x1

    :goto_13
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " - mPoorNetworkAggressiveModeEnabled:"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAggressiveModeEnabled:Z

    if-eqz v14, :cond_23

    const-string v14, "enabled"

    :goto_14
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6996
    :cond_8
    return-void

    .line 6885
    .end local v3    # "isMultiSim":Z
    .end local v4    # "mPreviousPoorNetworkAggressiveModeEnabled":Z
    .end local v5    # "mPreviousPoorNetworkAvoidanceEnabled":Z
    .end local v6    # "mPreviousPoorNetworkDetectionEnabled":Z
    .end local v7    # "simState":I
    .end local v12    # "snsDisabled":Z
    .end local v13    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    .line 6886
    .local v2, "e":Ljava/lang/Exception;
    const-string v14, "WifiWatchdogStateMachine"

    const-string v15, "updatePoorNetworkParameters - Exception while retrieving ConnectionManager"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6893
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "mPreviousPoorNetworkAggressiveModeEnabled":Z
    .restart local v5    # "mPreviousPoorNetworkAvoidanceEnabled":Z
    .restart local v6    # "mPreviousPoorNetworkDetectionEnabled":Z
    .restart local v7    # "simState":I
    .restart local v13    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 6896
    .restart local v3    # "isMultiSim":Z
    :cond_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v14

    const/4 v15, 0x1

    if-gt v14, v15, :cond_b

    if-eqz v3, :cond_10

    .line 6897
    :cond_b
    const-string v14, "gsm.sim.state"

    const-string v15, "-1,-1"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6898
    .local v10, "simStatus":Ljava/lang/String;
    const-string v14, ","

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 6899
    .local v11, "simStatusInt":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 6900
    .local v8, "simState1":I
    const/4 v9, 0x0

    .line 6901
    .local v9, "simState2":I
    const-string v14, "READY"

    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 6902
    const/4 v8, 0x5

    .line 6903
    :cond_c
    array-length v14, v11

    const/4 v15, 0x1

    if-le v14, v15, :cond_d

    const-string v14, "READY"

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 6904
    const/4 v9, 0x5

    .line 6905
    :cond_d
    const/4 v14, 0x5

    if-eq v8, v14, :cond_e

    const/4 v14, 0x5

    if-ne v9, v14, :cond_f

    .line 6906
    :cond_e
    const/4 v7, 0x5

    .line 6910
    :goto_15
    sget-boolean v14, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v14, :cond_2

    const-string v14, "WifiWatchdogStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "simState1 = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "simState2 = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "simState = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 6908
    :cond_f
    const/4 v7, 0x0

    goto :goto_15

    .line 6912
    .end local v8    # "simState1":I
    .end local v9    # "simState2":I
    .end local v10    # "simStatus":Ljava/lang/String;
    .end local v11    # "simStatusInt":[Ljava/lang/String;
    :cond_10
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    goto/16 :goto_2

    .line 6918
    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 6925
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_watchdog_poor_network_test_enabled"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    if-nez v14, :cond_13

    const/4 v14, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    goto/16 :goto_4

    :cond_13
    const/4 v14, 0x0

    goto :goto_16

    .line 6929
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 6937
    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 6942
    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 6946
    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 6949
    .restart local v12    # "snsDisabled":Z
    :cond_18
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 6976
    :cond_19
    const/4 v14, 0x0

    goto/16 :goto_a

    :cond_1a
    const/4 v14, 0x0

    goto/16 :goto_b

    :cond_1b
    const-string v14, "disabled"

    goto/16 :goto_c

    .line 6981
    :cond_1c
    const/4 v14, 0x0

    goto/16 :goto_d

    :cond_1d
    const/4 v14, 0x0

    goto/16 :goto_e

    :cond_1e
    const/4 v14, 0x0

    goto/16 :goto_f

    :cond_1f
    const/4 v14, 0x0

    goto/16 :goto_10

    :cond_20
    const/4 v14, 0x0

    goto/16 :goto_11

    :cond_21
    const-string v14, "disabled"

    goto/16 :goto_12

    .line 6990
    :cond_22
    const/4 v14, 0x0

    goto/16 :goto_13

    :cond_23
    const-string v14, "disabled"

    goto/16 :goto_14
.end method

.method private updateSettings()V
    .locals 5

    .prologue
    const v4, 0x21017

    const/4 v3, 0x0

    .line 1572
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Updating secure settings"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1575
    :cond_0
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-eqz v1, :cond_3

    .line 1576
    const-string v1, "Disabling poor network avoidance for wi-fi only device"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V

    .line 1577
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 1606
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_2

    .line 1607
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggresiveModeSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1608
    const-string v1, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating secure settings - mPoorNetworkDetectionEnabled/mPoorNetworkAvoidanceEnabled/mPoorNetworkAggressiveModeEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAggressiveModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :cond_2
    :goto_1
    return-void

    .line 1580
    :cond_3
    const/4 v0, 0x0

    .line 1581
    .local v0, "defaultValue":I
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updatePoorNetworkParameters()V

    .line 1582
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1584
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v1, :cond_5

    .line 1586
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1587
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "updatePoorNetworkDetection = false because it is an ignorableAP"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    .line 1588
    :cond_4
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 1592
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    if-eqz v1, :cond_6

    .line 1593
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->setEvaluationParameters()V

    goto :goto_0

    .line 1595
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x21014

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1596
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    .line 1597
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    .line 1598
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto/16 :goto_0

    .line 1611
    .end local v0    # "defaultValue":I
    :cond_7
    const-string v1, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating secure settings - mPoorNetworkDetectionEnabled/mPoorNetworkAvoidanceEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateTargetRssiForCurrentAP()V
    .locals 7

    .prologue
    .line 7490
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_1

    .line 7504
    :cond_0
    :goto_0
    return-void

    .line 7491
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 7492
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 7494
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->nextTargetRssi:I

    .line 7495
    .local v3, "targetRssi":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    const/16 v5, 0xfa0

    if-le v4, v5, :cond_2

    const/4 v2, 0x1

    .line 7496
    .local v2, "is5G":Z
    :goto_1
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v1, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggMode5G:I

    .line 7497
    .local v1, "defaultThreshold":I
    :goto_2
    if-ge v3, v1, :cond_4

    .line 7498
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iput v3, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggModeCurrentAP:I

    .line 7502
    :goto_3
    const-string v4, "WifiWatchdogStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTargetRssiForCurrentAP - SSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", frequency: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", is5G: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mParam.mRssiThresholdAggModeCurrentAP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v6, v6, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggModeCurrentAP:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7495
    .end local v1    # "defaultThreshold":I
    .end local v2    # "is5G":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 7496
    .restart local v2    # "is5G":Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v1, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggMode2G:I

    goto :goto_2

    .line 7500
    .restart local v1    # "defaultThreshold":I
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iput v1, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggModeCurrentAP:I

    goto :goto_3
.end method


# virtual methods
.method public checkDnsQuery()V
    .locals 1

    .prologue
    .line 6550
    const v0, 0x2100c

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 6551
    return-void
.end method

.method public checkForMaliciousHotspotAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 7474
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    if-eqz v0, :cond_0

    .line 7475
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->checkForMaliciousHotspotAddress(Ljava/lang/String;)Z

    move-result v0

    .line 7477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/16 v10, 0x1e

    .line 1520
    const-string v1, ""

    .local v1, "dateToOutput":Ljava/lang/String;
    const-string v2, ""

    .line 1521
    .local v2, "hexSsid":Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1523
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1524
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiInfo: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1525
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLinkProperties: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCurrentSignalLevel: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPoorNetworkDetectionEnabled: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1528
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPoorNetworkAvoidanceEnabled: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1529
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggresiveModeSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1530
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPoorNetworkAggressiveModeEnabled: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAggressiveModeEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1532
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mL2State: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mL2State:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1533
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mQcHistoryTotal: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], mQcDumpVer: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcDumpVer:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    const-string v7, "info: l2"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1535
    const-string v7, "info: fd"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1536
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDnsServerList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1537
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWWSMPatcher:Lcom/android/server/wifi/WWSMPatcher;

    if-eqz v7, :cond_1

    .line 1538
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWWSMP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWWSMPatcher:Lcom/android/server/wifi/WWSMPatcher;

    invoke-virtual {v8}, Lcom/android/server/wifi/WWSMPatcher;->getDumpMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1540
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    if-eqz v7, :cond_2

    .line 1541
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mMHD: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getDumpMsg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    :cond_2
    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I

    if-nez v7, :cond_3

    .line 1562
    :goto_0
    return-void

    .line 1545
    :cond_3
    sget-object v8, Lcom/android/server/wifi/WifiWatchdogStateMachine;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 1546
    :try_start_0
    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v7, v10, :cond_4

    const/4 v3, 0x0

    .line 1547
    .local v3, "i":I
    :goto_1
    const/4 v4, 0x0

    .line 1549
    .local v4, "j":I
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_2
    if-ge v0, v10, :cond_6

    .line 1551
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcDumpHistory:[Ljava/lang/String;

    aget-object v7, v7, v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_5

    .line 1549
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1546
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_4
    :try_start_2
    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcHistoryHead:I

    rem-int/lit8 v3, v7, 0x1e
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1554
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_5
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQcDumpHistory:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1559
    :goto_4
    add-int/lit8 v7, v3, 0x1

    :try_start_4
    rem-int/lit8 v3, v7, 0x1e

    goto :goto_3

    .line 1555
    :catch_0
    move-exception v5

    .line 1556
    .local v5, "re":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]: ex"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1561
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "re":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_6
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public fastDisconnectClear()V
    .locals 4

    .prologue
    .line 7359
    const/4 v0, 0x0

    .line 7360
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 7361
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 7360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7363
    :cond_0
    const-wide/high16 v2, -0x3f97000000000000L    # -200.0

    sput-wide v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    .line 7364
    return-void
.end method

.method public fastDisconnectEvaluate()Z
    .locals 24

    .prologue
    .line 7300
    const/4 v4, 0x0

    .line 7301
    .local v4, "count":I
    const-wide/high16 v16, -0x8000000000000000L

    .line 7302
    .local v16, "total":D
    const-wide/high16 v14, -0x3f97000000000000L    # -200.0

    .line 7303
    .local v14, "oldestMARssi":D
    const-wide/high16 v12, -0x3f97000000000000L    # -200.0

    .line 7304
    .local v12, "latestMARssi":D
    const-wide/high16 v6, -0x3f97000000000000L    # -200.0

    .line 7305
    .local v6, "currentMARssi":D
    const-wide/high16 v8, -0x3f97000000000000L    # -200.0

    .line 7307
    .local v8, "diffMARssi":D
    sget-boolean v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v11, :cond_0

    const-string v11, "WifiWatchdogStateMachine"

    const-string v18, "fastDisconnectEvaluate: Enter."

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7309
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_RAW_RSSI_SIZE:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    .line 7310
    sget-boolean v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v11, :cond_1

    const-string v11, "WifiWatchdogStateMachine"

    const-string v18, "Not enough data to evaluate FD."

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7311
    :cond_1
    const/4 v11, 0x0

    .line 7354
    :goto_0
    return v11

    .line 7315
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EVALUATE_COUNT:I

    if-ge v5, v11, :cond_6

    .line 7317
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    if-ge v10, v11, :cond_3

    .line 7318
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    add-int v18, v10, v4

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    .line 7317
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 7320
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_MA_UNIT_SAMPLE_COUNT:I

    int-to-double v0, v11

    move-wide/from16 v18, v0

    div-double v6, v16, v18

    .line 7323
    if-nez v5, :cond_5

    .line 7324
    move-wide v12, v6

    .line 7328
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 7329
    const-wide/16 v16, 0x0

    .line 7315
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7325
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_EVALUATE_COUNT:I

    add-int/lit8 v11, v11, -0x1

    if-ne v5, v11, :cond_4

    .line 7326
    move-wide v14, v6

    goto :goto_3

    .line 7331
    .end local v10    # "j":I
    :cond_6
    sub-double v8, v14, v12

    .line 7332
    sget-boolean v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v11, :cond_7

    const-string v11, "WifiWatchdogStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fastDisconnectEvaluate: oldest="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", latest="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", diff="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-double v20, v14, v12

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7335
    :cond_7
    sget-wide v18, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    const-wide/high16 v20, -0x3f97000000000000L    # -200.0

    cmpl-double v11, v18, v20

    if-nez v11, :cond_9

    .line 7336
    sput-wide v8, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    .line 7341
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget-wide v0, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_DISCONNECT_THRESHOLD:D

    move-wide/from16 v18, v0

    cmpl-double v11, v8, v18

    if-lez v11, :cond_a

    .line 7342
    sget-boolean v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v11, :cond_8

    const-string v11, "WifiWatchdogStateMachine"

    const-string v18, "A sharp fall! Disconnect!"

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7343
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 7338
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v18, 0x3fc999999999999aL    # 0.2

    mul-double v18, v18, v8

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v22, 0x3fc999999999999aL    # 0.2

    sub-double v20, v20, v22

    sget-wide v22, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    mul-double v20, v20, v22

    add-double v18, v18, v20

    sput-wide v18, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    goto :goto_4

    .line 7345
    :cond_a
    sget-wide v18, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRawRssiEMA:D

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    cmpl-double v11, v18, v20

    if-ltz v11, :cond_c

    .line 7346
    sget-boolean v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v11, :cond_b

    const-string v11, "WifiWatchdogStateMachine"

    const-string v18, "A sharp fall trend! Disconnect!"

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7347
    :cond_b
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 7354
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public fastDisconnectUpdateRssi(I)V
    .locals 4
    .param p1, "rssi"    # I

    .prologue
    .line 7291
    sget-boolean v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fastDisconnectUpdateRssi: Enter. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7292
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    iget v1, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_RAW_RSSI_SIZE:I

    if-lt v0, v1, :cond_1

    .line 7293
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 7295
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRawRssi:Ljava/util/LinkedList;

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 7296
    return-void
.end method

.method public getNetworkClass()Ljava/lang/String;
    .locals 5

    .prologue
    .line 7368
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    .line 7369
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 7371
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 7372
    .local v1, "type":I
    const/4 v0, 0x0

    .line 7374
    .local v0, "ret":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 7397
    const-string v0, "Unknown"

    .line 7401
    :goto_0
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current network class is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7402
    :cond_1
    return-object v0

    .line 7380
    :pswitch_0
    const-string v0, "2G"

    .line 7381
    goto :goto_0

    .line 7391
    :pswitch_1
    const-string v0, "3G"

    .line 7392
    goto :goto_0

    .line 7394
    :pswitch_2
    const-string v0, "4G"

    .line 7395
    goto :goto_0

    .line 7374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method isUsingStaticIp()Z
    .locals 1

    .prologue
    .line 4863
    const/4 v0, 0x0

    return v0
.end method

.method requestWakeLock(Z)V
    .locals 4
    .param p1, "bAcquire"    # Z

    .prologue
    .line 7407
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 7424
    :cond_0
    :goto_0
    return-void

    .line 7410
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 7411
    .local v0, "bHeld":Z
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_2

    const-string v2, "WifiWatchdogStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestWakeLock - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const-string v1, "acquire"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7413
    :cond_2
    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    .line 7414
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 7411
    :cond_3
    const-string v1, "release"

    goto :goto_1

    .line 7415
    :cond_4
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 7417
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7418
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public resetSpecialSsid()I
    .locals 1

    .prologue
    .line 7482
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    if-eqz v0, :cond_0

    .line 7483
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiMaliciousHotspotDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->resetSpecialSsid()I

    move-result v0

    .line 7485
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public scanStarted()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1388

    const v7, 0x2103d

    const v6, 0x21046

    .line 7110
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 7111
    .local v0, "currentState":Lcom/android/internal/util/IState;
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-nez v1, :cond_1

    .line 7112
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 7115
    :cond_0
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiWatchdogStateMachine"

    const-string v2, "Ignore startScan msg from WifiService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7145
    :cond_1
    :goto_0
    return-void

    .line 7116
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2ee0

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    .line 7121
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiWatchdogStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore startScan msg from WifiService. Because ANS is turned on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabledTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " milliseconds ago."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7125
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    if-eqz v1, :cond_5

    .line 7126
    sget-boolean v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiWatchdogStateMachine"

    const-string v2, "startScan but already in scanning state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7128
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z

    .line 7129
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V

    .line 7130
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    if-ne v0, v1, :cond_6

    .line 7131
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 7132
    invoke-virtual {p0, v6, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 7134
    :cond_6
    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_7

    .line 7135
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    invoke-virtual {v1, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    .line 7136
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    invoke-virtual {v1, v6, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 7138
    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v1, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    .line 7139
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-virtual {v1, v6, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public setIsFmcNetwork(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 7008
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsFmcNetwork:Z

    .line 7009
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->updatePoorNetworkParameters()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7010
    const/4 v1, 0x1

    .line 7013
    :goto_0
    return v1

    .line 7011
    :catch_0
    move-exception v0

    .line 7012
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiWatchdogStateMachine"

    const-string v2, "setIsFmcNetwork - Exception while setting isFmcNetwork"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7013
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateEvaluationParameters(Ljava/lang/String;)I
    .locals 2
    .param p1, "parameters"    # Ljava/lang/String;

    .prologue
    .line 4704
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->createSmartCMFile(Ljava/lang/String;)I

    move-result v0

    .line 4705
    .local v0, "ret":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4706
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->setEvaluationParameters()V

    .line 4708
    :cond_0
    return v0
.end method
