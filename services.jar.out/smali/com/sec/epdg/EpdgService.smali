.class public Lcom/sec/epdg/EpdgService;
.super Lcom/sec/epdg/IEpdgManager$Stub;
.source "EpdgService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldReadableFiles"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgService$WfcProfileTask;,
        Lcom/sec/epdg/EpdgService$DatabaseAccessTask;,
        Lcom/sec/epdg/EpdgService$MapconDatabaseTask;,
        Lcom/sec/epdg/EpdgService$ServiceStatusChangedRunnable;,
        Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;,
        Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;,
        Lcom/sec/epdg/EpdgService$WifiCallHandover;,
        Lcom/sec/epdg/EpdgService$WifiCallEnabler;,
        Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;,
        Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;,
        Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;,
        Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;,
        Lcom/sec/epdg/EpdgService$HORunnable;,
        Lcom/sec/epdg/EpdgService$EpdgHandler;,
        Lcom/sec/epdg/EpdgService$EpdgDelayedInit;,
        Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;,
        Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;,
        Lcom/sec/epdg/EpdgService$EpdgSettingObserver;,
        Lcom/sec/epdg/EpdgService$EpdgContentObserver;,
        Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;,
        Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;,
        Lcom/sec/epdg/EpdgService$HoDelayStatus;,
        Lcom/sec/epdg/EpdgService$PolicyUpdateReason;,
        Lcom/sec/epdg/EpdgService$VoWifiStatus;,
        Lcom/sec/epdg/EpdgService$IpType;,
        Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;,
        Lcom/sec/epdg/EpdgService$DnsRetryReason;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_ON_SIMLOADED:Ljava/lang/String; = "com.samsung.ims.action.onsimloaded"

.field private static final EVENT_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final EXTRA_APNTYPE:Ljava/lang/String; = "apntype"

.field public static final EXTRA_APN_NAME:Ljava/lang/String; = "apn_name"

.field public static final EXTRA_CDMAAVAILABILITY:Ljava/lang/String; = "cdmaAvailability"

.field private static final EXTRA_COUNT:Ljava/lang/String; = "count"

.field public static final EXTRA_EPDGALLOWED:Ljava/lang/String; = "epdg_allowed"

.field private static final EXTRA_IKEERROR:Ljava/lang/String; = "ikeerror"

.field private static final EXTRA_IPSECEVENT:Ljava/lang/String; = "ipsecevent"

.field private static final EXTRA_NETWORKTYPE:Ljava/lang/String; = "networkType"

.field private static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_RETRY_REQUIRED:Ljava/lang/String; = "retry_required"

.field public static final EXTRA_SSID:Ljava/lang/String; = "ssid"

.field private static final HANDOFF_TAG:Ljava/lang/String; = "[HANDOFF]"

.field private static final INCOMING_IPSEC:Ljava/lang/String; = "[IPSEC->EPDGService]"

.field private static final INCOMING_RIL:Ljava/lang/String; = "[RIL->EPDGService]"

.field private static final INTENT_ADB_IP_CALL_SETTING_CHANGE:Ljava/lang/String; = "com.sec.commands.ipcall.action_ip_setting_change"

.field private static final INTENT_ADB_IP_CALL_SETTING_NAME:Ljava/lang/String; = "com.sec.commands.ipcall.setting"

.field private static final INTENT_ADB_IP_CALL_SETTING_STATE:Ljava/lang/String; = "com.sec.commands.ipcall.state"

.field private static final INTENT_AIRPLANE_MODE:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field private static final INTENT_DEFAULT_DATA_SUB_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

.field static final INTENT_DISABLE_WIFI_CALLING:Ljava/lang/String; = "com.sec.epdg.DISABLE_WIFI_CALLING"

.field public static final INTENT_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field public static final INTENT_EMERGENCY_CALLBACK_MODE_CHANGED_END:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_IMS"

.field static final INTENT_EPDG_AVAILABLE:Ljava/lang/String; = "com.sec.epdg.EPDG_AVAILABLE"

.field private static final INTENT_EPDG_DEREGISTER_EVENT:Ljava/lang/String; = "com.sec.epdgservice.EPDG_DEREGISTER"

.field public static final INTENT_EPDG_FQDN_NAME:Ljava/lang/String; = "com.sec.imsservice.intent.action.EPDG_NAME"

.field static final INTENT_EPDG_NOT_AVAILABLE:Ljava/lang/String; = "com.sec.epdg.EPDG_NOTAVAILABLE"

.field private static final INTENT_EPDG_REGISTER_EVENT:Ljava/lang/String; = "com.sec.epdgservice.EPDG_REGISTER"

.field static final INTENT_INTERNET_KEEP_ALIVE:Ljava/lang/String; = "com.sec.epdg.INTERNET_KEEP_ALIVE"

.field public static final INTENT_IPSEC_CONNECTION_EVENT:Ljava/lang/String; = "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_ADMIN:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_ADMIN"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_APP:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_APP"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_EPDN:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_EPDN"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_IMS:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_IMS"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_INTERNET:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_INTERNET"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_MMS:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_XCAP:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

.field private static final INTENT_ISIM_LOADED:Ljava/lang/String; = "android.intent.action.ISIM_LOADED"

.field public static final INTENT_NATT_KEEP_ALIVE_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.NATT_KEEP_ALIVE_TIMER_EXPIRED"

.field public static final INTENT_PERIODIC_DPD_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.PERIODIC_DPD_TIMER_EXPIRED"

.field public static final INTENT_RETRY_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.RETRY_TIMER_EXPIRED"

.field private static final INTENT_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final INTENT_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field private static final INTENT_SIM_STATE:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field static final INTENT_WFC_EPDG_ALLOWED:Ljava/lang/String; = "com.sec.epdg.WFC_EPDG_ALLOWED"

.field private static final INTENT_WFC_SWITCH_PROFILE:Ljava/lang/String; = "action_wfc_switch_profile_broadcast"

.field private static final INTENT_WIFI_CALL_ENABLE:Ljava/lang/String; = "action_wifi_call_enable_broadcast"

.field private static final INTENT_WIFI_LINK_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field public static final INTENT_WIFI_SCAN_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.INTENT_WIFI_SCAN_TIMER_EXPIRED"

.field public static final MAX_EPDG_CONNECTIONS:Ljava/lang/Integer;

.field private static final MAX_FQDN_RETRY_COUNT:I = 0x5

.field private static final MAX_SETUP_FAILURE_COUNT:I = 0x3

.field private static final NETWORK_PING_PONG_DELAY:I = 0x3e8

.field static final NOTIFY_L2W_REGISTRANT:I = 0x1

.field static final NOTIFY_W2L_REGISTRANT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[EPDGService]"

.field private static final VIDEO_SETTING:I = 0x1

.field private static final VOICECALL_TYPE_CS:I = 0x1

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VOLTE:I = 0x0

.field private static final VOLTE_SETTING:I = 0x0

.field private static final VOWIFI_MDN_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_RSSI_DISABLE:I = -0x64

.field private static bIsSim2Ready:Z

.field private static bIsSimReady:Z

.field private static isCpThresholdTurnOn:Z

.field private static isEpdgConnBlockedOnErrorCode:Z

.field private static isNotRequiredTimer:Z

.field private static isOnDemandApnConnectionFailed:Z

.field private static mActiveRat:I

.field private static mCellularAvailable:Z

.field private static mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

.field private static mConnMgr:Landroid/net/ConnectivityManager;

.field private static mContext:Landroid/content/Context;

.field private static mCopyLogCnt:I

.field private static mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

.field private static mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mDefaultEnableEpdg:I

.field private static mDefaultSubID:I

.field private static mDeregiForHOFail:Z

.field private static mDisabledByNoRan:Z

.field private static mDisconnectRequired:Z

.field private static mEnableEpdg:Z

.field private static mEnableEpdgHandOver:Z

.field private static mEnableVolte:Z

.field private static mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

.field private static mEpdgHandler:Landroid/os/Handler;

.field private static mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

.field private static mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

.field private static mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

.field private static mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

.field private static mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

.field private static mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

.field private static final mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

.field private static mIsAirplaneMode:Z

.field private static mIsCsAvailable:Z

.field private static mIsEpdgInitialized:Z

.field private static mIsIsimReady:Z

.field private static mIsLteAvailable:Z

.field private static mIsRequiredToSendCdmaIndication:Z

.field private static mIsRssiDisabledForProfiling:Z

.field private static mIsScreenOn:Z

.field private static mIsSimCardRemoved:Z

.field private static mIsVoPSEnabled:Lcom/sec/epdg/EpdgConstants$TriState;

.field private static mIsWifiRssiInPollingZone:Z

.field private static mL2WAfterEpdgStatusQuery:Z

.field private static mPreviousE911CallCount:I

.field private static mPreviousNonE911CallCount:I

.field private static mRoaming:Z

.field private static mSetupFailureCount:I

.field private static mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

.field private static mSsacVoiceEnabled:Z

.field private static mVoWifiPref:I

.field private static mVoWifiRoamPref:I

.field private static mVoWifiState:I

.field private static mW2LAfterEpdgStatusQuery:Z

.field private static mWifiCallingPrefState:I

.field private static mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

.field private static numOfApnsOnEpdg:Ljava/lang/Integer;


# instance fields
.field public final CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

.field public final CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

.field private final VOWIFI_ROAMING_PREF_CELLULAR:I

.field private final VOWIFI_ROAMING_PREF_WIFI:I

.field private final W2LHANDOFFAILURE:Ljava/lang/String;

.field private anArray:[I

.field private final mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mBlackListCountry:Ljava/lang/String;

.field private final mBootCompletedReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mCdmaOff:Ljava/lang/Runnable;

.field private final mCdmaOn:Ljava/lang/Runnable;

.field private mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

.field private mCurrentNetwork:Landroid/net/Network;

.field private mCurrentSim2Imsi:Ljava/lang/String;

.field private mCurrentSimImsi:Ljava/lang/String;

.field private final mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mDnsPinger:Lcom/sec/epdg/DnsPinger;

.field private final mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

.field private mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

.field private mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

.field private mFqdnRetryCount:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mIPCallAdbCommandReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

.field private mImsCallListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

.field private mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private final mImsReadyReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

.field private mInternetIntfName:Ljava/lang/String;

.field private mInternetKeepAlive:Landroid/content/Intent;

.field private final mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mKeepAliveExpired:Z

.field private mKeepAliveRunning:Z

.field private final mL2WHandoverProfilingOn:Ljava/lang/Runnable;

.field private mLastSsid:Ljava/lang/String;

.field private final mLteOff:Ljava/lang/Runnable;

.field private final mLteOn:Ljava/lang/Runnable;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private final mNattKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPingerHandlerThread:Landroid/os/HandlerThread;

.field private final mPollingRssiOff:Ljava/lang/Runnable;

.field private final mPollingRssiOn:Ljava/lang/Runnable;

.field private mPrevSim2Imsi:Ljava/lang/String;

.field private mPrevSimImsi:Ljava/lang/String;

.field private mRegistedNetworkStateChangeReceiver:Z

.field private mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

.field private final mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mShutdownIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mUpdateNetRegiRetryCount:I

.field private final mVoWifiProvisionIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mVoWifiSettingObserver:Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;

.field private final mWiFiScanIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mWifiCallingOff:Ljava/lang/Runnable;

.field private final mWifiLinkChangedIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mWifiMgrState:I

.field private final mWifiOff:Ljava/lang/Runnable;

.field private final mWifiOn:Ljava/lang/Runnable;

.field private final mWifiOnUri:Landroid/net/Uri;

.field private final mWifiRssiIntentReceived:Ljava/lang/Runnable;

.field private final mWifiStateIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z

    .line 162
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z

    .line 164
    sget-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Lcom/sec/epdg/EpdgConstants$TriState;

    .line 166
    sput v1, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I

    .line 168
    sput v1, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I

    .line 170
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    .line 172
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    .line 276
    sget v0, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    new-array v0, v0, [Lcom/sec/epdg/IPSecDataConnSM;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .line 278
    sput v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    .line 279
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    .line 280
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    .line 281
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    .line 287
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    .line 288
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsIsimReady:Z

    .line 289
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    .line 290
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    .line 291
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableVolte:Z

    .line 292
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsSimCardRemoved:Z

    .line 293
    sput v1, Lcom/sec/epdg/EpdgService;->mDefaultEnableEpdg:I

    .line 297
    sput v2, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    .line 298
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    .line 302
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    .line 307
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isOnDemandApnConnectionFailed:Z

    .line 308
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 313
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z

    .line 314
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    .line 315
    sput v1, Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I

    .line 316
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsRequiredToSendCdmaIndication:Z

    .line 317
    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z

    .line 320
    sput v1, Lcom/sec/epdg/EpdgService;->mVoWifiState:I

    .line 321
    sput v1, Lcom/sec/epdg/EpdgService;->mVoWifiPref:I

    .line 322
    sput v1, Lcom/sec/epdg/EpdgService;->mVoWifiRoamPref:I

    .line 340
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    .line 342
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    .line 344
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    .line 348
    sput v1, Lcom/sec/epdg/EpdgService;->mSetupFailureCount:I

    .line 376
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/EpdgService;->MAX_EPDG_CONNECTIONS:Ljava/lang/Integer;

    .line 377
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/EpdgService;->numOfApnsOnEpdg:Ljava/lang/Integer;

    .line 386
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isEpdgConnBlockedOnErrorCode:Z

    .line 400
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 401
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 651
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsLteAvailable:Z

    .line 727
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsCsAvailable:Z

    .line 1167
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3634
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 4495
    const/4 v0, -0x1

    sput v0, Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I

    .line 4515
    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 4749
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 5939
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2605
    invoke-direct {p0}, Lcom/sec/epdg/IEpdgManager$Stub;-><init>()V

    .line 190
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 251
    const-string/jumbo v0, "wifi_on"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOnUri:Landroid/net/Uri;

    .line 286
    const-string v0, "N/w Issue: W2L handoff failure"

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->W2LHANDOFFAILURE:Ljava/lang/String;

    .line 294
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    .line 295
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    .line 299
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    .line 300
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    .line 304
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveRunning:Z

    .line 305
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveExpired:Z

    .line 306
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mRegistedNetworkStateChangeReceiver:Z

    .line 309
    const-string/jumbo v0, "content://iwlansettings/todos/iwlansetting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

    .line 310
    const-string/jumbo v0, "content://iwlansettings/todos/epdgsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    .line 311
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    .line 318
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 319
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    .line 329
    iput v2, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    .line 331
    iput v2, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    .line 334
    iput v2, p0, Lcom/sec/epdg/EpdgService;->VOWIFI_ROAMING_PREF_CELLULAR:I

    .line 335
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/epdg/EpdgService;->VOWIFI_ROAMING_PREF_WIFI:I

    .line 1364
    new-instance v0, Lcom/sec/epdg/EpdgService$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$1;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1376
    new-instance v0, Lcom/sec/epdg/EpdgService$2;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$2;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsReadyReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1396
    new-instance v0, Lcom/sec/epdg/EpdgService$3;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$3;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 1414
    new-instance v0, Lcom/sec/epdg/EpdgService$4;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$4;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsCallListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 1435
    new-instance v0, Lcom/sec/epdg/EpdgService$5;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$5;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1447
    new-instance v0, Lcom/sec/epdg/EpdgService$6;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$6;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1479
    new-instance v0, Lcom/sec/epdg/EpdgService$7;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$7;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mNattKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1510
    new-instance v0, Lcom/sec/epdg/EpdgService$8;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$8;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWiFiScanIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1557
    new-instance v0, Lcom/sec/epdg/EpdgService$9;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$9;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1571
    new-instance v0, Lcom/sec/epdg/EpdgService$10;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$10;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1586
    new-instance v0, Lcom/sec/epdg/EpdgService$11;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$11;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1614
    new-instance v0, Lcom/sec/epdg/EpdgService$12;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$12;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1637
    new-instance v0, Lcom/sec/epdg/EpdgService$13;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$13;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiLinkChangedIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1669
    new-instance v0, Lcom/sec/epdg/EpdgService$14;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$14;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mIPCallAdbCommandReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1715
    new-instance v0, Lcom/sec/epdg/EpdgService$15;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$15;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1755
    new-instance v0, Lcom/sec/epdg/EpdgService$16;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$16;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mShutdownIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1775
    new-instance v0, Lcom/sec/epdg/EpdgService$17;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$17;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mVoWifiProvisionIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1864
    new-instance v0, Lcom/sec/epdg/EpdgService$18;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$18;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiStateIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 2192
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    .line 2227
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    .line 2266
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mVoWifiSettingObserver:Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;

    .line 2302
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;-><init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    .line 4489
    iput v2, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    .line 4750
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    .line 4751
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    .line 4863
    new-instance v0, Lcom/sec/epdg/EpdgService$19;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$19;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mBootCompletedReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 4875
    new-instance v0, Lcom/sec/epdg/EpdgService$20;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$20;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 5267
    new-instance v0, Lcom/sec/epdg/EpdgService$21;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$21;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mL2WHandoverProfilingOn:Ljava/lang/Runnable;

    .line 5278
    new-instance v0, Lcom/sec/epdg/EpdgService$22;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$22;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiRssiIntentReceived:Ljava/lang/Runnable;

    .line 5289
    new-instance v0, Lcom/sec/epdg/EpdgService$23;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$23;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPollingRssiOn:Ljava/lang/Runnable;

    .line 5315
    new-instance v0, Lcom/sec/epdg/EpdgService$24;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$24;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPollingRssiOff:Ljava/lang/Runnable;

    .line 5333
    new-instance v0, Lcom/sec/epdg/EpdgService$25;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$25;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOn:Ljava/lang/Runnable;

    .line 5370
    new-instance v0, Lcom/sec/epdg/EpdgService$26;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$26;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    .line 5473
    new-instance v0, Lcom/sec/epdg/EpdgService$27;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$27;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mLteOn:Ljava/lang/Runnable;

    .line 5482
    new-instance v0, Lcom/sec/epdg/EpdgService$28;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$28;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mLteOff:Ljava/lang/Runnable;

    .line 5496
    new-instance v0, Lcom/sec/epdg/EpdgService$29;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$29;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mCdmaOn:Ljava/lang/Runnable;

    .line 5525
    new-instance v0, Lcom/sec/epdg/EpdgService$30;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$30;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mCdmaOff:Ljava/lang/Runnable;

    .line 5632
    new-instance v0, Lcom/sec/epdg/EpdgService$31;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$31;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;

    .line 5653
    new-instance v0, Lcom/sec/epdg/EpdgService$32;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$32;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

    .line 6219
    new-instance v0, Lcom/sec/epdg/EpdgService$33;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$33;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2606
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->criticalInit(Landroid/content/Context;)V

    .line 2607
    return-void
.end method

.method private IsNeedDeregi()Z
    .locals 2

    .prologue
    .line 5602
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v0, v1, :cond_2

    :cond_0
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService;->IsVoLteAvailableNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ril.epdg.handover.enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5607
    :cond_2
    const/4 v0, 0x1

    .line 5609
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized MoveToBasedOnSettings(I)V
    .locals 3
    .param p1, "voLte"    # I

    .prologue
    .line 3400
    monitor-enter p0

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoveToBasedOnSettings : volte or vops("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") VoWifi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") 1x available ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3403
    sget-object v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 3404
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3406
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3407
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3408
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3423
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3412
    :cond_1
    :try_start_1
    const-string v0, "[EPDGService]"

    const-string v1, "Volte Off or vops disabled, Cdma scanning will start. Start the TEPDG1XSCANNING timer"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3414
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3415
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3417
    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 3418
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3419
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized MoveToBasedOnVopsOrSsac(IZ)V
    .locals 3
    .param p1, "networkSetting"    # I
    .param p2, "needToStartTimer"    # Z

    .prologue
    .line 3426
    monitor-enter p0

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoveToBasedOnVopsOrSsac :  VoWifi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") VOPS ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsVoPSEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") SSAC Voice("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") needToStartTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3432
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3433
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3434
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3444
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3437
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3438
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 3440
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startTEPDGLTETimerIfRequired()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ReadEpdgSettingFromIMS()V
    .locals 8

    .prologue
    .line 2038
    const-string v5, "[EPDGService]"

    const-string v6, "ReadEpdgSettingFromIMS"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    const-string v2, ""

    .line 2040
    .local v2, "strEpgdEnabled":Ljava/lang/String;
    const-string v3, ""

    .line 2041
    .local v3, "strEpgdHandoverEnabled":Ljava/lang/String;
    const-string v4, ""

    .line 2044
    .local v4, "strVolteEnabled":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 2045
    .local v0, "reqField":[I
    iget-object v5, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v5, :cond_0

    .line 2046
    iget-object v5, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v5, v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v1

    .line 2047
    .local v1, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 2048
    const/16 v5, 0x7a

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "strEpgdEnabled":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 2049
    .restart local v2    # "strEpgdEnabled":Ljava/lang/String;
    const/16 v5, 0x7b

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "strEpgdHandoverEnabled":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 2050
    .restart local v3    # "strEpgdHandoverEnabled":Ljava/lang/String;
    const/16 v5, 0x60

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "strVolteEnabled":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 2054
    .end local v1    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v4    # "strVolteEnabled":Ljava/lang/String;
    :cond_0
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "strEpgdEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "strEpgdHandoverEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    .line 2057
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableVolte:Z

    .line 2059
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->SupportIR94Only()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2060
    :cond_1
    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    const/4 v5, 0x1

    :goto_0
    sput-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    .line 2063
    :cond_3
    sget-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-eqz v5, :cond_4

    .line 2064
    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    .line 2066
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorDT()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2067
    sget-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableVolte:Z

    if-eqz v5, :cond_7

    .line 2068
    const-string/jumbo v6, "ril.epdg.handover.enable"

    sget-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "true"

    :goto_1
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    :cond_4
    :goto_2
    return-void

    .line 2060
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 2068
    :cond_6
    const-string/jumbo v5, "false"

    goto :goto_1

    .line 2070
    :cond_7
    const-string/jumbo v5, "ril.epdg.handover.enable"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2073
    :cond_8
    const-string/jumbo v6, "ril.epdg.handover.enable"

    sget-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    if-eqz v5, :cond_9

    const-string/jumbo v5, "true"

    :goto_3
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string/jumbo v5, "false"

    goto :goto_3

    .line 2044
    :array_0
    .array-data 4
        0x7a
        0x7b
        0x60
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 134
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    return-void
.end method

.method static synthetic access$1000()Lcom/sec/epdg/handover/EpdgImsListener;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10100(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->updateMapconTable(Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 134
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/sec/epdg/EpdgService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    iget v0, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    return v0
.end method

.method static synthetic access$10502(Lcom/sec/epdg/EpdgService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    return p1
.end method

.method static synthetic access$10600()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10702(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10800()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10900(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 134
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setIsWifiRssiInPollingZone(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/epdg/EpdgService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->is2gNetwork(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11000(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isEpdgAvailabilityRecommended()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11100(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiGoodEnough()V

    return-void
.end method

.method static synthetic access$11200(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startTimersIfNeeded()V

    return-void
.end method

.method static synthetic access$11300(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->updateCpEpdgHoThreshold(Z)V

    return-void
.end method

.method static synthetic access$11400(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendWifiStatusChangedNotification(Z)V

    return-void
.end method

.method static synthetic access$11500(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startTEPDGLTETimerIfRequired()V

    return-void
.end method

.method static synthetic access$11600(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onNetworkStatusChanged()V

    return-void
.end method

.method static synthetic access$11700(Lcom/sec/epdg/EpdgService;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onServiceStatusChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$11800(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->changeVoWifiSettingForSimBased()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12000(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onDbAccessCompleted()V

    return-void
.end method

.method static synthetic access$12100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/sec/epdg/EpdgService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->setVowifiSetting(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/epdg/EpdgService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->handleSimStateChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->handleImsStateChange(I)V

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    return v0
.end method

.method static synthetic access$1600()Landroid/content/Context;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/epdg/EpdgService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    iget v0, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/epdg/EpdgService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/epdg/EpdgService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->handleDefaultSubChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onInternetKeepAliveTimerExpiry()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setIsScreenOn(Z)V

    return-void
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    return-void
.end method

.method static synthetic access$2800()Lcom/sec/epdg/EpdgTimers;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/epdg/EpdgService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->moveToLteBasedOnMapcon()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/epdg/EpdgService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->isValidEpdgFqdn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->IsNeedDeregi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/epdg/EpdgService;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOnUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/epdg/EpdgService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getVowifiSetting()I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/epdg/EpdgService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getWifiPrefSetting()I

    move-result v0

    return v0
.end method

.method static synthetic access$3700()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/sec/epdg/EpdgService;->mVoWifiState:I

    return v0
.end method

.method static synthetic access$3702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 134
    sput p0, Lcom/sec/epdg/EpdgService;->mVoWifiState:I

    return p0
.end method

.method static synthetic access$3800()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/sec/epdg/EpdgService;->mVoWifiPref:I

    return v0
.end method

.method static synthetic access$3802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 134
    sput p0, Lcom/sec/epdg/EpdgService;->mVoWifiPref:I

    return p0
.end method

.method static synthetic access$3900(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setVowifiUserSetting(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isKeepAliveRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/sec/epdg/EpdgService;->mSetupFailureCount:I

    return v0
.end method

.method static synthetic access$4002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 134
    sput p0, Lcom/sec/epdg/EpdgService;->mSetupFailureCount:I

    return p0
.end method

.method static synthetic access$4008()I
    .locals 2

    .prologue
    .line 134
    sget v0, Lcom/sec/epdg/EpdgService;->mSetupFailureCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/epdg/EpdgService;->mSetupFailureCount:I

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/epdg/EpdgService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getWifiRoamPrefSetting()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/sec/epdg/EpdgService;->mVoWifiRoamPref:I

    return v0
.end method

.method static synthetic access$4202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 134
    sput p0, Lcom/sec/epdg/EpdgService;->mVoWifiRoamPref:I

    return p0
.end method

.method static synthetic access$4300(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    return-void
.end method

.method static synthetic access$4500()[Lcom/sec/epdg/IPSecDataConnSM;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isValidAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700()Lcom/sec/epdg/EpdgService$IpType;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startTimerOrPerformDns(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/sec/epdg/EpdgService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->initEpdgService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500()Lcom/sec/epdg/EpdgRilSharedData;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/sec/epdg/EpdgService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V

    return-void
.end method

.method static synthetic access$5300()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I

    return v0
.end method

.method static synthetic access$5302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 134
    sput p0, Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I

    return p0
.end method

.method static synthetic access$5400()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z

    return v0
.end method

.method static synthetic access$5402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 134
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z

    return p0
.end method

.method static synthetic access$5500(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->movePdnFromWifi()V

    return-void
.end method

.method static synthetic access$5600()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    return v0
.end method

.method static synthetic access$5700()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    return v0
.end method

.method static synthetic access$5702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 134
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    return p0
.end method

.method static synthetic access$5800(Lcom/sec/epdg/EpdgService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/sec/epdg/EpdgService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->pingAsyncInternet()V

    return-void
.end method

.method static synthetic access$6000(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/sec/epdg/EpdgService;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->notifyL2WHandoverResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->notifyW2LHandoverResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleEpdgSettingsReadEvent()V

    return-void
.end method

.method static synthetic access$6500(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleMapconChange()V

    return-void
.end method

.method static synthetic access$6600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isHandoverRequiredOnCdmaIndication()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    return-void
.end method

.method static synthetic access$6900()Lcom/sec/epdg/EpdgService$IpType;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Lcom/sec/epdg/EpdgContentReader;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 134
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    return-void
.end method

.method static synthetic access$702(Lcom/sec/epdg/EpdgContentReader;)Lcom/sec/epdg/EpdgContentReader;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgContentReader;

    .prologue
    .line 134
    sput-object p0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    return-void
.end method

.method static synthetic access$7200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500()V
    .locals 0

    .prologue
    .line 134
    invoke-static {}, Lcom/sec/epdg/EpdgService;->stopWifiRssiIntentDelayTimerIfRequired()V

    return-void
.end method

.method static synthetic access$7600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/sec/epdg/EpdgService;ZZZZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 134
    invoke-direct/range {p0 .. p5}, Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->MoveToBasedOnSettings(I)V

    return-void
.end method

.method static synthetic access$7900(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onVolteProvisioningStateChanged(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/epdg/EpdgService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # J

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    return-void
.end method

.method static synthetic access$8000(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    return-void
.end method

.method static synthetic access$8100(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onVoWifiProvisioningStateChanged(I)V

    return-void
.end method

.method static synthetic access$8200()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    return v0
.end method

.method static synthetic access$8202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 134
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    return p0
.end method

.method static synthetic access$8300()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    return v0
.end method

.method static synthetic access$8302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 134
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    return p0
.end method

.method static synthetic access$8400(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setEpdgTemporaryBlocked(Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V

    return-void
.end method

.method static synthetic access$8500()Lcom/sec/epdg/EpdgService$HoDelayStatus;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onVopsStatusChanged(I)V

    return-void
.end method

.method static synthetic access$8700(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8800(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V

    return-void
.end method

.method static synthetic access$8900()Z
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsImsCallConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/epdg/EpdgService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9000()Z
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9100()Z
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 134
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setIsSsacVoiceEnabled(Z)V

    return-void
.end method

.method static synthetic access$9300(Lcom/sec/epdg/EpdgService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->MoveToBasedOnVopsOrSsac(IZ)V

    return-void
.end method

.method static synthetic access$9400(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->changeApBlocking(Z)V

    return-void
.end method

.method static synthetic access$9500(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->initAfterimsReady()V

    return-void
.end method

.method static synthetic access$9600(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->updateNetRegist()V

    return-void
.end method

.method static synthetic access$9700(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$VoWifiStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 134
    sput p0, Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I

    return p0
.end method

.method private changeApBlocking(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 4802
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-nez v0, :cond_0

    .line 4825
    :goto_0
    return-void

    .line 4805
    :cond_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeApBlocking : enable ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wifiConnected  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "current : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4807
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4808
    if-eqz p1, :cond_2

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-eq v0, v1, :cond_2

    .line 4809
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4810
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4811
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    .line 4824
    :cond_1
    :goto_1
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeApBlocking new :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4813
    :cond_2
    if-nez p1, :cond_1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v0, v1, :cond_1

    .line 4814
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->AP_NOT_ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4815
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 4817
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4818
    const-string v0, "[EPDGService]"

    const-string v1, "AP blocked - do not need de-register "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4819
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4821
    :cond_3
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    goto :goto_1
.end method

.method private changeVoWifiSettingForSimBased()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2140
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 2141
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    .line 2142
    .local v4, "imsi":Ljava/lang/String;
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "prev_imsi"

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lcom/sec/epdg/VoWifiSettings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2143
    .local v3, "PreSimImsi":Ljava/lang/String;
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "operatornumeric"

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lcom/sec/epdg/VoWifiSettings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2144
    .local v2, "PreMccmnc":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 2145
    .local v1, "Mccmnc":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getGid1()Ljava/lang/String;

    move-result-object v0

    .line 2147
    .local v0, "Gid1":Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeVoWifiSettingForSimBased() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Operator Mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeVoWifiSettingForSimBased() Pre Imsi :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Current Imsi: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v6, v7}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2149
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeVoWifiSettingForSimBased() Pre Mccmnc :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Current Mccmnc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeVoWifiSettingForSimBased() GID1 :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v6, v7}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2152
    if-eqz v4, :cond_2

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2153
    const-string v6, "[EPDGService]"

    const-string v7, "changeVoWifiSettingForSimBased() sim cared was chagned."

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mVoWifiSettingObserver:Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mVoWifiSettingObserver:Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2157
    :cond_0
    if-eqz v1, :cond_3

    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2158
    const-string v6, "[EPDGService]"

    const-string v7, "changeVoWifiSettingForSimBased() Normal Sim Change."

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isNeedProvisioning()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2160
    invoke-direct {p0, v9, v9}, Lcom/sec/epdg/EpdgService;->setVowifiSetting(IZ)V

    .line 2173
    :cond_1
    :goto_0
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "operatornumeric"

    invoke-static {v6, v7, v1}, Lcom/sec/epdg/VoWifiSettings;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "prev_imsi"

    invoke-static {v6, v7, v4}, Lcom/sec/epdg/VoWifiSettings;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mVoWifiSettingObserver:Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sec/epdg/EpdgService;->mVoWifiSettingObserver:Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2179
    :cond_2
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getVowifiSetting()I

    move-result v6

    sput v6, Lcom/sec/epdg/EpdgService;->mVoWifiState:I

    .line 2180
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getWifiPrefSetting()I

    move-result v6

    sput v6, Lcom/sec/epdg/EpdgService;->mVoWifiPref:I

    .line 2181
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getWifiRoamPrefSetting()I

    move-result v6

    sput v6, Lcom/sec/epdg/EpdgService;->mVoWifiRoamPref:I

    .line 2182
    return-void

    .line 2163
    :cond_3
    const-string v6, "[EPDGService]"

    const-string v7, "changeVoWifiSettingForSimBased() Sim Operator Change."

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/sec/epdg/VoWifiSettings;->resetDbValue(Landroid/content/Context;Ljava/lang/String;)V

    .line 2165
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isNeedProvisioning()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2166
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getVowifiUserSetting()I

    move-result v6

    invoke-direct {p0, v6, v9}, Lcom/sec/epdg/EpdgService;->setVowifiSetting(IZ)V

    goto :goto_0

    .line 2168
    :cond_4
    const-string v6, "[EPDGService]"

    const-string v7, "changeVoWifiSettingForSimBased() Waiting for Intent from Entitlement."

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkAndUpdateWifiAvailability()V
    .locals 3

    .prologue
    .line 3546
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3547
    const-string v0, "[EPDGService]"

    const-string v1, "checkAndUpdateWifiAvailability: No Sim card. Ignore all notifications"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3558
    :cond_0
    :goto_0
    return-void

    .line 3550
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3551
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_2

    .line 3552
    const-string v0, "[EPDGService]"

    const-string v1, "check AP is allowed for EPDG service first"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    new-instance v0, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 3555
    :cond_2
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    goto :goto_0
.end method

.method private checkVopsStatus(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x1

    .line 6197
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVopsStatus: service state is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6198
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    .line 6200
    :cond_0
    const-string v2, "[EPDGService]"

    const-string v3, "Either airplane mode is ON or no LTE, ignore vops setting change"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6217
    :goto_0
    return-void

    .line 6203
    :cond_1
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getVoPS(Landroid/telephony/ServiceState;)I

    move-result v0

    .line 6204
    .local v0, "vops":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 6205
    sget-object v2, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setIsVoPSEnabled(Lcom/sec/epdg/EpdgConstants$TriState;)V

    .line 6206
    const-string v2, "[EPDGService]"

    const-string v3, "checkVopsStatus: Inappropriate vops status, returning"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6209
    :cond_2
    if-ne v0, v1, :cond_5

    .line 6210
    .local v1, "vopsEnabled":Z
    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsVoPSEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v2, v3, :cond_3

    if-nez v1, :cond_6

    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsVoPSEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v2, v3, :cond_4

    if-eqz v1, :cond_6

    .line 6212
    :cond_4
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVopsStatus: Vops status is changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6213
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->onVopsStatusChanged(I)V

    goto :goto_0

    .line 6209
    .end local v1    # "vopsEnabled":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 6215
    .restart local v1    # "vopsEnabled":Z
    :cond_6
    const-string v2, "[EPDGService]"

    const-string v3, "Vops status is unchanged"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static copyVpnLog(I)V
    .locals 12
    .param p0, "num"    # I

    .prologue
    .line 3744
    const/4 v3, 0x0

    .line 3745
    .local v3, "fin":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 3746
    .local v6, "fout":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/log/vpnclientpm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3748
    .local v1, "dest":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v9, "/data/data/com.ipsec.service/vpnclientpm.txt"

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3749
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3751
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    .line 3754
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "len":I
    if-lez v8, :cond_2

    .line 3755
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 3758
    .end local v0    # "buffer":[B
    .end local v8    # "len":I
    :catch_0
    move-exception v5

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 3759
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v9, "[EPDGService]"

    const-string v10, "FileNotFoundException "

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3763
    if-eqz v3, :cond_0

    .line 3765
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 3770
    :cond_0
    :goto_2
    if-eqz v6, :cond_1

    .line 3772
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 3779
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    return-void

    .line 3757
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "len":I
    :cond_2
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3763
    if-eqz v4, :cond_3

    .line 3765
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 3770
    :cond_3
    :goto_4
    if-eqz v7, :cond_7

    .line 3772
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 3775
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 3766
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 3767
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3773
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 3774
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 3775
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 3766
    .end local v0    # "buffer":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "len":I
    .restart local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 3767
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3773
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 3774
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3760
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v2

    .line 3761
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_9
    const-string v9, "[EPDGService]"

    const-string v10, "Exception occured"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3763
    if-eqz v3, :cond_4

    .line 3765
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 3770
    :cond_4
    :goto_6
    if-eqz v6, :cond_1

    .line 3772
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    .line 3773
    :catch_6
    move-exception v2

    .line 3774
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3766
    :catch_7
    move-exception v2

    .line 3767
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 3763
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v3, :cond_5

    .line 3765
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 3770
    :cond_5
    :goto_8
    if-eqz v6, :cond_6

    .line 3772
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 3775
    :cond_6
    :goto_9
    throw v9

    .line 3766
    :catch_8
    move-exception v2

    .line 3767
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "[EPDGService]"

    const-string v11, "Exception : close exception"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 3773
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v2

    .line 3774
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "[EPDGService]"

    const-string v11, "Exception : close exception"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 3763
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_7

    .line 3760
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v2

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_5

    .line 3758
    :catch_c
    move-exception v5

    goto/16 :goto_1

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_d
    move-exception v5

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "len":I
    :cond_7
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private criticalInit(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2596
    const-string v0, "[EPDGService]"

    const-string v1, "Enter step 1 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    sput-object p1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    .line 2598
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EpdgServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2599
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2600
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgHandler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgHandler;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Looper;)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    .line 2601
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$EpdgDelayedInit;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgService$EpdgDelayedInit;-><init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2602
    const-string v0, "[EPDGService]"

    const-string v1, "Exit step 1 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    return-void
.end method

.method public static declared-synchronized decrementNumOfApnsOnEpdg()V
    .locals 2

    .prologue
    .line 383
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->numOfApnsOnEpdg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->numOfApnsOnEpdg:Ljava/lang/Integer;

    sget-object v0, Lcom/sec/epdg/EpdgService;->numOfApnsOnEpdg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/EpdgService;->numOfApnsOnEpdg:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :cond_0
    monitor-exit v1

    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private enableReceiver(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 4730
    if-eqz p1, :cond_1

    .line 4731
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4732
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4734
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4736
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setRegistedNetworkStateChangeReceiver(Z)V

    .line 4738
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->registerListener()V

    .line 4747
    :goto_0
    return-void

    .line 4741
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4742
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4743
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setRegistedNetworkStateChangeReceiver(Z)V

    .line 4745
    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->unregisterListener()V

    goto :goto_0
.end method

.method public static getAllApnSettings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 788
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getIWlanApnList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "epdgApnType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 4254
    const/4 v2, 0x0

    .line 4256
    .local v2, "apnName":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 4257
    const-string v7, "[EPDGService]"

    const-string v8, "(null apnType)"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4275
    :goto_0
    return-object v6

    .line 4261
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 4262
    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4263
    .local v1, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4264
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/IWlanApnSetting;

    .line 4265
    .local v4, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v5

    .line 4266
    .local v5, "remoteUri":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v3

    .line 4267
    .local v3, "apnType":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4268
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 4269
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apnType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mapped to apnName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    .line 4271
    goto :goto_0

    .line 4274
    .end local v3    # "apnType":Ljava/lang/String;
    .end local v4    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v5    # "remoteUri":Ljava/lang/String;
    :cond_2
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find apnName for apnType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;
    .locals 3

    .prologue
    .line 641
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getConfiguredWifiIntfIpType: returning ip type as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    sget-object v0, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    return-object v0
.end method

.method public static getConnMgrInstance()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 482
    sget-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getCpThresholdConditionForHandover()Z
    .locals 2

    .prologue
    .line 678
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 679
    const-string v0, "[EPDGService]"

    const-string v1, "It is true that CpThresholdCondition for handover"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const/4 v0, 0x1

    .line 683
    :goto_0
    return v0

    .line 682
    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "It is false that CpThresholdCondition for handover"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5855
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 5857
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 5858
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 5859
    .local v0, "newSsid":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current Ssid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 5861
    return-object v0
.end method

.method private static getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;
    .locals 3

    .prologue
    .line 631
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentWifiIntfIpType: returning ip type as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    sget-object v0, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    return-object v0
.end method

.method public static getEpdgFqdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getEpdgFQDN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEpdgServiceContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 1227
    const-string v0, "[EPDGService]"

    const-string v1, "Returning epdg service context"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getEpdgServiceHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2552
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getEpdgSettings()Lcom/sec/epdg/EpdgSettings;
    .locals 1

    .prologue
    .line 792
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    return-object v0
.end method

.method private static getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    .locals 1

    .prologue
    .line 4754
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-nez v0, :cond_0

    .line 4755
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4757
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    goto :goto_0
.end method

.method public static getGid1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3561
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3562
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getHasPendingCdmaIndication()Z
    .locals 1

    .prologue
    .line 3718
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v0, :cond_0

    .line 3719
    const/4 v0, 0x0

    .line 3721
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsRequiredToSendCdmaIndication:Z

    goto :goto_0
.end method

.method public static getIpmeStatus()Z
    .locals 1

    .prologue
    .line 647
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 648
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getIpmeStatus()Z

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized getIsAirplaneMode()Z
    .locals 4

    .prologue
    .line 545
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsAirplaneMode: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getIsCellularAvailable()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 687
    const-class v8, Lcom/sec/epdg/EpdgService;

    monitor-enter v8

    :try_start_0
    sget-object v9, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 688
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .line 690
    .local v2, "isRoaming":Z
    sget-object v9, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "voicecall_type"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 691
    .local v1, "callType":I
    const/4 v0, 0x0

    .line 692
    .local v0, "bIsCellularAvailable":Z
    const-string/jumbo v9, "gsm.sim.state"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 693
    .local v4, "simState":Ljava/lang/String;
    const-string v9, "READY"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "true"

    const-string/jumbo v10, "gsm.operator.isroaming"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 694
    const/4 v2, 0x1

    .line 696
    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataRoamingEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_2

    .line 720
    :cond_1
    :goto_0
    monitor-exit v8

    return v6

    .line 699
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v1, :cond_1

    .line 702
    :cond_3
    sget v9, Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    .line 703
    const-string v7, "[EPDGService]"

    const-string/jumbo v9, "mWifiCallingPrefState is NEVER_USE_CS"

    invoke-static {v7, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 687
    .end local v0    # "bIsCellularAvailable":Z
    .end local v1    # "callType":I
    .end local v4    # "simState":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6

    .line 707
    .restart local v0    # "bIsCellularAvailable":Z
    .restart local v1    # "callType":I
    .restart local v4    # "simState":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 708
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v9

    if-nez v9, :cond_7

    move v0, v7

    .line 709
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    sget v10, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    .line 715
    .local v3, "netType":I
    :goto_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 716
    if-nez v3, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_a

    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v9

    if-nez v9, :cond_a

    move v0, v7

    :cond_6
    :goto_3
    move v6, v0

    .line 720
    goto :goto_0

    .end local v3    # "netType":I
    :cond_7
    move v0, v6

    .line 708
    goto :goto_1

    .line 711
    :cond_8
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v9

    if-nez v9, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v9

    if-nez v9, :cond_9

    move v0, v7

    .line 712
    :goto_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .restart local v3    # "netType":I
    goto :goto_2

    .end local v3    # "netType":I
    :cond_9
    move v0, v6

    .line 711
    goto :goto_4

    .restart local v3    # "netType":I
    :cond_a
    move v0, v6

    .line 716
    goto :goto_3
.end method

.method public static declared-synchronized getIsCsAvailable()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 730
    const-class v2, Lcom/sec/epdg/EpdgService;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartCdmaRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 731
    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mIsCsAvailable:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 735
    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    move v0, v1

    .line 731
    goto :goto_0

    .line 735
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    :cond_2
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getIsDynamicFqdn()Z
    .locals 1

    .prologue
    .line 800
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIsDynamicFQDN()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getIsEpdgAvailable()Z
    .locals 6

    .prologue
    .line 753
    const-class v3, Lcom/sec/epdg/EpdgService;

    monitor-enter v3

    const/4 v1, 0x0

    .line 754
    .local v1, "result":Z
    :try_start_0
    const-string/jumbo v2, "ril.epdg.available"

    const-string/jumbo v4, "false"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "epdgAvailable":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 756
    const/4 v1, 0x1

    .line 758
    :cond_0
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getIsEpdgAvailable: returning: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    monitor-exit v3

    return v1

    .line 753
    .end local v0    # "epdgAvailable":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static getIsImsCallConnected()Z
    .locals 4

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "result":Z
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_0

    .line 620
    const/4 v0, 0x1

    .line 622
    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsImsCallConnected: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    return v0
.end method

.method public static declared-synchronized getIsLteAvailable()Z
    .locals 3

    .prologue
    .line 655
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartLteRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getIsLteAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 658
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsVoPSEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIsNetworkRoaming()Z
    .locals 1

    .prologue
    .line 4512
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method private static getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1286
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isOnDemandApnConnectionFailed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static getIsRssiDisabledForProfiling()Z
    .locals 3

    .prologue
    .line 607
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIsRssiDisabledForProfiling: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    return v0
.end method

.method public static declared-synchronized getIsScreenOn()Z
    .locals 4

    .prologue
    .line 536
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsScreenOn: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getIsSimCardRemoved()Z
    .locals 3

    .prologue
    .line 778
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIsSimCardRemoved: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsSimCardRemoved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsSimCardRemoved:Z

    return v0
.end method

.method private static declared-synchronized getIsSsacVoiceEnabled()Z
    .locals 4

    .prologue
    .line 567
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsSsacVoiceEnabled: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getIsVoPSEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 4

    .prologue
    .line 557
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsVoPSEnabled: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    sget-object v0, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Lcom/sec/epdg/EpdgConstants$TriState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIsWiFiPreferredInRoaming()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 4

    .prologue
    .line 4497
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v1, :cond_0

    .line 4503
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getWifiRoamPrefSetting()I

    move-result v0

    .line 4504
    .local v0, "prefWifi":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsWiFiPreferredInRoaming :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4505
    invoke-static {v0}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v1

    .line 4507
    .end local v0    # "prefWifi":I
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0
.end method

.method private static getIsWifiRssiInPollingZone()Z
    .locals 3

    .prologue
    .line 597
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIsWifiRssiInPollingZone: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    return v0
.end method

.method public static declared-synchronized getIsimState()Z
    .locals 2

    .prologue
    .line 769
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mIsIsimReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getIwlanContextState(Ljava/lang/String;)Lcom/sec/epdg/IWlanState;
    .locals 4
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 4054
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIwlanContextState() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4055
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v1, :cond_1

    .line 4056
    sget-object v1, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4058
    sget-object v1, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v1

    .line 4061
    :goto_1
    return-object v1

    .line 4055
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4061
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getMccmnc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3566
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3567
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getPreviousE911CallCount()I
    .locals 4

    .prologue
    .line 577
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPreviousE911CallCount: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    sget v0, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPreviousNonE911CallCount()I
    .locals 4

    .prologue
    .line 587
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPreviousNonE911CallCount: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    sget v0, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getRegistedNetworkStateChangeReceiver()Z
    .locals 1

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mRegistedNetworkStateChangeReceiver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 7
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 1547
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1548
    .local v3, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    .line 1549
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1555
    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :goto_1
    return-object v3

    .line 1547
    .restart local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1554
    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SM for apnName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1535
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1536
    .local v3, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    .line 1537
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1543
    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :goto_1
    return-object v3

    .line 1535
    .restart local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1542
    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SM for apnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getSimState()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 763
    const-class v2, Lcom/sec/epdg/EpdgService;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getSimState() SimState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SimState2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 764
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    if-eq v3, v0, :cond_1

    :cond_0
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v3

    if-ne v3, v0, :cond_2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit v2

    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getTargetRilNetwork()I
    .locals 4

    .prologue
    .line 6182
    const/16 v0, 0xff

    .line 6183
    .local v0, "mTargetRilNetwork":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current mActiveRat is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6185
    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 6186
    const/16 v0, 0x19

    .line 6192
    :goto_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning mTargetRilNetwork is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6193
    return v0

    .line 6187
    :cond_0
    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 6188
    const/16 v0, 0x21

    goto :goto_0

    .line 6190
    :cond_1
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private getVoWifiStatus()Lcom/sec/epdg/EpdgService$VoWifiStatus;
    .locals 4

    .prologue
    .line 1144
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getVowifiSetting()I

    move-result v2

    .line 1145
    .local v2, "settingState":I
    invoke-static {v2}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v1

    .line 1146
    .local v1, "isWifiCallEnableSetting":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v3, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsSettings;->readVolteProvisionedState()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    .line 1147
    .local v0, "isVolteProvisioned":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_0

    .line 1149
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 1162
    :goto_0
    return-object v3

    .line 1150
    :cond_0
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_2

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-eq v3, v1, :cond_2

    .line 1153
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_1

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    .line 1155
    :cond_2
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-eq v3, v0, :cond_4

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_4

    .line 1158
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_3

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    .line 1162
    :cond_4
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_5

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_5

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0
.end method

.method private getVowifiSetting()I
    .locals 3

    .prologue
    .line 3581
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi_call_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/VoWifiSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getVowifiUserSetting()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 3572
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi_call_user_setting"

    invoke-static {v1, v2, v3}, Lcom/sec/epdg/VoWifiState;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 3573
    .local v0, "usersetting":I
    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getVowifiSetting()I

    move-result v0

    .end local v0    # "usersetting":I
    :cond_0
    return v0
.end method

.method private getWifiPrefSetting()I
    .locals 3

    .prologue
    .line 3595
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi_call_preferred"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/VoWifiSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getWifiRoamPrefSetting()I
    .locals 3

    .prologue
    .line 3599
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi_call_when_roaming"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/VoWifiSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleDefaultSubChange(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 1935
    const-string v2, "[EPDGService]"

    const-string v3, "Inside handleDefaultSubChange: "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    const-string/jumbo v2, "subscription"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1937
    .local v1, "subscription":I
    if-le v1, v4, :cond_0

    const v2, 0x7ffffffb

    if-ge v1, v2, :cond_0

    .line 1938
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDefaultSubChange() subscription is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1940
    .local v0, "phoneID":I
    const-string/jumbo v2, "sys.default.data.phoneid"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDefaultSubChange() phoneID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    sput v1, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    .line 1943
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/throttle/ThrottleController;->onSimChanged()V

    .line 1946
    .end local v0    # "phoneID":I
    :cond_0
    new-instance v2, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1947
    return-void
.end method

.method private handleEpdgSettingsReadEvent()V
    .locals 30

    .prologue
    .line 815
    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-nez v2, :cond_1

    .line 816
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "handleEpdgSettingsReadEvent() mEnableEpdg is false. Stop to init."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->sendWfcEpdgAllowedIntent()V

    .line 820
    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v2, :cond_16

    .line 821
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorXaa()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmoMvno()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgOmadmSettings;->init()V

    .line 825
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/epdg/EpdgRilSharedData;->makeInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    .line 827
    const-string v2, "[EPDGService]"

    const-string v3, "Using EpdgRilAdapter "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgRilAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    .line 830
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgModem;->getInstance()Lcom/sec/epdg/ipc/EpdgModem;

    .line 831
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .line 833
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v7

    sget-object v8, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v8

    sget-object v9, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiIntentDelayTimer()I

    move-result v9

    sget-object v10, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v10}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/epdg/EpdgSettings;->getWifiIpConfigTimer()I

    move-result v10

    invoke-static/range {v2 .. v10}, Lcom/sec/epdg/EpdgTimers;->getInstance(Landroid/os/Handler;IIIIIIII)Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    .line 843
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TepdgLteTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xScanTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 848
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    :goto_1
    sput-object v2, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 855
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->makeEpdgServiceUp()V

    .line 857
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isDataRetryEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataRetryEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/throttle/ThrottleController;->createInstance(Landroid/content/Context;ZZ)V

    .line 861
    const-string v2, "[EPDGService]"

    const-string v3, "Creating the Handover State machines"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_4

    .line 863
    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/IWlanApnContext;->getNewIWlanApnContextInstance(I)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v21

    .line 865
    .local v21, "iwlanApnContext":Lcom/sec/epdg/IWlanApnContext;
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-static {v3, v4, v0, v5, v6}, Lcom/sec/epdg/IPSecDataConnSM;->getNewStateMachineInstance(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v3

    aput-object v3, v2, v17

    .line 862
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 848
    .end local v17    # "i":I
    .end local v21    # "iwlanApnContext":Lcom/sec/epdg/IWlanApnContext;
    :cond_3
    sget-object v2, Lcom/sec/epdg/EpdgService$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    goto/16 :goto_1

    .line 870
    .restart local v17    # "i":I
    :cond_4
    const-string/jumbo v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    .line 872
    .local v13, "b":Landroid/os/IBinder;
    invoke-static {v13}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mNMService:Landroid/os/INetworkManagementService;

    .line 875
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mNMService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_3
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 881
    .local v16, "filter":Landroid/content/IntentFilter;
    new-instance v25, Landroid/content/IntentFilter;

    invoke-direct/range {v25 .. v25}, Landroid/content/IntentFilter;-><init>()V

    .line 882
    .local v25, "periodicDpdFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v11

    .line 883
    .local v11, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 884
    .local v12, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_5
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 885
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/epdg/IWlanApnSetting;

    .line 886
    .local v22, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v26

    .line 887
    .local v26, "remoteUri":Ljava/lang/String;
    if-eqz v26, :cond_5

    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "com.sec.epdg.RETRY_TIMER_EXPIRED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_4

    .line 876
    .end local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v16    # "filter":Landroid/content/IntentFilter;
    .end local v22    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v25    # "periodicDpdFilter":Landroid/content/IntentFilter;
    .end local v26    # "remoteUri":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 877
    .local v14, "e":Landroid/os/RemoteException;
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not register InterfaceObserver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 892
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v16    # "filter":Landroid/content/IntentFilter;
    .restart local v25    # "periodicDpdFilter":Landroid/content/IntentFilter;
    :cond_6
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 893
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mNattKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.sec.epdg.NATT_KEEP_ALIVE_TIMER_EXPIRED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 895
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mWiFiScanIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.sec.epdg.INTENT_WIFI_SCAN_TIMER_EXPIRED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 898
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v2

    if-nez v2, :cond_7

    .line 899
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 901
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 903
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/epdg/EpdgService;->setRegistedNetworkStateChangeReceiver(Z)V

    .line 906
    :cond_7
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 907
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.sec.epdg.INTERNET_KEEP_ALIVE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 909
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "PingerHandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mPingerHandlerThread:Landroid/os/HandlerThread;

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mPingerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 911
    new-instance v2, Lcom/sec/epdg/DnsPinger;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v4, "[EPDGService]"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/epdg/EpdgService;->mPingerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/epdg/DnsPinger;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mDnsPinger:Lcom/sec/epdg/DnsPinger;

    .line 914
    :cond_8
    new-instance v24, Landroid/content/IntentFilter;

    invoke-direct/range {v24 .. v24}, Landroid/content/IntentFilter;-><init>()V

    .line 915
    .local v24, "mWifiStateIntentReceiverFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 916
    const-string v2, "com.samsung.android.net.wifi.SEC_NETWORK_STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 917
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mWifiStateIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 919
    new-instance v23, Landroid/content/IntentFilter;

    invoke-direct/range {v23 .. v23}, Landroid/content/IntentFilter;-><init>()V

    .line 920
    .local v23, "mVoWifiProvisionIntentReceiverFilter":Landroid/content/IntentFilter;
    const-string v2, "6.0"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_IMS_FrameworkVersion"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isNeedSMSProvisioning()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 922
    const-string v2, "[EPDGService]"

    const-string v3, "Add action : INTENT_EPDG_FQDN_NAME"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string/jumbo v2, "com.sec.imsservice.intent.action.EPDG_NAME"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 925
    :cond_9
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mVoWifiProvisionIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 927
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 929
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 931
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 933
    const/4 v2, 0x0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    .line 934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    if-eqz v2, :cond_a

    .line 935
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "registerForCallStateChange..."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mImsCallListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->registerForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_1

    .line 942
    :cond_a
    :goto_5
    sget-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->registerListener()V

    .line 943
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    if-eqz v2, :cond_b

    .line 944
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 946
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_IMS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 949
    :cond_b
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-eqz v2, :cond_c

    .line 950
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mShutdownIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 954
    :cond_c
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v2, :cond_f

    .line 955
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    .line 957
    const-string v2, "[EPDGService]"

    const-string v3, "Parameter is not present, create it with default value"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 961
    :cond_d
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): MDN is set, value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vowifi_mdn"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getVowifiSetting()I

    move-result v2

    if-nez v2, :cond_e

    .line 965
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "vowifi enable parameter is not present, create it with default value"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/epdg/EpdgService;->setVowifiSetting(IZ)V

    .line 968
    :cond_e
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): wifi call enable is set, value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getVowifiSetting()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->resetWifiCallingIfMDNChanged()V

    .line 977
    :cond_f
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_14

    const/16 v18, 0x1

    .line 979
    .local v18, "isAirplaneModeEnabled":Z
    :goto_6
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): isAirplaneModeEnabled is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-static/range {v18 .. v18}, Lcom/sec/epdg/EpdgService;->setIsAirplaneMode(Z)V

    .line 983
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    .line 985
    const-string v2, "[EPDGService]"

    const-string v3, "Parameter is not present, create it with default value"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 989
    :cond_10
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): MDN is set, value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vowifi_mdn"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v2

    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    .line 992
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 993
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    sput v2, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    .line 994
    const-string/jumbo v2, "sys.default.data.phoneid"

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): mDefaultDataPhoneID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDefaultSubID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :cond_11
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    .line 1001
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_SupportWifiCall"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    :goto_7
    sput v2, Lcom/sec/epdg/EpdgService;->mDefaultEnableEpdg:I

    .line 1002
    sget-object v2, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v29

    .line 1003
    .local v29, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1004
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    .line 1006
    :cond_12
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSharePreferredModeViaProperty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1007
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getWifiPrefSetting()I

    move-result v15

    .line 1008
    .local v15, "epdgPrefMode":I
    const-string/jumbo v2, "ril.epdg.preferred.mode"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    .end local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v13    # "b":Landroid/os/IBinder;
    .end local v15    # "epdgPrefMode":I
    .end local v16    # "filter":Landroid/content/IntentFilter;
    .end local v17    # "i":I
    .end local v18    # "isAirplaneModeEnabled":Z
    .end local v23    # "mVoWifiProvisionIntentReceiverFilter":Landroid/content/IntentFilter;
    .end local v24    # "mWifiStateIntentReceiverFilter":Landroid/content/IntentFilter;
    .end local v25    # "periodicDpdFilter":Landroid/content/IntentFilter;
    .end local v29    # "wifi":Landroid/net/NetworkInfo;
    :cond_13
    :goto_8
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    .line 1057
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v27

    .line 1058
    .local v27, "threshold4gRoveIn":I
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v28

    .line 1059
    .local v28, "threshold4gRoveOut":I
    if-eqz v27, :cond_0

    if-eqz v28, :cond_0

    .line 1060
    const-string/jumbo v2, "ril.epdg.ltetrovein"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string/jumbo v2, "ril.epdg.ltetroveout"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 938
    .end local v27    # "threshold4gRoveIn":I
    .end local v28    # "threshold4gRoveOut":I
    .restart local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v13    # "b":Landroid/os/IBinder;
    .restart local v16    # "filter":Landroid/content/IntentFilter;
    .restart local v17    # "i":I
    .restart local v23    # "mVoWifiProvisionIntentReceiverFilter":Landroid/content/IntentFilter;
    .restart local v24    # "mWifiStateIntentReceiverFilter":Landroid/content/IntentFilter;
    .restart local v25    # "periodicDpdFilter":Landroid/content/IntentFilter;
    :catch_1
    move-exception v14

    .line 939
    .local v14, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v14}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto/16 :goto_5

    .line 977
    .end local v14    # "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 1001
    .restart local v18    # "isAirplaneModeEnabled":Z
    :cond_15
    const/4 v2, 0x1

    goto :goto_7

    .line 1011
    .end local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v13    # "b":Landroid/os/IBinder;
    .end local v16    # "filter":Landroid/content/IntentFilter;
    .end local v17    # "i":I
    .end local v18    # "isAirplaneModeEnabled":Z
    .end local v23    # "mVoWifiProvisionIntentReceiverFilter":Landroid/content/IntentFilter;
    .end local v24    # "mWifiStateIntentReceiverFilter":Landroid/content/IntentFilter;
    .end local v25    # "periodicDpdFilter":Landroid/content/IntentFilter;
    :cond_16
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorXaa()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1012
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmoMvno()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1013
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/epdg/EpdgService;->stopEpdgService(Z)V

    goto/16 :goto_0

    .line 1015
    :cond_17
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmoMvno()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v2

    if-nez v2, :cond_18

    .line 1016
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/epdg/EpdgService;->enableReceiver(Z)V

    .line 1019
    :cond_18
    invoke-static {}, Lcom/sec/epdg/EpdgOmadmSettings;->writeToEFSFile()V

    .line 1020
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v7

    sget-object v8, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v8

    sget-object v9, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiIntentDelayTimer()I

    move-result v9

    sget-object v10, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v10}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/epdg/EpdgSettings;->getWifiIpConfigTimer()I

    move-result v10

    invoke-static/range {v2 .. v10}, Lcom/sec/epdg/EpdgTimers;->getInstance(Landroid/os/Handler;IIIIIIII)Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    .line 1031
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TepdgLteTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xScanTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v2, :cond_19

    .line 1036
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->resetWifiCallingIfMDNChanged()V

    .line 1039
    :cond_19
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1040
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 1041
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    .line 1046
    :cond_1a
    :goto_9
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v19

    .line 1048
    .local v19, "isDataRetryEnabled":Z
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v20

    .line 1050
    .local v20, "isThrottlingEnabled":Z
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After db read: isDataRetryEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/throttle/ThrottleController;->onSettingUpdated(ZZ)V

    .line 1053
    sget-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/handover/EpdgImsListener;->onEpdgSettingChanged(Lcom/sec/epdg/EpdgSettings;)V

    goto/16 :goto_8

    .line 1042
    .end local v19    # "isDataRetryEnabled":Z
    .end local v20    # "isThrottlingEnabled":Z
    :cond_1b
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1043
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    goto :goto_9
.end method

.method private handleImsStateChange(I)V
    .locals 5
    .param p1, "action"    # I

    .prologue
    const/4 v4, 0x1

    .line 2079
    const-string v0, "[EPDGService]"

    const-string v1, "Inside handleImsStateChange: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS_STATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    .line 2083
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->ReadEpdgSettingFromIMS()V

    .line 2084
    const/4 v0, 0x0

    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurrentSimImsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2085
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEnableEpdg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-eqz v0, :cond_1

    .line 2088
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2090
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2091
    sput-boolean v4, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    .line 2092
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bIsSimReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsEpdgInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    .line 2099
    :cond_0
    :goto_0
    return-void

    .line 2097
    :cond_1
    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->stopEpdgService(Z)V

    goto :goto_0
.end method

.method private handleMapconChange()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 3783
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    .line 3786
    .local v0, "apnType":Ljava/lang/String;
    sget-object v5, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 3789
    .local v3, "wifi":Landroid/net/NetworkInfo;
    sget-object v5, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "voicecall_type"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3790
    .local v1, "callType":I
    if-nez v1, :cond_0

    move v2, v4

    .line 3792
    .local v2, "isVolteEnabled":Z
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3793
    iput v4, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    .line 3796
    :cond_1
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorDtac()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v2, :cond_5

    .line 3798
    :cond_2
    const-string v5, "[EPDGService]"

    const-string v6, "CellularAvailable & LTE preferred or LTE only, disable wifi profiling"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3799
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3800
    sput-boolean v4, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 3801
    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 3803
    :cond_3
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 3826
    :cond_4
    :goto_0
    return-void

    .line 3806
    :cond_5
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3807
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 3808
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    .line 3822
    :cond_6
    :goto_1
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsWifiOnlyAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3823
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0

    .line 3809
    :cond_7
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3810
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3811
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgService$DnsRetryReason;->MAPCON_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3813
    const-string v4, "[EPDGService]"

    const-string v5, "DNS is successful, start profiling"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3814
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_1

    .line 3816
    :cond_8
    const-string v4, "[EPDGService]"

    const-string v5, "DNS failed for all tries"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3819
    :cond_9
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_1
.end method

.method private handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1899
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1900
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    .line 1901
    .local v1, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-nez v1, :cond_0

    .line 1902
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid SM found for apnName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    .end local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :goto_0
    return-void

    .line 1906
    .restart local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1907
    .local v0, "dataRetryExpired":Landroid/os/Message;
    if-eqz v0, :cond_1

    .line 1908
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "handleRetryTimerExpired: Sending DATA_RETRY_TIMER_EXPIRED to state machine"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    const/16 v2, 0xd

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1911
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1917
    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1918
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->triggerPendingAttachReq()V

    .line 1919
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "trigger pending attach req"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1913
    :cond_1
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleRetryTimerExpired: Unable to obtain message for SM with apnName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1927
    .end local v0    # "dataRetryExpired":Landroid/os/Message;
    .end local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1928
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0

    .line 1930
    :cond_3
    const-string v2, "[EPDGService]"

    const-string v3, "Do not retry L2W handover. SSID changed: "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimInsertChange()V
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 1113
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1114
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->setIsSimCardRemoved(Z)V

    .line 1119
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-eqz v0, :cond_3

    .line 1120
    sget-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 1121
    .local v6, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1122
    iput v3, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    .line 1126
    :goto_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1129
    :cond_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prev imsi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Prev imsi2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Current IMSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Current IMSI2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1131
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1133
    :cond_2
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleController;->onSimChanged()V

    .line 1137
    .end local v6    # "wifi":Landroid/net/NetworkInfo;
    :cond_3
    new-instance v0, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1139
    new-instance v0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    move-object v1, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;ZZZ)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1141
    :cond_4
    return-void

    .line 1124
    .restart local v6    # "wifi":Landroid/net/NetworkInfo;
    :cond_5
    iput v7, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    goto/16 :goto_0
.end method

.method private handleSimRemovedChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1083
    const-string v1, "[EPDGService]"

    const-string v2, "Inside handleSimRemovedChange()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-eqz v1, :cond_2

    .line 1085
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1086
    sget-object v1, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 1087
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 1090
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1093
    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 1094
    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 1096
    :cond_0
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    .line 1097
    iput v3, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    .line 1098
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1099
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 1101
    :cond_1
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-eqz v1, :cond_2

    .line 1103
    :try_start_0
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :goto_0
    sput-boolean v3, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    .line 1110
    :cond_2
    return-void

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "mSimStateChangeReceiver was not registered."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimStateChange(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 1950
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1951
    .local v1, "action":Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange: action is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    const/4 v3, -0x1

    .line 1953
    .local v3, "simSlot":I
    const/4 v5, -0x1

    .line 1954
    .local v5, "subscription":I
    sget-object v6, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1955
    const-string v6, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1957
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->setIsimState(Z)V

    .line 1958
    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v6, :cond_0

    invoke-static {v11}, Lcom/sec/epdg/EpdgService;->setIsSimCardRemoved(Z)V

    .line 1959
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getSimState()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1960
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "handleSimStateChange: SIM is already loaded"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    if-ne v3, v9, :cond_2

    .line 1962
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    .line 1966
    :goto_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    .line 2035
    :cond_1
    :goto_1
    return-void

    .line 1964
    :cond_2
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_0

    .line 1968
    :cond_3
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1969
    const-string/jumbo v6, "ss"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1970
    .local v4, "simState":Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_STATE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    const-string v2, "LOADED"

    .line 1972
    .local v2, "loadedstate":Ljava/lang/String;
    const-string v0, "ABSENT"

    .line 1973
    .local v0, "absentState":Ljava/lang/String;
    if-eqz v4, :cond_d

    .line 1974
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1975
    const-string/jumbo v6, "slot"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1976
    const-string/jumbo v6, "subscription"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1977
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_SLOT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "subscription: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    :cond_4
    const-string v6, "LOADED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1981
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange() Sim State is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v6, :cond_5

    invoke-static {v11}, Lcom/sec/epdg/EpdgService;->setIsSimCardRemoved(Z)V

    .line 1983
    :cond_5
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    if-eqz v6, :cond_8

    .line 1987
    if-ne v3, v9, :cond_6

    .line 1988
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    .line 1992
    :goto_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsimState()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1993
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "handleSimStateChange: Isim is already loaded"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    if-ne v3, v9, :cond_7

    .line 1995
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    .line 1999
    :goto_3
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    goto/16 :goto_1

    .line 1990
    :cond_6
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    goto :goto_2

    .line 1997
    :cond_7
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_3

    .line 2002
    :cond_8
    if-ne v3, v9, :cond_9

    .line 2003
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    .line 2004
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    .line 2009
    :goto_4
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    goto/16 :goto_1

    .line 2006
    :cond_9
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    .line 2007
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_4

    .line 2011
    :cond_a
    const-string v6, "ABSENT"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2012
    if-ne v3, v9, :cond_b

    .line 2013
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    .line 2014
    iput-object v12, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    .line 2019
    :goto_5
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->setIsSimCardRemoved(Z)V

    .line 2020
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2021
    sget v6, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    if-ne v6, v5, :cond_1

    .line 2022
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleSimRemovedChange()V

    goto/16 :goto_1

    .line 2016
    :cond_b
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    .line 2017
    iput-object v12, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_5

    .line 2025
    :cond_c
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleSimRemovedChange()V

    goto/16 :goto_1

    .line 2029
    :cond_d
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange() Sim State is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2033
    .end local v0    # "absentState":Ljava/lang/String;
    .end local v2    # "loadedstate":Ljava/lang/String;
    .end local v4    # "simState":Ljava/lang/String;
    :cond_e
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange: Invalid action received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static declared-synchronized incrementNumOfApnsOnEpdg()V
    .locals 3

    .prologue
    .line 379
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->numOfApnsOnEpdg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/sec/epdg/EpdgService;->MAX_EPDG_CONNECTIONS:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 380
    sget-object v0, Lcom/sec/epdg/EpdgService;->numOfApnsOnEpdg:Ljava/lang/Integer;

    sget-object v0, Lcom/sec/epdg/EpdgService;->numOfApnsOnEpdg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/EpdgService;->numOfApnsOnEpdg:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :cond_0
    monitor-exit v1

    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initAfterimsReady()V
    .locals 5

    .prologue
    .line 3388
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getVoWifiStatus()Lcom/sec/epdg/EpdgService$VoWifiStatus;

    move-result-object v0

    .line 3389
    .local v0, "status":Lcom/sec/epdg/EpdgService$VoWifiStatus;
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    .line 3390
    new-instance v1, Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgService$EpdgSettingObserver;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    .line 3391
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOnUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3392
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v1, :cond_0

    .line 3393
    sget-object v1, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 3395
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3396
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    .line 3397
    :cond_1
    return-void
.end method

.method private initEpdgService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2556
    const-string v0, "[EPDGService]"

    const-string v1, "Enter step 2 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 2560
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 2563
    sget-object v0, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2564
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    if-eqz v0, :cond_0

    .line 2565
    sget-object v0, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2568
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isIndependentEpdg()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2569
    const-string v0, "[EPDGService]"

    const-string v1, "EPDG service was started without ims service."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2570
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2571
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    .line 2585
    :cond_1
    :goto_0
    const-string v0, "[EPDGService]"

    const-string v1, "Exit step 2 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    return-void

    .line 2572
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableIMS"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2573
    const/4 v0, 0x7

    invoke-static {v0, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 2574
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_1

    .line 2575
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "registerForServiceStateChange..."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForServiceStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    .line 2577
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mImsReadyReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.ims.action.onsimloaded"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 2580
    :cond_3
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "imsservice is not installed."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static is1xAvailable()Z
    .locals 2

    .prologue
    .line 667
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 668
    const-string v0, "[EPDGService]"

    const-string v1, "1x is available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/4 v0, 0x1

    .line 672
    :goto_0
    return v0

    .line 671
    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "1x is NOT available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private is2gNetwork(I)Z
    .locals 2
    .param p1, "netType"    # I

    .prologue
    const/4 v0, 0x1

    .line 6006
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    .line 6010
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private is3gNetwork(I)Z
    .locals 1
    .param p1, "netType"    # I

    .prologue
    .line 5995
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    .line 6000
    :cond_0
    const/4 v0, 0x1

    .line 6002
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnyPdnConnectedOverWifi()Z
    .locals 5

    .prologue
    .line 5894
    const/4 v1, 0x0

    .line 5895
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v2, :cond_1

    .line 5896
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 5898
    const/4 v1, 0x1

    .line 5895
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5901
    :cond_1
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAnyPdnConnectedOverWifi: returning result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5902
    return v1
.end method

.method private static isBlockHandOverApn(Ljava/lang/String;)Z
    .locals 5
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1237
    const/4 v1, 0x0

    .line 1238
    .local v1, "result":Z
    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1239
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, "operator":Ljava/lang/String;
    const-string v3, "26201"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "mms"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "xcap"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1244
    :cond_0
    const/4 v1, 0x1

    .line 1247
    :cond_1
    return v1
.end method

.method private isEpdgAvailabilityRecommended()Z
    .locals 3

    .prologue
    .line 5356
    const/4 v0, 0x0

    .line 5357
    .local v0, "result":Z
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_0

    .line 5359
    const-string v1, "[EPDGService]"

    const-string v2, "TEpdg timer running..  wait for it to expire. No timers starting."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5367
    :goto_0
    return v0

    .line 5360
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5361
    const-string v1, "[EPDGService]"

    const-string v2, "OnDemand PDN connection failed. Waiting for the state to be reset."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5362
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5363
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi signal is good from monitor. But wifi is not connected"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5365
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEpdgAvailable()Z
    .locals 2

    .prologue
    .line 1232
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isEpdgConnectionBlocked()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 394
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/sec/epdg/EpdgService;->numOfApnsOnEpdg:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/sec/epdg/EpdgService;->MAX_EPDG_CONNECTIONS:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->isEpdgConnBlockedOnErrorCode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_1

    .line 397
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isHandoverRequiredOnCdmaIndication()Z
    .locals 2

    .prologue
    .line 3707
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIPv6AddressScopeGlobal(Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2506
    const/4 v2, 0x1

    .line 2508
    .local v2, "result":Z
    const-string v4, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isIPv6AddressScopeGlobal: Received address is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Suppressed"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 2512
    .local v1, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCGlobal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCLinkLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCNodeLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCOrgLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCSiteLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2517
    :cond_0
    const/4 v2, 0x0

    .line 2519
    :cond_1
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isIPv6AddressScopeGlobal(): returning result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 2523
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :goto_1
    return v3

    :cond_2
    move-object v3, p1

    .line 2508
    goto :goto_0

    .line 2521
    :catch_0
    move-exception v0

    .line 2522
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v3, "[EPDGService]"

    const-string v4, "Address is not proper ip address"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private declared-synchronized isKeepAliveExpired()Z
    .locals 1

    .prologue
    .line 462
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveExpired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isKeepAliveRunning()Z
    .locals 1

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isOngoingConnectionOverWifi(Ljava/lang/String;)Z
    .locals 8
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5906
    const/4 v3, 0x0

    .line 5907
    .local v3, "result":Z
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v4, v0, v1

    .line 5908
    .local v4, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5909
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 5911
    const/4 v3, 0x1

    .line 5907
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5912
    :cond_1
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 5915
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 5916
    :cond_3
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5919
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 5923
    .end local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_5
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isOngoingConnectionOverWifi: returning result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5924
    return v3
.end method

.method public static isPdnConnectedOverWifi(Ljava/lang/String;)Z
    .locals 8
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5879
    const/4 v3, 0x0

    .line 5880
    .local v3, "result":Z
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 5881
    .local v4, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5882
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 5883
    const/4 v3, 0x1

    .line 5888
    .end local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPdnConnectedOverWifi: returning result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for apnType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5890
    return v3

    .line 5880
    .restart local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isRegistrationRequired(ZZZZZ)Z
    .locals 4
    .param p1, "vowifiChanged"    # Z
    .param p2, "newValueW"    # Z
    .param p3, "voLteChanged"    # Z
    .param p4, "newValueL"    # Z
    .param p5, "vopsOrSsacChanged"    # Z

    .prologue
    const/16 v3, 0xd

    const/4 v1, 0x0

    .line 3665
    move v0, p1

    .line 3667
    .local v0, "bVowifiChanged":Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 3668
    const/4 v0, 0x0

    .line 3672
    :cond_0
    if-eqz v0, :cond_2

    .line 3673
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3675
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. IMS on LTE and VoLTE is on"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3703
    :goto_0
    return v1

    .line 3677
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3679
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. voice is 1x"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3682
    :cond_2
    if-eqz p3, :cond_4

    .line 3683
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 3684
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. No LTE"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3686
    :cond_3
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3687
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. wifi preferred"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3690
    :cond_4
    if-eqz p5, :cond_6

    .line 3691
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 3692
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. No LTE"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3694
    :cond_5
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3695
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. wifi preferred"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3698
    :cond_6
    if-nez v0, :cond_7

    if-nez p3, :cond_7

    if-nez p5, :cond_7

    .line 3699
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. nothing changed"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3702
    :cond_7
    const-string v1, "[EPDGService]"

    const-string v2, "IMS RegistrationRequired - HO delay"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3703
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private isValidAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2430
    const/4 v0, 0x0

    .line 2432
    .local v0, "result":Z
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2434
    :goto_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidAddress: returning result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    return v0

    .line 2432
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidEpdgFqdn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "fqdn"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x3

    .line 1833
    const/4 v3, 0x0

    .line 1834
    .local v3, "result":Z
    const/4 v1, 0x0

    .local v1, "mcc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1836
    .local v2, "mnc":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 1837
    const-string v5, "[EPDGService]"

    const-string/jumbo v6, "isValidEpdgFqdn: fqdn is empty in the OMACP message"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 1861
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 1841
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 1842
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1843
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1853
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "epdg.epc.mnc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mcc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pub.3gppnetwork.org"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1856
    .local v0, "mFqdn":Ljava/lang/StringBuilder;
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ePDG FQDN is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1859
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isValidEpdgFqdn: returning result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 1861
    .restart local v4    # "result":I
    goto/16 :goto_0

    .line 1844
    .end local v0    # "mFqdn":Ljava/lang/StringBuilder;
    .end local v4    # "result":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 1845
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1846
    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1848
    :cond_2
    const-string v5, "[EPDGService]"

    const-string/jumbo v6, "isValidEpdgFqdn: operator numeric has wrong length"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 1849
    .restart local v4    # "result":I
    goto/16 :goto_0
.end method

.method public static isVideoEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 4

    .prologue
    .line 4854
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->readCurrentVideoSettingState()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    .line 4855
    .local v0, "videoSetting":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_0

    .line 4856
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    .line 4859
    :goto_0
    return-object v1

    .line 4858
    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videoSetting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4859
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0
.end method

.method public static isVoWifiEnabled()Z
    .locals 2

    .prologue
    .line 4839
    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVolteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 4

    .prologue
    .line 4843
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->readCurrentVolteSettingState()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    .line 4844
    .local v0, "volteSetting":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_0

    .line 4845
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    .line 4849
    :goto_0
    return-object v1

    .line 4848
    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "volteSetting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4849
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0
.end method

.method public static isW2LRecommended(I)Z
    .locals 5
    .param p0, "rilCid"    # I

    .prologue
    .line 6409
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, p0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 6410
    .local v0, "apnType":Ljava/lang/String;
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isW2LRecommended: rilCid is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apnType is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6412
    const/4 v1, 0x0

    .line 6413
    .local v1, "result":Z
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->isBlockHandOverApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6414
    :cond_0
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "isW2LRecommended: null apnType"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6425
    :goto_0
    return v1

    .line 6415
    :cond_1
    const-string v2, "cbs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "mms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6417
    :cond_2
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, p0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getIsW2LRequested()Z

    move-result v1

    .line 6418
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isW2LRecommended: result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6419
    :cond_3
    sget-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6420
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isW2LRecommended: VoWifi Session Connected result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6422
    :cond_4
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isWifiCallingEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4828
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v4, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v4, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v3, v4, :cond_3

    :cond_0
    move v0, v2

    .line 4830
    .local v0, "bVoWifi":Z
    :goto_0
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_4

    :cond_1
    move v2, v0

    .line 4834
    :cond_2
    :goto_1
    return v2

    .end local v0    # "bVoWifi":Z
    :cond_3
    move v0, v1

    .line 4828
    goto :goto_0

    .line 4834
    .restart local v0    # "bVoWifi":Z
    :cond_4
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-eq v3, v4, :cond_2

    move v2, v1

    goto :goto_1
.end method

.method private isWifiConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4492
    iget v1, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private movePdnFromWifi()V
    .locals 6

    .prologue
    .line 5865
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "movePdnFromWifi()"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5866
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v1, v3, :cond_1

    .line 5867
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 5869
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 5870
    .local v0, "apnType":Ljava/lang/String;
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "movePdnFromWifi, apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5871
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 5872
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 5873
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 5866
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5876
    :cond_1
    return-void
.end method

.method private moveToLteBasedOnMapcon()V
    .locals 4

    .prologue
    .line 1294
    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v2, :cond_1

    .line 1302
    :cond_0
    return-void

    .line 1296
    :cond_1
    const/4 v1, 0x1

    .local v1, "cid":I
    :goto_0
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-gt v1, v2, :cond_0

    .line 1297
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 1298
    .local v0, "apnType":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1299
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 1296
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private notifyL2WHandoverResult(ZLjava/lang/String;)V
    .locals 6
    .param p1, "result"    # Z
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 6399
    if-eqz p2, :cond_0

    .line 6400
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v5

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/mapcon/MapconTable;->notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V

    .line 6406
    :goto_0
    return-void

    .line 6404
    :cond_0
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "notifyL2WHandoverResult(): APN is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifySimChangedEvent()V
    .locals 2

    .prologue
    .line 2185
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v0, :cond_0

    .line 2186
    const-string v0, "[EPDGService]"

    const-string v1, "Epdg service is not yet initialized, calling epdg initialization"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService;->bootCompleted()V

    .line 2191
    :goto_0
    return-void

    .line 2189
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleSimInsertChange()V

    goto :goto_0
.end method

.method private notifyW2LHandoverResult(ZLjava/lang/String;)V
    .locals 6
    .param p1, "result"    # Z
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 6390
    if-eqz p2, :cond_0

    .line 6391
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v5

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/mapcon/MapconTable;->notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V

    .line 6397
    :goto_0
    return-void

    .line 6395
    :cond_0
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "notifyW2LHandoverResult(): APN is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDbAccessCompleted()V
    .locals 2

    .prologue
    .line 804
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 805
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 806
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 807
    return-void
.end method

.method private onInternetKeepAliveTimerExpiry()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v2, 0xd

    .line 1251
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive: onInternetKeepAliveTimerExpiry()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setKeepAliveRunning(Z)V

    .line 1253
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    if-ne v0, v4, :cond_1

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v0, v2, :cond_1

    .line 1255
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:Timer=Expired,EPDG=AVAILABLE,RAT=LTE so Send keep alive packet+start the timer again"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->pingAsyncInternet()V

    .line 1258
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1259
    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    if-ne v0, v4, :cond_2

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-eq v0, v2, :cond_2

    .line 1261
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:Timer=Expired,EPDG=AVAILABLE,RAT!=LTE so Start keep alive timer again"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    goto :goto_0

    .line 1264
    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    if-ne v0, v3, :cond_0

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v0, v2, :cond_0

    .line 1266
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:Timer=Expired,EPDG=UNAVAILABLE,RAT=LTE so Set keep alive expired flag"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-direct {p0, v3}, Lcom/sec/epdg/EpdgService;->setKeepAliveExpired(Z)V

    goto :goto_0
.end method

.method private onNetworkStatusChanged()V
    .locals 11

    .prologue
    const/16 v10, 0xd

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 6024
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6025
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "onNetworkStatusChanged: No Sim card. Ignore all notifications"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6179
    :cond_0
    :goto_0
    return-void

    .line 6030
    :cond_1
    sget v3, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    .line 6036
    .local v3, "mExistingActiveRat":I
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "onNetworkStatusChanged"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6037
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6038
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    sget v7, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v5

    .line 6039
    .local v5, "voiceNetType":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    sget v7, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v2

    .line 6044
    .local v2, "dataNetType":I
    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 6045
    move v4, v5

    .line 6047
    .local v4, "netType":I
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6048
    const-string/jumbo v6, "ril.epdg.handover.enable"

    const-string/jumbo v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6056
    :goto_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    .line 6057
    .local v1, "currentCellular":Z
    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_6

    .line 6058
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService;->bootCompleted()V

    goto :goto_0

    .line 6041
    .end local v1    # "currentCellular":Z
    .end local v2    # "dataNetType":I
    .end local v4    # "netType":I
    .end local v5    # "voiceNetType":I
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v5

    .line 6042
    .restart local v5    # "voiceNetType":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    .restart local v2    # "dataNetType":I
    goto :goto_1

    .line 6050
    .restart local v4    # "netType":I
    :cond_3
    const-string/jumbo v7, "ril.epdg.handover.enable"

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "true"

    :goto_3
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v6, "false"

    goto :goto_3

    .line 6054
    .end local v4    # "netType":I
    :cond_5
    move v4, v2

    .restart local v4    # "netType":I
    goto :goto_2

    .line 6062
    .restart local v1    # "currentCellular":Z
    :cond_6
    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v6, :cond_7

    .line 6063
    const-string v6, "[EPDGService]"

    const-string v7, "Epdg service is not yet initialized, ignore onNetworkStatusChanged"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6067
    :cond_7
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v6, :cond_8

    .line 6068
    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    if-eq v6, v1, :cond_8

    .line 6069
    if-nez v1, :cond_13

    .line 6070
    const-string v6, "[EPDGService]"

    const-string v7, "Celluler is not available, disable Wifi thresholds if Idle"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6071
    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v6, v7, :cond_8

    .line 6072
    invoke-static {v8}, Lcom/sec/epdg/EpdgService;->setIsRssiDisabledForProfiling(Z)V

    .line 6073
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 6074
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 6075
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    .line 6091
    :cond_8
    :goto_4
    sget v6, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v4, v6, :cond_9

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    if-eq v6, v1, :cond_12

    .line 6092
    :cond_9
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    .line 6093
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    .line 6097
    .local v0, "apnType":Ljava/lang/String;
    if-eqz v4, :cond_a

    if-nez v1, :cond_17

    .line 6098
    :cond_a
    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v7, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v6, v7}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 6099
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 6100
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 6101
    const-string v6, "[EPDGService]"

    const-string v7, "OoS & LTE preferred, enable wifi profiling"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6102
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    .line 6131
    :cond_b
    :goto_5
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v6

    sget-boolean v7, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    if-eq v6, v7, :cond_c

    .line 6132
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v6

    sput-boolean v6, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    .line 6133
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v6, :cond_c

    .line 6134
    sget-object v6, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v6}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 6137
    :cond_c
    const-string v6, "ATT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getVowifiSetting()I

    move-result v6

    if-eq v6, v8, :cond_e

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    if-eqz v6, :cond_f

    if-nez v5, :cond_d

    if-eqz v2, :cond_f

    :cond_d
    if-ne v1, v8, :cond_f

    :cond_e
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v6

    if-eqz v6, :cond_f

    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v6

    if-nez v6, :cond_f

    .line 6141
    const-string v6, "[EPDGService]"

    const-string v7, "ATT IR94,RAN is available, enable wifi profiling"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6142
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    .line 6143
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    .line 6145
    :cond_f
    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z

    move-result v6

    if-eqz v6, :cond_10

    sget v6, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-direct {p0, v6}, Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 6149
    :cond_10
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Active Rat Changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6154
    sput v4, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    .line 6155
    const-wide/16 v6, 0x3e8

    invoke-direct {p0, v6, v7, v4}, Lcom/sec/epdg/EpdgService;->startTimerForPdnXfer(JI)V

    .line 6156
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    if-eqz v6, :cond_11

    .line 6157
    sget v6, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v6, v10, :cond_1a

    .line 6158
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartLteRunning()Z

    move-result v6

    if-nez v6, :cond_19

    .line 6159
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mLteOn:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 6173
    :cond_11
    :goto_6
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isWiFiScanStart()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 6174
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicWiFiScan()V

    .line 6177
    .end local v0    # "apnType":Ljava/lang/String;
    :cond_12
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    .line 6178
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mCellularAvailable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6079
    :cond_13
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsRssiDisabledForProfiling()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 6080
    const-string v6, "[EPDGService]"

    const-string v7, "Celluler is available, enable Wifi thresholds"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6081
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->setIsRssiDisabledForProfiling(Z)V

    .line 6082
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 6083
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 6084
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto/16 :goto_4

    .line 6104
    .restart local v0    # "apnType":Ljava/lang/String;
    :cond_14
    const-string v6, "ATT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 6105
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getVowifiSetting()I

    move-result v6

    if-nez v6, :cond_b

    if-nez v5, :cond_b

    if-nez v2, :cond_b

    .line 6107
    const-string v6, "[EPDGService]"

    const-string v7, "ATT IR94, no RAN, disable Wifi Call"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6108
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 6109
    sput-boolean v8, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 6110
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 6112
    :cond_15
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 6113
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 6114
    sput-boolean v8, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    goto/16 :goto_5

    .line 6117
    :cond_16
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 6118
    const-string v6, "[EPDGService]"

    const-string v7, "Rat us unknown, enable wifi profiling"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6119
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    goto/16 :goto_5

    .line 6121
    :cond_17
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v6, 0x12

    if-eq v4, v6, :cond_b

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 6124
    const-string v6, "[EPDGService]"

    const-string v7, "CellularAvailable & LTE preferred, disable wifi profiling"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6125
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 6126
    sput-boolean v8, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 6127
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 6129
    :cond_18
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    goto/16 :goto_5

    .line 6161
    :cond_19
    const-string v6, "[EPDGService]"

    const-string v7, "When LTE becomes available, smart lte is running, so in connected mode, smart lte decides the lte availability based upon signal strength"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 6165
    :cond_1a
    if-ne v3, v10, :cond_11

    .line 6166
    const-string v6, "[EPDGService]"

    const-string v7, "RAT change from LTE to other RAT, calling LTE off"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6167
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 6168
    sget-object v6, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {v6}, Lcom/sec/epdg/EpdgService;->setIsVoPSEnabled(Lcom/sec/epdg/EpdgConstants$TriState;)V

    .line 6170
    :cond_1b
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mLteOff:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_6
.end method

.method private onServiceStatusChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 6014
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6015
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "onServiceStatusChanged: No Sim card. Ignore all notifications"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6022
    :cond_0
    :goto_0
    return-void

    .line 6018
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onNetworkStatusChanged()V

    .line 6019
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6020
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->checkVopsStatus(Landroid/telephony/ServiceState;)V

    goto :goto_0
.end method

.method private onSystemSelectTimerFinish()V
    .locals 4

    .prologue
    .line 4026
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4027
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi connected when TEpdg timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4028
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4032
    const-string v0, "[EPDGService]"

    const-string v1, "Smart Wifi already running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4034
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOn:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->islteToWifiHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 4051
    :goto_0
    return-void

    .line 4035
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4036
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->TEPDG_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4039
    const-string v0, "[EPDGService]"

    const-string v1, "DNS is successful, adding routes"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4040
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    .line 4042
    :cond_1
    const-string v0, "[EPDGService]"

    const-string v1, "DNS failed for all tries"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4045
    :cond_2
    const-string v0, "[EPDGService]"

    const-string v1, "Epdg FQDN is already resolved, received duplicate wifi connect"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4049
    :cond_3
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi not connected when TEpdg timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVoWifiProvisioningStateChanged(I)V
    .locals 1
    .param p1, "isProvisioned"    # I

    .prologue
    .line 3624
    if-nez p1, :cond_0

    .line 3628
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->resetVowifiMdnCache(Landroid/content/Context;)V

    .line 3629
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setVoWifiRoamingPreference(I)V

    .line 3630
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/EpdgService;->setVowifiSetting(IZ)V

    .line 3632
    :cond_0
    return-void
.end method

.method private onVolteProvisioningStateChanged(I)V
    .locals 2
    .param p1, "isProvisioned"    # I

    .prologue
    const/4 v1, 0x1

    .line 3607
    if-nez p1, :cond_0

    .line 3611
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->resetVowifiMdnCache(Landroid/content/Context;)V

    .line 3612
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setVoWifiRoamingPreference(I)V

    .line 3613
    invoke-direct {p0, p1, v1}, Lcom/sec/epdg/EpdgService;->setVowifiSetting(IZ)V

    .line 3621
    :goto_0
    return-void

    .line 3619
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getVowifiSetting()I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_1
.end method

.method private onVopsStatusChanged(I)V
    .locals 7
    .param p1, "vops_enabled"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 3376
    const/4 v6, 0x0

    .line 3377
    .local v6, "needToStartTimer":Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsVoPSEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    sget-object v2, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-eq v0, v2, :cond_0

    .line 3378
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    .line 3379
    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3380
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 3383
    :cond_0
    if-ne p1, v5, :cond_1

    sget-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    :goto_0
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsVoPSEnabled(Lcom/sec/epdg/EpdgConstants$TriState;)V

    .line 3384
    invoke-direct {p0, p1, v6}, Lcom/sec/epdg/EpdgService;->MoveToBasedOnVopsOrSsac(IZ)V

    .line 3385
    return-void

    .line 3383
    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0
.end method

.method private onWifiConnected()V
    .locals 3

    .prologue
    .line 5052
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5054
    const-string v1, "[EPDGService]"

    const-string v2, "IPv6 support is enabled and wifi ip config timer is running, no need to perform wifi connected. It will happen after config timer expiry"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5084
    :goto_0
    return-void

    .line 5058
    :cond_0
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi is Connected"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5059
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_1

    .line 5061
    const-string v1, "[EPDGService]"

    const-string v2, "TEpdg timer running"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5062
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5063
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_RECONNECT:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5065
    const-string v1, "[EPDGService]"

    const-string v2, "DNS is successful, start profiling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5066
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    .line 5067
    const/4 v1, 0x0

    sput v1, Lcom/sec/epdg/EpdgService;->mSetupFailureCount:I

    goto :goto_0

    .line 5069
    :cond_2
    const-string v1, "[EPDGService]"

    const-string v2, "DNS failed for all tries"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5070
    iget v1, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    .line 5071
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 5072
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x36

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5073
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 5076
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    sget-object v1, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5077
    const-string v1, "[EPDGService]"

    const-string v2, "DNS resolved, start WiFi profiling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5078
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    .line 5080
    :cond_4
    const-string v1, "[EPDGService]"

    const-string v2, "Epdg FQDN is already resolved, received duplicate wifi connect"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onWifiGoodEnough()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5141
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-interface {v2, v0}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    .line 5142
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->updateCpEpdgHoThreshold(Z)V

    .line 5143
    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->sendEpdgAvailableIntent(ZZ)V

    .line 5144
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->sendWifiStatusChangedNotification(Z)V

    .line 5145
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v2, :cond_3

    .line 5146
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    .line 5151
    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5152
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isKeepAliveExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    .line 5154
    const-string v0, "[EPDGService]"

    const-string v2, "InternetKeepAlive:onWifiGoodEnough:RAT=LTE,EPDG=AVAILABLE so send keep alive packet"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5156
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setKeepAliveExpired(Z)V

    .line 5157
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->pingAsyncInternet()V

    .line 5158
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:onWifiGoodEnough:Starting the keep alive timer for Internet PDN"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5160
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    .line 5162
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isKeepAliveRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5163
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:onWifiGoodEnough:Starting the keep alive timer for Internet PDN"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5165
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    .line 5168
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 5146
    goto :goto_0

    .line 5148
    :cond_3
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    goto :goto_1
.end method

.method private performDnsIfPossible()V
    .locals 3

    .prologue
    .line 2528
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2529
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_1

    .line 2530
    const-string v0, "[EPDGService]"

    const-string v1, "check AP is allowed for EPDG service first"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    new-instance v0, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2549
    :cond_0
    :goto_0
    return-void

    .line 2532
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2535
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2536
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_IPTYPE_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2538
    const-string v0, "[EPDGService]"

    const-string v1, "DNS is successful, start profiling"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2539
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    .line 2542
    :cond_2
    const-string v0, "[EPDGService]"

    const-string v1, "DNS fail in all attempts"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2545
    :cond_3
    const-string v0, "[EPDGService]"

    const-string v1, "Configured ip type is already ipv4v6, no need to perform DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pingAsyncInternet()V
    .locals 5

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDnsPinger:Lcom/sec/epdg/DnsPinger;

    if-nez v0, :cond_0

    .line 1274
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "mDnsPigner not intialized"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    :goto_0
    return-void

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentNetwork:Landroid/net/Network;

    if-nez v0, :cond_1

    .line 1278
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "mCurrentNetwork is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1281
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDnsPinger:Lcom/sec/epdg/DnsPinger;

    const-string v1, "8.8.8.8"

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCurrentNetwork:Landroid/net/Network;

    const/16 v3, 0xbb8

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/epdg/DnsPinger;->pingDnsAsync(Ljava/net/InetAddress;Landroid/net/Network;II)I

    goto :goto_0
.end method

.method private printEpdgSettingsThreshold()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWifiRssiA :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiRoveInWifiOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInWifiOnly()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiRoveOutWifiOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveOutWifiOnly()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiRoveInVoice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteRsrp1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteRsrp2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteRsrp3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static resetDataDependency()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 5943
    invoke-static {v0, v0}, Lcom/sec/epdg/EpdgService;->setDataDependency(ZZ)V

    .line 5944
    return-void
.end method

.method public static declared-synchronized resetIsEpdgConnBlocked()V
    .locals 2

    .prologue
    .line 391
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isEpdgConnBlockedOnErrorCode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/epdg/EpdgService;->isEpdgConnBlockedOnErrorCode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :cond_0
    monitor-exit v1

    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static resetVowifiMdnCache(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 810
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vowifi_mdn"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 812
    return-void
.end method

.method private resetWifiCallingIfMDNChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1066
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, "lineNum":Ljava/lang/String;
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, "mdn":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1069
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1070
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->resetVowifiMdnCache(Landroid/content/Context;)V

    .line 1071
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getVowifiSetting()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1072
    const-string v2, "[EPDGService]"

    const-string v3, "Turning off vowifi as SIM mdn and vowifi mdn parameter is different"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-direct {p0, v4, v4}, Lcom/sec/epdg/EpdgService;->setVowifiSetting(IZ)V

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    const-string v2, "[EPDGService]"

    const-string v3, "Vowifi is already turned off"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    .locals 11
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xd

    const/4 v9, -0x1

    .line 5788
    const/4 v3, 0x0

    .line 5789
    .local v3, "result":Z
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->printEpdgSettingsThreshold()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v8}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->printProfilingState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "TimerStatus :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5790
    if-nez p1, :cond_0

    .line 5791
    const-string v6, "[EPDGService]"

    const-string v7, "L2W handover failed : (null apnType)"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    .line 5851
    :goto_0
    return v6

    .line 5795
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5796
    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-eq v6, v7, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v6

    if-ne v6, v10, :cond_1

    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v6, v7, :cond_1

    .line 5800
    const-string v6, "[EPDGService]"

    const-string v7, "Block L2W as registration is not done"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    .line 5801
    goto :goto_0

    .line 5804
    :cond_1
    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v7, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v6, v7}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5805
    const-string v6, "[EPDGService]"

    const-string v7, "1x scanning is on, wait for TEPDG1XSCANNING"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    .line 5806
    goto :goto_0

    .line 5810
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorORO()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5811
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 5812
    .local v0, "callState":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v5

    .line 5813
    .local v5, "voiceNetType":I
    if-eqz v0, :cond_3

    if-eq v5, v10, :cond_3

    .line 5815
    const-string v6, "[EPDGService]"

    const-string v7, "Block L2W on CS calling"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    .line 5816
    goto :goto_0

    .line 5820
    .end local v0    # "callState":I
    .end local v5    # "voiceNetType":I
    :cond_3
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v2

    .line 5826
    .local v2, "networkType":I
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retryL2WHandoverIfRequired(): apnType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " networkType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5828
    if-eq v9, v2, :cond_7

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 5829
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/sec/epdg/mapcon/PolicyManager;->isL2WRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5831
    sget-object v6, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v7, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne v6, v7, :cond_4

    .line 5832
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "delay L2W handover until regi-done"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5833
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 5836
    :cond_4
    :try_start_0
    const-string v6, "[EPDGService]"

    const-string v7, "Firing L2W handover"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5837
    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->startHandoverLteToWifi(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 5838
    .local v4, "ret":I
    if-eq v4, v9, :cond_5

    .line 5839
    const/4 v3, 0x1

    .end local v4    # "ret":I
    :cond_5
    :goto_1
    move v6, v3

    .line 5851
    goto/16 :goto_0

    .line 5841
    :catch_0
    move-exception v1

    .line 5842
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "L2W Handover not required."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5845
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    const-string v6, "[EPDGService]"

    const-string v7, "L2W is not recommended"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5848
    :cond_7
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Do not retry L2W handover. apnType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " networkType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 5735
    const/4 v2, 0x0

    .line 5736
    .local v2, "result":Z
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->printEpdgSettingsThreshold()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->printProfilingState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TimerStatus :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5737
    if-nez p1, :cond_0

    .line 5738
    const-string v4, "[EPDGService]"

    const-string v5, "W2L handover failed : (null apnType)"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5784
    :goto_0
    return v4

    .line 5741
    :cond_0
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5742
    const-string v4, "[EPDGService]"

    const-string v5, "TEPDGLTE timer running, W2L not recommended"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5743
    goto :goto_0

    .line 5746
    :cond_1
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5747
    const-string v4, "[EPDGService]"

    const-string v5, "VoWIFI session is connected. So skip W2L Handover."

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5748
    goto :goto_0

    .line 5751
    :cond_2
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    .line 5752
    .local v1, "networkType":I
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5753
    .local v3, "rule":Ljava/lang/String;
    const/4 v4, -0x1

    if-eq v4, v1, :cond_7

    .line 5754
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5755
    sget-object v4, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v5, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne v4, v5, :cond_3

    .line 5756
    const-string v4, "[EPDGService]"

    const-string/jumbo v5, "delay W2L handover until regi-done"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5757
    const/4 v4, 0x1

    goto :goto_0

    .line 5759
    :cond_3
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 5761
    const-string v4, "[EPDGService]"

    const-string v5, "W2L recommended but LTE is not available, send cdma availability to IMS"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5762
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V

    .line 5763
    invoke-direct {p0, v7}, Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V

    .line 5766
    :cond_4
    :try_start_0
    const-string v4, "[EPDGService]"

    const-string v5, "Firing W2L handover"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5767
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5768
    const/4 v2, 0x1

    :goto_1
    move v4, v2

    .line 5784
    goto/16 :goto_0

    .line 5769
    :catch_0
    move-exception v0

    .line 5770
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "W2L handover not required."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5773
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5774
    const-string v4, "[EPDGService]"

    const-string v5, "W2L not recommended, still send cdma availability to IMS"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5775
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V

    .line 5776
    invoke-direct {p0, v7}, Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V

    .line 5778
    :cond_6
    const-string v4, "[EPDGService]"

    const-string v5, "W2L handover not recommended"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5781
    :cond_7
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not retry W2L handover. apnType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " networkType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendEpdgAvailableIntent(ZZ)V
    .locals 5
    .param p1, "videoHandoverAllow"    # Z
    .param p2, "forced"    # Z

    .prologue
    .line 5209
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendEpdgAvailableIntent: videoHandoverAllow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5211
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5212
    .local v1, "wifiIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 5213
    .local v0, "videoHandover":Z
    if-eqz p2, :cond_0

    .line 5214
    move v0, p1

    .line 5218
    :goto_0
    const-string/jumbo v2, "com.sec.epdg.EPDG_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5219
    const-string v2, "EPDG_AVAILABLE"

    invoke-static {v2}, Lcom/sec/epdg/EpdgDumpState;->dumpLastEpdgState(Ljava/lang/String;)V

    .line 5220
    const-string v2, "VIDEO_HANDOVER_ALLOW"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5221
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send EPDG Available broadcast with video handover: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5222
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 5223
    return-void

    .line 5216
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private sendEpdgDeregisterBroadcastIfRequired(Z)Z
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5571
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-nez v3, :cond_1

    .line 5587
    :cond_0
    :goto_0
    return v1

    .line 5574
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-eq v3, v4, :cond_3

    :cond_2
    if-eqz p1, :cond_0

    .line 5576
    :cond_3
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "sendEpdgDeregisterBroadcast: send deregi"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5577
    if-eqz p1, :cond_4

    .line 5578
    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    .line 5582
    :goto_1
    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    .line 5583
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.epdgservice.EPDG_DEREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5584
    .local v0, "deregiIntent":Landroid/content/Intent;
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    move v1, v2

    .line 5585
    goto :goto_0

    .line 5580
    .end local v0    # "deregiIntent":Landroid/content/Intent;
    :cond_4
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    goto :goto_1
.end method

.method private sendEpdgRegisterBroadcast(Z)V
    .locals 4
    .param p1, "cdmaAvailability"    # Z

    .prologue
    .line 5557
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v1, :cond_0

    .line 5568
    :goto_0
    return-void

    .line 5560
    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendEpdgRegisterBroadcast with cdmaAvailability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5561
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_1

    .line 5562
    const-string v1, "[EPDGService]"

    const-string v2, "Call in progress, dont send cdmaAvailability to IMS"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5565
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.epdgservice.EPDG_REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5566
    .local v0, "epdgRegisterIntent":Landroid/content/Intent;
    const-string v1, "cdmaAvailability"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5567
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static sendIpsecConnFailIntent(Ljava/lang/String;Lcom/sec/epdg/IWlanError;I)V
    .locals 3
    .param p0, "apnType"    # Ljava/lang/String;
    .param p1, "error"    # Lcom/sec/epdg/IWlanError;
    .param p2, "count"    # I

    .prologue
    .line 3725
    if-eqz p1, :cond_0

    .line 3726
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3727
    .local v0, "infoToIMSCII":Landroid/content/Intent;
    const-string v1, "apntype"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3728
    const-string/jumbo v1, "ikeerror"

    invoke-static {p1}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->getWFCErrorCode(Lcom/sec/epdg/IWlanError;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3729
    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3730
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3732
    .end local v0    # "infoToIMSCII":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    .locals 4
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "destMsg"    # Landroid/os/Message;

    .prologue
    .line 3829
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3830
    .local v0, "cid":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 3831
    const-string v1, "[IPSEC->EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event received for cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3833
    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 3834
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3835
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3839
    :goto_0
    return-void

    .line 3837
    :cond_0
    const-string v1, "[IPSEC->EPDGService]"

    const-string v2, "Event received for invalid cid neglect it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendIpsecConnResultToTestApp(II)V
    .locals 15
    .param p1, "cid"    # I
    .param p2, "event"    # I

    .prologue
    .line 3842
    const/4 v0, 0x0

    .local v0, "apnType":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3843
    .local v10, "ipsecEvent":Ljava/lang/String;
    const/4 v11, -0x1

    .line 3844
    .local v11, "networkType":I
    sget-object v12, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v13, p1, -0x1

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 3845
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "apnName after getIwlanApnNameFromCid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3846
    if-eqz v0, :cond_0

    .line 3847
    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v11

    .line 3848
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "networkType returned:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3851
    :cond_0
    if-eqz v0, :cond_1

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 3852
    :cond_1
    const-string v10, "Unknown"

    .line 3853
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " apnName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ipsecEvent:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3858
    :goto_0
    sparse-switch v11, :sswitch_data_0

    .line 3925
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Illegal NetworkType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3927
    :cond_2
    :goto_1
    return-void

    .line 3855
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/sec/epdg/IWlanEnum;->toTestAppEventStatus(I)Ljava/lang/String;

    move-result-object v10

    .line 3856
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ipsecEvent returned to UI:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3860
    :sswitch_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_INTERNET"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3862
    .local v5, "infoToUiForInternet":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v5, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3863
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v5, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3864
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v5}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 3867
    .end local v5    # "infoToUiForInternet":Landroid/content/Intent;
    :sswitch_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_IMS"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3869
    .local v4, "infoToUiForIms":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v4, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3870
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v4, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3871
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v4}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 3874
    .end local v4    # "infoToUiForIms":Landroid/content/Intent;
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_APP"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3876
    .local v2, "infoToUiForApp":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v2, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3877
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v2, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3878
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v2}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 3881
    .end local v2    # "infoToUiForApp":Landroid/content/Intent;
    :sswitch_3
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3883
    .local v6, "infoToUiForMms":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v6, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3884
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v6, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3885
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v6}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3886
    const-string/jumbo v12, "mms"

    invoke-static {v12}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "xcap"

    invoke-static {v13}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3888
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3890
    .local v9, "infoToUiForXcap1":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3891
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v9, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3892
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v9}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3896
    .end local v6    # "infoToUiForMms":Landroid/content/Intent;
    .end local v9    # "infoToUiForXcap1":Landroid/content/Intent;
    :sswitch_4
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3898
    .local v8, "infoToUiForXcap":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3899
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3900
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3901
    const-string/jumbo v12, "xcap"

    invoke-static {v12}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "mms"

    invoke-static {v13}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3903
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3905
    .local v7, "infoToUiForMms1":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v7, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3906
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v7, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3907
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v7}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3911
    .end local v7    # "infoToUiForMms1":Landroid/content/Intent;
    .end local v8    # "infoToUiForXcap":Landroid/content/Intent;
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_EPDN"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3913
    .local v3, "infoToUiForEpdn":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v3, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3914
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v3, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3915
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v3}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3918
    .end local v3    # "infoToUiForEpdn":Landroid/content/Intent;
    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_ADMIN"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3920
    .local v1, "infoToUiForAdmin":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3921
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v1, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3922
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v1}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3858
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xf -> :sswitch_5
        0x17 -> :sswitch_6
        0x1b -> :sswitch_4
    .end sparse-switch
.end method

.method private sendWifiDelayRequest(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 5614
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendWifiDelayRequest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5615
    if-nez p1, :cond_0

    .line 5616
    sput-boolean v3, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    .line 5618
    :cond_0
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-eqz v2, :cond_2

    .line 5619
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 5620
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 5621
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x51

    iput v2, v0, Landroid/os/Message;->what:I

    .line 5622
    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 5623
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5624
    if-eqz p1, :cond_1

    const/16 v3, 0x3e8

    :cond_1
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 5628
    :goto_1
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 5630
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    return-void

    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    move v2, v3

    .line 5622
    goto :goto_0

    .line 5626
    :cond_4
    if-eqz p1, :cond_5

    const/16 v3, 0xfa0

    :cond_5
    iput v3, v0, Landroid/os/Message;->arg2:I

    goto :goto_1
.end method

.method private sendWifiStatusChangedNotification(Z)V
    .locals 12
    .param p1, "isWifiConnected"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 5675
    const/4 v6, 0x0

    .line 5676
    .local v6, "newSsid":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 5677
    sget-object v7, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 5680
    :cond_0
    const/4 v3, 0x0

    .line 5681
    .local v3, "isSsidChanged":Z
    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    if-nez v7, :cond_3

    if-eqz v6, :cond_3

    .line 5683
    :cond_2
    const-string v7, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SSID changed. Old Ssid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", New SSID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 5685
    const/4 v3, 0x1

    .line 5688
    :cond_3
    const-string v7, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wifi connected: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Ssid changed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5692
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Lcom/sec/epdg/throttle/ThrottleController;->handleWifiStatusChanged(ZLjava/lang/String;)V

    .line 5695
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTelstra()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5696
    sget-object v7, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/epdg/IPSecAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/IPSecAdapter;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sec/epdg/IPSecAdapter;->handleWifiStatusChangedIPsec(Z)V

    .line 5699
    :cond_4
    const-string v7, "[EPDGService]"

    const-string v10, "Send Wifi status changed event to State Machines"

    invoke-static {v7, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5700
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_8

    aget-object v1, v0, v2

    .line 5701
    .local v1, "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .line 5702
    .local v5, "msg":Landroid/os/Message;
    const/16 v7, 0xa

    iput v7, v5, Landroid/os/Message;->what:I

    .line 5703
    if-eqz p1, :cond_6

    move v7, v8

    :goto_1
    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 5704
    if-eqz p1, :cond_5

    .line 5705
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5706
    if-eqz v3, :cond_7

    move v7, v8

    :goto_2
    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 5708
    :cond_5
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 5700
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    move v7, v9

    .line 5703
    goto :goto_1

    :cond_7
    move v7, v9

    .line 5706
    goto :goto_2

    .line 5710
    .end local v1    # "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_8
    if-eqz p1, :cond_9

    .line 5713
    sget-boolean v7, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    if-eqz v7, :cond_a

    .line 5714
    sput-boolean v8, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    .line 5718
    :goto_3
    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    .line 5720
    :cond_9
    return-void

    .line 5716
    :cond_a
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_3
.end method

.method private static setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "ipType"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 637
    sput-object p0, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 638
    return-void
.end method

.method private static setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "ipType"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 627
    sput-object p0, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 628
    return-void
.end method

.method private static setDataDependency(ZZ)V
    .locals 3
    .param p0, "value"    # Z
    .param p1, "force"    # Z

    .prologue
    .line 5947
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Dependency from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5950
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p0, :cond_1

    .line 5953
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5959
    :cond_1
    return-void
.end method

.method private static setDataDependencyIfRequired()V
    .locals 4

    .prologue
    .line 5985
    sget-object v1, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 5987
    .local v0, "mobileNetInfo":Landroid/net/NetworkInfo;
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current NetworkInfo for Mobile Internet PDN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5989
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5990
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->setDataDependencyIfRequired(I)V

    .line 5992
    :cond_0
    return-void
.end method

.method private static setDataDependencyIfRequired(I)V
    .locals 5
    .param p0, "ratType"    # I

    .prologue
    .line 5962
    sget-object v2, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 5964
    .local v1, "wifi":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5965
    const/4 v0, 0x1

    .line 5966
    .local v0, "dataDependency":Z
    sparse-switch p0, :sswitch_data_0

    .line 5974
    const/4 v0, 0x0

    .line 5977
    :sswitch_0
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Dependency : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5980
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgService;->setDataDependency(ZZ)V

    .line 5982
    .end local v0    # "dataDependency":Z
    :cond_0
    return-void

    .line 5966
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private setEpdgTemporaryBlocked(Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V
    .locals 5
    .param p1, "reason"    # Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .prologue
    .line 4760
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-nez v2, :cond_0

    .line 4777
    :goto_0
    return-void

    .line 4763
    :cond_0
    sput-object p1, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4764
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v3, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v2, v3, :cond_2

    .line 4766
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "country_detector"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 4767
    .local v1, "countryDetector":Landroid/location/CountryDetector;
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 4769
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    .line 4770
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blacklist country code :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4771
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    if-nez v2, :cond_1

    .line 4772
    new-instance v2, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    invoke-direct {v2, p0}, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    .line 4774
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 4776
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "countryDetector":Landroid/location/CountryDetector;
    :cond_2
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEpdgTemporaryBlocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4769
    .restart local v0    # "country":Landroid/location/Country;
    .restart local v1    # "countryDetector":Landroid/location/CountryDetector;
    :cond_3
    const-string v2, "UNKNOWN"

    goto :goto_1
.end method

.method private setHasPendingCdmaIndication(Z)V
    .locals 1
    .param p1, "isRequiredToSendCdmaIndication"    # Z

    .prologue
    .line 3711
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v0, :cond_0

    .line 3715
    :goto_0
    return-void

    .line 3714
    :cond_0
    sput-boolean p1, Lcom/sec/epdg/EpdgService;->mIsRequiredToSendCdmaIndication:Z

    goto :goto_0
.end method

.method private setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .prologue
    .line 3636
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v1, Lcom/sec/epdg/EpdgService$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-eq v0, v1, :cond_0

    .line 3637
    sput-object p1, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 3638
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHoDelay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3639
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne p1, v0, :cond_2

    .line 3640
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3642
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3643
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 3661
    :cond_0
    :goto_0
    return-void

    .line 3647
    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3648
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 3651
    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->REGISTRATION_FINISHED:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne p1, v0, :cond_0

    .line 3652
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3653
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3654
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0

    .line 3655
    :cond_3
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3656
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3657
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static declared-synchronized setIsAirplaneMode(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 550
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z

    .line 551
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    sget-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsVoPSEnabled(Lcom/sec/epdg/EpdgConstants$TriState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    :cond_0
    monitor-exit v1

    return-void

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setIsCsAvailable(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 744
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsCsAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    monitor-exit v0

    return-void

    .line 744
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setIsEpdgAvailable(Z)V
    .locals 4
    .param p0, "value"    # Z

    .prologue
    .line 748
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsEpdgAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string/jumbo v2, "ril.epdg.available"

    if-eqz p0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    monitor-exit v1

    return-void

    .line 749
    :cond_0
    :try_start_1
    const-string/jumbo v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setIsEpdgConnBlocked()V
    .locals 2

    .prologue
    .line 388
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isEpdgConnBlockedOnErrorCode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/epdg/EpdgService;->isEpdgConnBlockedOnErrorCode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_0
    monitor-exit v1

    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setIsLteAvailable(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 724
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsLteAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    monitor-exit v0

    return-void

    .line 724
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static setIsOnDemandApnConnectionFailed(Z)V
    .locals 0
    .param p0, "isOnDemandApnConnectionFailedStatus"    # Z

    .prologue
    .line 1290
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->isOnDemandApnConnectionFailed:Z

    .line 1291
    return-void
.end method

.method private static setIsRssiDisabledForProfiling(Z)V
    .locals 3
    .param p0, "value"    # Z

    .prologue
    .line 612
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsRssiDisabledForProfiling: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    .line 614
    return-void
.end method

.method private declared-synchronized setIsScreenOn(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    monitor-exit p0

    return-void

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static setIsSimCardRemoved(Z)V
    .locals 3
    .param p0, "state"    # Z

    .prologue
    .line 783
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsSimCardRemoved: state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsSimCardRemoved:Z

    .line 785
    return-void
.end method

.method private static declared-synchronized setIsSsacVoiceEnabled(Z)V
    .locals 4
    .param p0, "value"    # Z

    .prologue
    .line 572
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsSsacVoiceEnabled: value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    monitor-exit v1

    return-void

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setIsVoPSEnabled(Lcom/sec/epdg/EpdgConstants$TriState;)V
    .locals 4
    .param p0, "value"    # Lcom/sec/epdg/EpdgConstants$TriState;

    .prologue
    .line 562
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsVoPSEnabled: value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    sput-object p0, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Lcom/sec/epdg/EpdgConstants$TriState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    monitor-exit v1

    return-void

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setIsWifiRssiInPollingZone(Z)V
    .locals 3
    .param p0, "value"    # Z

    .prologue
    .line 602
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsWifiRssiInPollingZone: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    .line 604
    return-void
.end method

.method private static declared-synchronized setIsimState(Z)V
    .locals 4
    .param p0, "state"    # Z

    .prologue
    .line 773
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsimState: state is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsIsimReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    monitor-exit v1

    return-void

    .line 773
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setKeepAliveExpired(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveExpired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setKeepAliveRunning(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    monitor-exit p0

    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V
    .locals 17
    .param p1, "reason"    # Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    .prologue
    .line 4535
    sget-object v12, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 4536
    .local v12, "status":Lcom/sec/epdg/EpdgService$VoWifiStatus;
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_2

    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE_IWLAN_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 4540
    .local v11, "mcPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :goto_0
    sget-object v10, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 4541
    .local v10, "emPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_3

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4542
    .local v2, "appPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    :goto_1
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4543
    .local v3, "appPrfOrd2":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_4

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_CELLULAR_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4544
    .local v4, "appPrfOrd3":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    :goto_2
    const/4 v9, 0x0

    .line 4545
    .local v9, "bootupChangeRequired":Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVolteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v7

    .line 4547
    .local v7, "bVolteTriState":Lcom/sec/epdg/EpdgConstants$TriState;
    const-string v13, "ATT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isVoWifiWave2()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_0

    .line 4548
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "update app policy for ATT wave1"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4549
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "imsvoicecall"

    sget-object v16, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    invoke-virtual/range {v13 .. v16}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4553
    :cond_0
    sget-object v13, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v13, v7, :cond_5

    .line 4654
    :cond_1
    :goto_3
    return-void

    .line 4536
    .end local v2    # "appPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .end local v3    # "appPrfOrd2":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .end local v4    # "appPrfOrd3":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .end local v7    # "bVolteTriState":Lcom/sec/epdg/EpdgConstants$TriState;
    .end local v9    # "bootupChangeRequired":Z
    .end local v10    # "emPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .end local v11    # "mcPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :cond_2
    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto :goto_0

    .line 4541
    .restart local v10    # "emPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .restart local v11    # "mcPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :cond_3
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_1

    .line 4543
    .restart local v2    # "appPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .restart local v3    # "appPrfOrd2":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    :cond_4
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_2

    .line 4557
    .restart local v4    # "appPrfOrd3":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .restart local v7    # "bVolteTriState":Lcom/sec/epdg/EpdgConstants$TriState;
    .restart local v9    # "bootupChangeRequired":Z
    :cond_5
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v13, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v5

    .line 4559
    .local v5, "bRoaming":Z
    :goto_4
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v13, :cond_7

    sget-object v13, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getIsWiFiPreferredInRoaming()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v14

    if-ne v13, v14, :cond_7

    const/4 v8, 0x1

    .line 4561
    .local v8, "bWifiPf":Z
    :goto_5
    sget-object v13, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v13, v7, :cond_8

    const/4 v6, 0x1

    .line 4564
    .local v6, "bVolteState":Z
    :goto_6
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_9

    if-nez v5, :cond_9

    .line 4565
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable - policy changed but it is home"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 4557
    .end local v5    # "bRoaming":Z
    .end local v6    # "bVolteState":Z
    .end local v8    # "bWifiPf":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 4559
    .restart local v5    # "bRoaming":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .line 4561
    .restart local v8    # "bWifiPf":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 4568
    .restart local v6    # "bVolteState":Z
    :cond_9
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v13, :cond_a

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_a

    .line 4573
    if-eqz v5, :cond_13

    if-eqz v8, :cond_13

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v13

    const-string/jumbo v14, "ims"

    invoke-virtual {v13, v14}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 4575
    const/4 v9, 0x1

    .line 4576
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable - need update :power down at home and boot up in roaming area and WIFI preferred"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4591
    :cond_a
    :goto_7
    const-string v13, "[EPDGService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPolicyTable- VoWIFI :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "roaming : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "reason :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Volte status: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4594
    sget-object v13, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v13, v12, :cond_1d

    .line 4595
    if-eqz v6, :cond_18

    .line 4596
    if-eqz v8, :cond_16

    if-eqz v5, :cond_16

    .line 4597
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_15

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4608
    :cond_b
    :goto_8
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "imsvoicecall"

    invoke-virtual {v13, v14, v15, v4}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4611
    if-eqz v8, :cond_c

    if-eqz v5, :cond_c

    .line 4612
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1b

    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN_LTE_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 4613
    :goto_9
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1c

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4616
    :cond_c
    :goto_a
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "idle"

    invoke-virtual {v13, v14, v15, v2}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4618
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-eq v0, v13, :cond_d

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_e

    .line 4621
    :cond_d
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "imsvideovoicecall"

    invoke-virtual {v13, v14, v15, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4643
    :cond_e
    :goto_b
    if-nez v9, :cond_11

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_f

    if-nez v5, :cond_11

    :cond_f
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_10

    if-nez v5, :cond_11

    :cond_10
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_12

    if-eqz v8, :cond_12

    .line 4647
    :cond_11
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "ims"

    invoke-virtual {v13, v14, v15, v11}, Lcom/sec/epdg/mapcon/PolicyManager;->updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    .line 4650
    :cond_12
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 4651
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "emergency"

    invoke-virtual {v13, v14, v15, v10}, Lcom/sec/epdg/mapcon/PolicyManager;->updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    goto/16 :goto_3

    .line 4580
    :cond_13
    if-nez v5, :cond_14

    if-eqz v8, :cond_14

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v13

    const-string/jumbo v14, "ims"

    invoke-virtual {v13, v14}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 4582
    const/4 v9, 0x1

    .line 4583
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable - need update :power down in roaming + WIFI perferred and boot up in home area"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4587
    :cond_14
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable- skip "

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4597
    :cond_15
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto/16 :goto_8

    .line 4599
    :cond_16
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_17

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_c
    goto/16 :goto_8

    :cond_17
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_c

    .line 4602
    :cond_18
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_19

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4603
    :goto_d
    if-eqz v8, :cond_b

    if-eqz v5, :cond_b

    .line 4604
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1a

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_e
    goto/16 :goto_8

    .line 4602
    :cond_19
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_d

    .line 4604
    :cond_1a
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_e

    .line 4612
    :cond_1b
    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto/16 :goto_9

    .line 4613
    :cond_1c
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto/16 :goto_a

    .line 4626
    :cond_1d
    sget-object v13, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v13, v12, :cond_e

    .line 4628
    if-eqz v6, :cond_1f

    .line 4629
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1e

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4633
    :goto_f
    const/4 v13, 0x2

    new-array v1, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "imsvoicecall"

    aput-object v14, v1, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "imsvideovoicecall"

    aput-object v14, v1, v13

    .line 4636
    .local v1, "appList":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14, v1, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4638
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "idle"

    invoke-virtual {v13, v14, v15, v2}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4641
    sget-object v10, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto/16 :goto_b

    .line 4629
    .end local v1    # "appList":[Ljava/lang/String;
    :cond_1e
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_f

    .line 4631
    :cond_1f
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_20

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_10
    goto :goto_f

    :cond_20
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_10
.end method

.method public static declared-synchronized setPreviousE911CallCount(I)V
    .locals 4
    .param p0, "count"    # I

    .prologue
    .line 582
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviousE911CallCount: count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    sput p0, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    monitor-exit v1

    return-void

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPreviousNonE911CallCount(I)V
    .locals 4
    .param p0, "count"    # I

    .prologue
    .line 592
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviousNonE911CallCount: count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    sput p0, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    monitor-exit v1

    return-void

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setRegistedNetworkStateChangeReceiver(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 478
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mRegistedNetworkStateChangeReceiver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    monitor-exit p0

    return-void

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setVoWifiRoamingPreference(I)V
    .locals 2
    .param p1, "pref"    # I

    .prologue
    .line 3603
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi_call_when_roaming"

    invoke-static {v0, v1, p1}, Lcom/sec/epdg/VoWifiSettings;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3604
    return-void
.end method

.method private setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V
    .locals 6
    .param p1, "status"    # Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .prologue
    const/4 v5, 0x0

    .line 4659
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne p1, v2, :cond_5

    .line 4660
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v2, :cond_4

    .line 4661
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sput-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 4662
    sget-object v2, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 4674
    :cond_0
    :goto_0
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWiFiCallEnabled is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4678
    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v2, v3, :cond_6

    .line 4679
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4680
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->IsNeedDeregi()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4681
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4683
    :cond_1
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 4686
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 4688
    invoke-static {v5}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    .line 4690
    invoke-direct {p0, v5}, Lcom/sec/epdg/EpdgService;->enableReceiver(Z)V

    .line 4727
    :cond_3
    :goto_1
    return-void

    .line 4664
    :cond_4
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sput-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    .line 4667
    :cond_5
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne p1, v2, :cond_0

    .line 4669
    sput-object p1, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 4670
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v2, :cond_0

    .line 4671
    sget-object v2, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    goto :goto_0

    .line 4692
    :cond_6
    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v2, v3, :cond_8

    .line 4697
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4698
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto :goto_1

    .line 4701
    :cond_7
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto :goto_1

    .line 4704
    :cond_8
    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v2, v3, :cond_3

    .line 4706
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v2, :cond_b

    .line 4707
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4708
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v0

    .line 4709
    .local v0, "BEST_RSRP":I
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v1

    .line 4710
    .local v1, "LOW_RSRP":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4711
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v2

    if-nez v2, :cond_9

    .line 4712
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v1

    .line 4714
    :cond_9
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto/16 :goto_1

    .line 4716
    .end local v0    # "BEST_RSRP":I
    .end local v1    # "LOW_RSRP":I
    :cond_a
    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    if-eqz v2, :cond_3

    .line 4717
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    .line 4718
    sput-boolean v5, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    goto/16 :goto_1

    .line 4723
    :cond_b
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    .line 4724
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->enableReceiver(Z)V

    goto/16 :goto_1
.end method

.method private setVowifiSetting(IZ)V
    .locals 3
    .param p1, "enable"    # I
    .param p2, "sendIntent"    # Z

    .prologue
    .line 3585
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi_call_enable"

    invoke-static {v1, v2, p1}, Lcom/sec/epdg/VoWifiSettings;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3587
    if-eqz p2, :cond_0

    .line 3588
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_wifi_call_enable_broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3589
    .local v0, "wifiCall":Landroid/content/Intent;
    const-string/jumbo v1, "wifi_call_enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3590
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3592
    .end local v0    # "wifiCall":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private setVowifiUserSetting(I)V
    .locals 2
    .param p1, "enable"    # I

    .prologue
    .line 3577
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi_call_user_setting"

    invoke-static {v0, v1, p1}, Lcom/sec/epdg/VoWifiState;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3578
    return-void
.end method

.method private startAlarmForInternetKeepAlive(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    .line 5025
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAlarmForInternetKeepAlive: Updating the alarm with delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5028
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setKeepAliveRunning(Z)V

    .line 5029
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 5031
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.epdg.INTERNET_KEEP_ALIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mInternetKeepAlive:Landroid/content/Intent;

    .line 5032
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mInternetKeepAlive:Landroid/content/Intent;

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    .line 5034
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 5037
    return-void
.end method

.method private startHandOverWifiToLte(I)I
    .locals 4
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4450
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Wifi RSSI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4451
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved Wifi RSSI Level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getSavedWifiRssiLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4453
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;

    invoke-direct {v1, p0, p1}, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    new-instance v2, Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;

    invoke-direct {v2, p0, p1}, Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiTolteHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 4457
    const/4 v0, 0x0

    return v0
.end method

.method private startHandoverLteToWifi(I)I
    .locals 8
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 4382
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v4

    if-ne v7, v4, :cond_0

    .line 4384
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot trigger L2W HO: (EPDG NOT AVAILABLE) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4446
    :goto_0
    return v2

    .line 4391
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4392
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot trigger L2W HO: (WIFI NOT CONNECTED) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4397
    :cond_1
    sget-object v4, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4398
    .local v0, "nwkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4399
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot trigger L2W HO: (PDN Not active on other RAT) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " networkInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4407
    :cond_2
    sget-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v4, :cond_7

    .line 4408
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v4, v5, :cond_9

    .line 4409
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call status is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " check for LTE availability"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4410
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_8

    .line 4412
    const-string v4, "[EPDGService]"

    const-string v5, "LTE is available, now check for wifi strength"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4413
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v5, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v1

    .line 4414
    .local v1, "rssi":I
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v4, v5, :cond_3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v4, v5, :cond_4

    :cond_3
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 4417
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Voice call and wifi rssi is below handover threshold, no need to do L2W handover. rssi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handover rssi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4420
    sget-object v3, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startL2WHandoverProfiling(I)V

    goto/16 :goto_0

    .line 4422
    :cond_4
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v4, v5, :cond_5

    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v4, v5, :cond_6

    :cond_5
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 4425
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video call and wifi rssi is below handover threshold, no need to do L2W handover. rssi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " handover rssi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4428
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startL2WHandoverProfiling(I)V

    .line 4429
    invoke-direct {p0, v3, v7}, Lcom/sec/epdg/EpdgService;->sendEpdgAvailableIntent(ZZ)V

    goto/16 :goto_0

    .line 4432
    :cond_6
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifi rssi is good for handover. rssi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wifi rssi A: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4442
    .end local v1    # "rssi":I
    :cond_7
    :goto_1
    const-string v2, "[HANDOFF]"

    const-string v4, "Starting HandOver To Wifi"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4443
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    new-instance v4, Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;

    invoke-direct {v4, p0, p1}, Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    new-instance v5, Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;

    invoke-direct {v5, p0, p1}, Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    invoke-virtual {v2, p1, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->islteToWifiHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    move v2, v3

    .line 4446
    goto/16 :goto_0

    .line 4436
    :cond_8
    const-string v2, "[EPDGService]"

    const-string v4, "Connected mode but LTE is lost, perform L2W handover"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4439
    :cond_9
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call status is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v5}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " perform L2W handover"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    .locals 10
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 3487
    const/4 v4, 0x0

    .line 3488
    .local v4, "retVal":Z
    if-nez p1, :cond_0

    .line 3489
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPeriodicDpdIfNecessary: apnType is null, returning: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 3515
    .end local v4    # "retVal":Z
    .local v5, "retVal":I
    :goto_0
    return v5

    .line 3492
    .end local v5    # "retVal":I
    .restart local v4    # "retVal":Z
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->isConnectedModeDpdAllow()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3493
    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3494
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 3495
    .local v6, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3496
    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getPeriodicDpdTimer()I

    move-result v1

    .line 3497
    .local v1, "dpdTimer":I
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPeriodicDpdIfNecessary: dpd time is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3498
    if-lez v1, :cond_2

    .line 3499
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v8

    mul-int/lit16 v9, v1, 0x3e8

    invoke-virtual {v7, v8, v9}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicDpd(Ljava/lang/String;I)V

    .line 3501
    const/4 v4, 0x1

    .line 3514
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "dpdTimer":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    :goto_2
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPeriodicDpdIfNecessary: returning: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 3515
    .restart local v5    # "retVal":I
    goto :goto_0

    .line 3503
    .end local v5    # "retVal":I
    .restart local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .restart local v1    # "dpdTimer":I
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v6    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    const-string v7, "[EPDGService]"

    const-string/jumbo v8, "startPeriodicDpdIfNecessary: dpd timer is 0"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3494
    .end local v1    # "dpdTimer":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3509
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_4
    const-string v7, "[EPDGService]"

    const-string/jumbo v8, "startPeriodicDpdIfNecessary: PDN is not connected on wifi"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3512
    :cond_5
    const-string v7, "[EPDGService]"

    const-string/jumbo v8, "startPeriodicDpdIfNecessary: DPD is allowed in connected mode"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private declared-synchronized startTEPDGLTETimerIfRequired()V
    .locals 2

    .prologue
    .line 3447
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3452
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3454
    :cond_0
    monitor-exit p0

    return-void

    .line 3447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startTimerForPdnXfer(JI)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "networkType"    # I

    .prologue
    .line 5928
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTimerForPdnXfer: Updating the alarm with delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5930
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    if-eqz v0, :cond_0

    .line 5931
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5933
    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-direct {v0, p0, p3}, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    .line 5934
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5935
    return-void
.end method

.method private startTimerOrPerformDns(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2439
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_3

    .line 2440
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2441
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is none and ipv4 address is now configured, wait for ipv6 address configuration"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2445
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 2503
    :cond_0
    :goto_0
    return-void

    .line 2446
    :cond_1
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2448
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is none and ipv6 address is now configured, wait for ipv4 address configuration"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2452
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 2454
    :cond_2
    const-string v0, "[EPDGService]"

    const-string v1, "Link local ipv6 address is configured, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2456
    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_7

    .line 2457
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2459
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2460
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2461
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type was ipv4 and now ipv6 address is configured, stopping the timer and starting DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2464
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2466
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    goto :goto_0

    .line 2468
    :cond_4
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi ip config timer is already expired when ipv6 address configured"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->performDnsIfPossible()V

    goto :goto_0

    .line 2472
    :cond_5
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2473
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v4, again v4 address is received, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2476
    :cond_6
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v4, link local ipv6 address is configured, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2479
    :cond_7
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V6:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_0

    .line 2480
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2481
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2482
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2483
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type was ipv6 and now ipv4 address is configured, stopping the timer and starting DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2486
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2488
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    goto/16 :goto_0

    .line 2490
    :cond_8
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi ip config timer is already expired when ipv4 address configured"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->performDnsIfPossible()V

    goto/16 :goto_0

    .line 2494
    :cond_9
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2496
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v6, again v6 address is received, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2499
    :cond_a
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v6, link local ipv6 address is configured, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private startTimersIfNeeded()V
    .locals 3

    .prologue
    .line 4464
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    if-nez v1, :cond_3

    .line 4466
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->isWifiSettingOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4468
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi Setting on"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4469
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->shouldTEpdgTimerBeStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4470
    const-string v1, "[EPDGService]"

    const-string v2, "IMS PDN connected when wifi off"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4471
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 4472
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "XFA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4473
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 4487
    .end local v0    # "salesCode":Ljava/lang/String;
    :goto_0
    return-void

    .line 4475
    .restart local v0    # "salesCode":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 4478
    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_1
    const-string v1, "[EPDGService]"

    const-string v2, "IMS PDN not connected when wifi off"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4481
    :cond_2
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi Setting off"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4484
    :cond_3
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "isNotRequireTimer is true. reset it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4485
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    goto :goto_0
.end method

.method private startWifiProfiling()V
    .locals 26

    .prologue
    .line 5087
    const/16 v25, 0x0

    .line 5088
    .local v25, "disableRSSI":Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v24

    .line 5091
    .local v24, "apnType":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5092
    const-string v1, "[EPDGService]"

    const-string v2, "Don\'t start wifi profiling.MAPCON is LTE"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5138
    :goto_0
    return-void

    .line 5095
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    .line 5098
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsWifiOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    if-eqz v1, :cond_1

    .line 5100
    const/16 v25, 0x1

    .line 5102
    :cond_1
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v1, :cond_2

    .line 5103
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsRssiDisabledForProfiling()Z

    move-result v25

    .line 5105
    :cond_2
    const-string v1, "FTM"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ORO"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5106
    :cond_3
    const/16 v25, 0x0

    .line 5109
    :cond_4
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startWifiProfiling() disableRSSI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5112
    if-eqz v25, :cond_8

    const/16 v13, -0x64

    .line 5113
    .local v13, "goodDB":I
    :goto_1
    if-eqz v25, :cond_9

    const/16 v14, -0x64

    .line 5114
    .local v14, "badDB":I
    :goto_2
    if-eqz v25, :cond_a

    const/16 v15, -0x64

    .line 5115
    .local v15, "thresholdDB":I
    :goto_3
    if-eqz v25, :cond_b

    const/16 v16, -0x64

    .line 5116
    .local v16, "goodDBWifiOnly":I
    :goto_4
    if-eqz v25, :cond_c

    const/16 v17, -0x64

    .line 5117
    .local v17, "badDBWifiOnly":I
    :goto_5
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v18

    .line 5118
    .local v18, "BEST_RSRP":I
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v19

    .line 5119
    .local v19, "LOWEST_RSRP":I
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v20

    .line 5120
    .local v20, "cdmaRssi":I
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v23

    .line 5123
    .local v23, "isCsPrefMode":Z
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->isHandoverRequiredOnCdmaIndication()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5124
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 5126
    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5127
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_6

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_7

    .line 5129
    :cond_6
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v18

    .line 5131
    :cond_7
    sget-object v1, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->getEpdgServerIp()Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mWifiOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/epdg/EpdgService;->mLteOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/epdg/EpdgService;->mLteOff:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/epdg/EpdgService;->mCdmaOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/epdg/EpdgService;->mCdmaOff:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService;->mL2WHandoverProfilingOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/epdg/EpdgService;->mWifiRssiIntentReceived:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/epdg/EpdgService;->mPollingRssiOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/epdg/EpdgService;->mPollingRssiOff:Ljava/lang/Runnable;

    sget-object v21, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/EpdgSettings;->getPktLossPercent()I

    move-result v21

    sget-object v22, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgSettings;->getSmartWifiTimer()I

    move-result v22

    invoke-virtual/range {v1 .. v23}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startProfiling(Ljava/net/InetAddress;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;IIIIIIIIIIZ)V

    goto/16 :goto_0

    .line 5112
    .end local v13    # "goodDB":I
    .end local v14    # "badDB":I
    .end local v15    # "thresholdDB":I
    .end local v16    # "goodDBWifiOnly":I
    .end local v17    # "badDBWifiOnly":I
    .end local v18    # "BEST_RSRP":I
    .end local v19    # "LOWEST_RSRP":I
    .end local v20    # "cdmaRssi":I
    .end local v23    # "isCsPrefMode":Z
    :cond_8
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v13

    goto/16 :goto_1

    .line 5113
    .restart local v13    # "goodDB":I
    :cond_9
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v14

    goto/16 :goto_2

    .line 5114
    .restart local v14    # "badDB":I
    :cond_a
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v15

    goto/16 :goto_3

    .line 5115
    .restart local v15    # "thresholdDB":I
    :cond_b
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInWifiOnly()I

    move-result v16

    goto/16 :goto_4

    .line 5116
    .restart local v16    # "goodDBWifiOnly":I
    :cond_c
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveOutWifiOnly()I

    move-result v17

    goto/16 :goto_5
.end method

.method private static startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V
    .locals 3
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 3457
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startWifiRssiIntentDelayTimerIfRequired: apn type is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3458
    if-nez p0, :cond_1

    .line 3471
    :cond_0
    :goto_0
    return-void

    .line 3461
    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiIntentDelayTimer()I

    move-result v0

    if-lez v0, :cond_0

    .line 3462
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3463
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3464
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "startWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3465
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 3467
    :cond_2
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "startWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer already running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopEpdgService(Z)V
    .locals 4
    .param p1, "forever"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2102
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "stopEpdgService"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-eqz v1, :cond_1

    .line 2104
    const-string v1, "[EPDGService]"

    const-string v2, "WifiCall is disabled"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    const-string v1, "EVR"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2106
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2110
    :goto_0
    sget-object v1, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 2111
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 2114
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    .line 2115
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2117
    :try_start_0
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2118
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setRegistedNetworkStateChangeReceiver(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2123
    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    .line 2124
    sput-boolean v3, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    .line 2128
    :cond_1
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 2130
    :try_start_1
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2134
    :goto_2
    sput-boolean v3, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    .line 2136
    :cond_2
    return-void

    .line 2108
    :cond_3
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2119
    :catch_0
    move-exception v0

    .line 2120
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "mNetworkStateChangeReceiver was not registered."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2131
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 2132
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "mSimStateChangeReceiver was not registered."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private stopInternetKeepAlive()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5040
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "stopInternetKeepAlive()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5041
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setKeepAliveRunning(Z)V

    .line 5042
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 5043
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 5045
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5046
    iput-object v3, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    .line 5047
    iput-object v3, p0, Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;

    .line 5049
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method private stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    .locals 9
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 3519
    const/4 v3, 0x0

    .line 3520
    .local v3, "retVal":Z
    if-nez p1, :cond_0

    .line 3521
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopPeriodicDpdIfNecessary: apnType is null, returning: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 3542
    .end local v3    # "retVal":Z
    .local v4, "retVal":I
    :goto_0
    return v4

    .line 3524
    .end local v4    # "retVal":I
    .restart local v3    # "retVal":Z
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->isConnectedModeDpdAllow()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3525
    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3526
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 3527
    .local v5, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3528
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "stopPeriodicDpdIfNecessary: removing periodic dpd intent"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/epdg/EpdgPeriodicDpd;->removePeriodicDpdPendingIntent(Ljava/lang/String;)V

    .line 3531
    const/4 v3, 0x1

    .line 3541
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    :goto_2
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopPeriodicDpdIfNecessary: returning: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 3542
    .restart local v4    # "retVal":I
    goto :goto_0

    .line 3526
    .end local v4    # "retVal":I
    .restart local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v5    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3536
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_3
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "stopPeriodicDpdIfNecessary: PDN is not connected on wifi"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3539
    :cond_4
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "stopPeriodicDpdIfNecessary: DPD is allowed in connected mode"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static stopWifiRssiIntentDelayTimerIfRequired()V
    .locals 2

    .prologue
    .line 3474
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiIntentDelayTimer()I

    move-result v0

    if-lez v0, :cond_0

    .line 3475
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3476
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "stopWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer is running, stop it!"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3478
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3484
    :cond_0
    :goto_0
    return-void

    .line 3480
    :cond_1
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "stopWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer already stopped"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCpEpdgHoThreshold(Z)V
    .locals 9
    .param p1, "isAvailable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5178
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveIn()I

    move-result v2

    .line 5179
    .local v2, "threshold4gRoveIn":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveOut()I

    move-result v3

    .line 5180
    .local v3, "threshold4gRoveOut":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold3gRoveIn()I

    move-result v4

    .line 5181
    .local v4, "threshold3gRoveIn":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold3gRoveOut()I

    move-result v5

    .line 5182
    .local v5, "threshold3gRoveOut":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold2gRoveIn()I

    move-result v6

    .line 5183
    .local v6, "threshold2gRoveIn":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold2gRoveOut()I

    move-result v7

    .line 5185
    .local v7, "threshold2gRoveOut":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-nez v7, :cond_2

    .line 5188
    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "Do not support CP threshold function"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5206
    :cond_1
    :goto_0
    return-void

    .line 5192
    :cond_2
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    const-string/jumbo v8, "ims"

    invoke-virtual {v0, v8}, Lcom/sec/epdg/mapcon/MapconTable;->isVoWifiPref(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5193
    const-string v0, "[EPDGService]"

    const-string v1, "Cellular preferred mode set threshold"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5194
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    if-eq v0, p1, :cond_1

    .line 5195
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    move v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgHoThreshold(ZIIIIII)V

    .line 5197
    sput-boolean p1, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    goto :goto_0

    .line 5200
    :cond_3
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    .line 5201
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-interface/range {v0 .. v7}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgHoThreshold(ZIIIIII)V

    .line 5203
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    goto :goto_0
.end method

.method private updateMapconTable(Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 9
    .param p1, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 6429
    if-nez p1, :cond_0

    .line 6430
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "prefered Order is NULL"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6447
    :goto_0
    return-void

    .line 6434
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 6435
    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 6436
    .local v2, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6437
    .local v5, "updateApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6438
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/IWlanApnSetting;

    .line 6439
    .local v4, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v1

    .line 6440
    .local v1, "apn":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 6441
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6444
    .end local v1    # "apn":Ljava/lang/String;
    .end local v4    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 6445
    .local v3, "apnList":[Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prefered Order for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6446
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v3, p1}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    goto :goto_0
.end method

.method private updateNetRegist()V
    .locals 4

    .prologue
    .line 3362
    iget v0, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    .line 3363
    iget v0, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 3364
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    .line 3365
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "don`t retry more."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3366
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    .line 3373
    :goto_0
    return-void

    .line 3370
    :cond_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update netRegist cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3371
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    .line 3372
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    const/16 v2, 0x50

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public IsVoLteAvailableNetwork()Z
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5591
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5592
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    if-ne v2, v4, :cond_1

    :cond_0
    move v0, v1

    .line 5597
    :cond_1
    :goto_0
    return v0

    .line 5594
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5595
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v0

    goto :goto_0

    .line 5597
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    if-ne v2, v4, :cond_4

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method public bootCompleted()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1170
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bootCompleted: bIsSimReady is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEpdgReady is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-nez v0, :cond_1

    .line 1174
    const-string v0, "[EPDGService]"

    const-string v1, "EPDG is not ready yet."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1178
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isNeededToBlockIkeAuthentication()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1179
    invoke-direct {p0, v3}, Lcom/sec/epdg/EpdgService;->stopEpdgService(Z)V

    goto :goto_0

    .line 1183
    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    if-eq v0, v3, :cond_4

    :cond_3
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    if-ne v0, v3, :cond_0

    .line 1186
    :cond_4
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1187
    new-instance v0, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 4280
    const/4 v2, -0x1

    .line 4281
    .local v2, "profileId":I
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 4282
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x2b

    iput v3, v1, Landroid/os/Message;->what:I

    .line 4283
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v2

    .line 4284
    if-ne v2, v6, :cond_0

    .line 4285
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connect() Unable to get cid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v3, :cond_0

    .line 4287
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4289
    add-int/lit8 v2, v0, 0x1

    .line 4290
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connect() find SM for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4296
    .end local v0    # "i":I
    :cond_0
    if-ne v2, v6, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    instance-of v3, v3, Lcom/sec/epdg/EpdgTestRilAdapter;

    if-eqz v3, :cond_1

    .line 4297
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getTestNetInterfaceNum()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 4298
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connect() with EpdgTestRilAdapter - find dummyid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4301
    :cond_1
    if-eq v2, v6, :cond_2

    .line 4302
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 4303
    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4304
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post event RIL_CONNECT_REQ for profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4306
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4308
    :cond_2
    const/4 v3, 0x0

    return v3

    .line 4286
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public disconnect(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 4314
    const/4 v2, -0x1

    .line 4315
    .local v2, "profileId":I
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 4316
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x2c

    iput v3, v1, Landroid/os/Message;->what:I

    .line 4317
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v2

    .line 4318
    if-ne v2, v6, :cond_0

    .line 4319
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect() Unable to get cid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v3, :cond_0

    .line 4321
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4323
    add-int/lit8 v2, v0, 0x1

    .line 4324
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect() find SM for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4330
    .end local v0    # "i":I
    :cond_0
    if-eq v2, v6, :cond_2

    .line 4331
    new-instance v3, Landroid/os/AsyncResult;

    new-instance v4, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    invoke-direct {v4, v2}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    invoke-direct {v3, v7, v4, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4332
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post event RIL_DISCONNECT_REQ for profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4334
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4339
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 4320
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4336
    .end local v0    # "i":I
    :cond_2
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect() can\'t be triggered for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 487
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 490
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump EpdgService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    :goto_0
    return-void

    .line 495
    :cond_0
    const-string v6, "[EPDGService]"

    const-string v7, "EpdgService dump started"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v6, "EpdgService Dumpstate"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .line 498
    .local v3, "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz v3, :cond_1

    .line 499
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnContextDump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 503
    .end local v3    # "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    .line 504
    .local v1, "data":Lcom/sec/epdg/EpdgRilSharedData;
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .end local v1    # "data":Lcom/sec/epdg/EpdgRilSharedData;
    :goto_2
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    if-eqz v6, :cond_3

    .line 509
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    :cond_3
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 512
    const-string v6, "EPDG server last DNS status"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "UNSUCCESSFUL"

    :goto_3
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EPDG Enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-eqz v6, :cond_5

    .line 517
    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 518
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Volte is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " VoWifi is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ims Listener : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    :cond_5
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v6, :cond_6

    .line 524
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Vowifi MDN : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "vowifi_mdn"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    :cond_6
    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    if-eqz v6, :cond_7

    .line 528
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VoWifi Timers :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    :cond_7
    invoke-static {}, Lcom/sec/epdg/Log;->dump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    invoke-static {p2}, Lcom/sec/epdg/EpdgDumpState;->dump(Ljava/io/PrintWriter;)V

    .line 532
    const-string v6, "[EPDGService]"

    const-string v7, "EpdgService dump finished"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 505
    :catch_0
    move-exception v2

    .line 506
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v6, "EpdgRilSharedData : null"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 513
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_8
    const-string v6, "SUCCESSFUL"

    goto/16 :goto_3
.end method

.method public enableTestRilAdapter(Z)I
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4345
    if-eqz p1, :cond_0

    .line 4346
    const-string v0, "[EPDGService]"

    const-string v1, "Changing the RIL Operating Mode using TesRilAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4347
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgTestRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgTestRilAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    .line 4352
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 4349
    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "Changing the RIL Operating Mode using RilAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4350
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgRilAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    goto :goto_0
.end method

.method public isDuringHandoverForIMS()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4357
    const/16 v4, 0xb

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v1

    .line 4358
    .local v1, "cid":I
    if-gez v1, :cond_1

    .line 4359
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "invalid cid for ims"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4378
    :cond_0
    :goto_0
    return v2

    .line 4362
    :cond_1
    sget-boolean v4, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v4, :cond_2

    .line 4363
    const-string v3, "[EPDGService]"

    const-string v4, "EpdgService not initialized."

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4367
    :cond_2
    sget-object v4, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v0

    .line 4368
    .local v0, "apnState":I
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDuringHandoverForIMS(), cid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnState is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4370
    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-eq v0, v4, :cond_3

    const/4 v4, 0x7

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    :cond_3
    move v2, v3

    .line 4376
    goto :goto_0
.end method

.method public makeEpdgServiceUp()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1193
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    .line 1194
    .local v6, "context":Landroid/content/Context;
    new-instance v0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;ZZZ)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1195
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1200
    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgContentObserver;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    .line 1201
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1203
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1205
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1208
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1211
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_1

    .line 1212
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgWfcProfileReader;->CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1216
    :cond_1
    new-instance v0, Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mVoWifiSettingObserver:Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;

    .line 1217
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/VoWifiSettings;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mVoWifiSettingObserver:Lcom/sec/epdg/EpdgService$VoWifiSettingObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1219
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1220
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mIPCallAdbCommandReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.sec.commands.ipcall.action_ip_setting_change"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1224
    :cond_2
    return-void
.end method

.method public sendEventToStateMachine(IILandroid/os/IBinder;)I
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "event"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4248
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;-><init>(Lcom/sec/epdg/EpdgService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4250
    const/4 v0, 0x0

    return v0
.end method

.method public sendWfcEpdgAllowedIntent()V
    .locals 4

    .prologue
    .line 3735
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorXaa()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3736
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.epdg.WFC_EPDG_ALLOWED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3737
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendWfcEpdgAllowedIntent :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmoMvno()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3738
    const-string/jumbo v1, "epdg_allowed"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmoMvno()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3739
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3741
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public startForceToHandOverToEPDG(ZILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 11
    .param p1, "isEpdg"    # Z
    .param p2, "networkType"    # I
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4197
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    if-nez v0, :cond_0

    .line 4198
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "startForceToHandOverToEPDG : mSmartWifiAdapter is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4199
    const/4 v0, -0x1

    .line 4211
    :goto_0
    return v0

    .line 4201
    :cond_0
    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startForceToHandOverToEPDG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4202
    if-eqz p1, :cond_1

    const/4 v8, 0x1

    .line 4203
    .local v8, "wificallenable":I
    :goto_1
    const/4 v9, -0x1

    .line 4204
    .local v9, "wificallpreferred":I
    if-eqz p1, :cond_2

    .line 4205
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiCallEnabler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v8, v9, v2}, Lcom/sec/epdg/EpdgService$WifiCallEnabler;-><init>(Lcom/sec/epdg/EpdgService;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4206
    sget-object v10, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/epdg/EpdgService$WifiCallHandover;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/epdg/EpdgService$WifiCallHandover;-><init>(Lcom/sec/epdg/EpdgService;ZIILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4211
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 4202
    .end local v8    # "wificallenable":I
    .end local v9    # "wificallpreferred":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 4208
    .restart local v8    # "wificallenable":I
    .restart local v9    # "wificallpreferred":I
    :cond_2
    sget-object v10, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/epdg/EpdgService$WifiCallHandover;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/epdg/EpdgService$WifiCallHandover;-><init>(Lcom/sec/epdg/EpdgService;ZIILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4209
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiCallEnabler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v8, v9, v2}, Lcom/sec/epdg/EpdgService$WifiCallEnabler;-><init>(Lcom/sec/epdg/EpdgService;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public startHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4231
    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHandOverLteToWifi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4236
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/sec/epdg/mapcon/MapconTable;->setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V

    .line 4239
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/epdg/EpdgDumpState;->addL2WApiCall(ILjava/lang/String;Ljava/lang/String;)V

    .line 4242
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startHandoverLteToWifi(I)I

    move-result v0

    return v0
.end method

.method public startHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4217
    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHandOverWifiToLte : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4219
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/sec/epdg/mapcon/MapconTable;->setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V

    .line 4222
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/epdg/EpdgDumpState;->addW2LApiCall(ILjava/lang/String;Ljava/lang/String;)V

    .line 4225
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I

    move-result v0

    return v0
.end method
