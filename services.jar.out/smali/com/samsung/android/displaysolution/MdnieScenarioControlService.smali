.class public Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.super Ljava/lang/Object;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;,
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;,
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final MSC_ON:Ljava/lang/String; = "sys.mdniecontrolservice.mscon"

.field private static final TAG:Ljava/lang/String; = "MdnieScenarioControlService"


# instance fields
.field private final ACTION_DETAIL_VIEW_STATE_IN:Ljava/lang/String;

.field private ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_DETAIL_VIEW_STATE_OUT:Ljava/lang/String;

.field private ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

.field private final ACTION_GAME_MODE_STATE_IN:Ljava/lang/String;

.field private ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_GAME_MODE_STATE_OUT:Ljava/lang/String;

.field private ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

.field private final ACTION_MOVIE_PLAYER_STATE_IN:Ljava/lang/String;

.field private ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_MOVIE_PLAYER_STATE_OUT:Ljava/lang/String;

.field private ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

.field private final ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

.field private ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

.field private ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

.field private ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

.field private ACTION_VIDEO_APP_STATE_OUT_DEBOUNCE_MILLIS:I

.field private ANDROID_APP_LAUNCHER:[Ljava/lang/String;

.field private CAMERA_APP_LAUNCHER:[Ljava/lang/String;

.field private CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field private final DEBUG:Z

.field private DMB_APP_LAUNCHER:[Ljava/lang/String;

.field private EBOOK_APP_LAUNCHER:[Ljava/lang/String;

.field private EMAIL_APP_LAUNCHER:[Ljava/lang/String;

.field private final EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

.field private FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

.field private GALLERY_APP_LAUNCHER:[Ljava/lang/String;

.field private GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

.field private GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

.field private GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field private IS_CAMERA_APP_DEBOUNCE_MILLIS:I

.field private IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

.field private final LOCALE_CHANGED:Ljava/lang/String;

.field private MDNIE_GAME_HIGH_MODE:Ljava/lang/String;

.field private MDNIE_GAME_LOW_MODE:Ljava/lang/String;

.field private MDNIE_GAME_MID_MODE:Ljava/lang/String;

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_SET_CAMERA_MODE:I

.field private final MSG_SET_DMB_MODE:I

.field private final MSG_SET_EBOOK_MODE:I

.field private final MSG_SET_EMAIL_MODE:I

.field private final MSG_SET_GALLERY_MODE:I

.field private final MSG_SET_GALLERY_OUT_MODE:I

.field private final MSG_SET_GAME_HIGH_MODE:I

.field private final MSG_SET_GAME_LOW_MODE:I

.field private final MSG_SET_GAME_MID_MODE:I

.field private final MSG_SET_GAME_OUT_MODE:I

.field private final MSG_SET_SAMSUNG_VIDEO_MODE:I

.field private final MSG_SET_SAMSUNG_VIDEO_OUT_MODE:I

.field private final MSG_SET_UI_MODE:I

.field private final MSG_SET_VIDEO_MODE:I

.field private final NOTIFICATION_DISMISS:Ljava/lang/String;

.field private final NOTIFICATION_REMOVED:Ljava/lang/String;

.field private final NOTIFICATION_SETTINGS:Ljava/lang/String;

.field private READING_SCENARIO_PATH:Ljava/lang/String;

.field private SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field private SCENARIO_VALUE:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field private SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field private VIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field private first_MultiWindowOn:Z

.field private isLockScreenOn:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoModeEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mCameraScenarioEnabled:Z

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDMBScenarioEnabled:Z

.field private mDetailViewState:Z

.field private mEBookScenarioIntented:Z

.field private mEbookScenarioEnabled:Z

.field private mEmailScenarioEnabled:Z

.field private mEnableCondition:Z

.field private mForegroundThreadWork:Z

.field private mGalleryAppLauncher:Z

.field private mGalleryModeFirst:Z

.field private mGalleryMultiView:Z

.field private mGalleryMultiViewLauncher:Z

.field private mGalleryOptionScenarioEnabled:Z

.field private mGalleryScenarioEnabled:Z

.field private mGameModeLauncher:Z

.field private mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHdrEffectEnabled:Z

.field private mHdrEffectIntensity:I

.field private mHdrEffectSamsungVideo:Z

.field private mHdrEffectVideo:Z

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mIsFirstStart:Z

.field private mIsFromCamera:Z

.field private mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mNotGoUI:Z

.field private mNotiManager:Landroid/app/NotificationManager;

.field private mNotidficationAlreadyShow:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mQuickViewState:Z

.field private mSVideoAppLauncher:Z

.field private mSVideoOptionScenarioEnabled:Z

.field private mSVideoScenarioEnabled:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;

.field private mSettingCondition:Z

.field private mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

.field private mStatusbarManager:Landroid/app/StatusBarManager;

.field private mUIScenarioEnabled:Z

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseMdnieScenarioControlConfig:Z

.field private mVideoEnd:Z

.field private mVideoEndNotUI:Z

.field private mVideoScenarioEnabled:Z

.field private sharedEditor:Landroid/content/SharedPreferences$Editor;

.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-string/jumbo v4, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DEBUG:Z

    .line 99
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_FOREGROUND_APP:I

    .line 100
    iput v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_RESCAN_FOREGROUND_APP:I

    .line 101
    const/4 v4, 0x2

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_UI_MODE:I

    .line 102
    const/4 v4, 0x3

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_BROWSER_MODE:I

    .line 103
    const/4 v4, 0x4

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GALLERY_MODE:I

    .line 104
    const/4 v4, 0x5

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_CAMERA_MODE:I

    .line 105
    const/4 v4, 0x6

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_VIDEO_MODE:I

    .line 106
    const/4 v4, 0x7

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_SAMSUNG_VIDEO_MODE:I

    .line 107
    const/16 v4, 0x8

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_SAMSUNG_VIDEO_OUT_MODE:I

    .line 108
    const/16 v4, 0x9

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_EMAIL_MODE:I

    .line 109
    const/16 v4, 0xa

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_EBOOK_MODE:I

    .line 110
    const/16 v4, 0xb

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_DMB_MODE:I

    .line 111
    const/16 v4, 0xc

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GALLERY_OUT_MODE:I

    .line 112
    const/16 v4, 0xd

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GAME_LOW_MODE:I

    .line 113
    const/16 v4, 0xe

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GAME_MID_MODE:I

    .line 114
    const/16 v4, 0xf

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GAME_HIGH_MODE:I

    .line 115
    const/16 v4, 0x10

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GAME_OUT_MODE:I

    .line 117
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    .line 118
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    .line 119
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 120
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    .line 121
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 122
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    .line 123
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 124
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    .line 125
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 126
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    .line 127
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    .line 128
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    .line 129
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    .line 131
    const-string/jumbo v4, "screen_mode_automatic_setting"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    .line 132
    const-string/jumbo v4, "screen_mode_setting"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    .line 133
    const-string v4, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS:Ljava/lang/String;

    .line 134
    const-string v4, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EXTRA_MULTIWINDOW_RUNNING:Ljava/lang/String;

    .line 136
    const-string v4, "ACTION_DETAIL_VIEW_STATE_IN"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN:Ljava/lang/String;

    .line 137
    const-string v4, "ACTION_DETAIL_VIEW_STATE_OUT"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT:Ljava/lang/String;

    .line 139
    const-string v4, "ACTION_MOVIE_PLAYER_STATE_IN"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN:Ljava/lang/String;

    .line 140
    const-string v4, "ACTION_MOVIE_PLAYER_STATE_OUT"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT:Ljava/lang/String;

    .line 142
    const-string v4, "ACTION_GAME_MODE_STATE_IN"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN:Ljava/lang/String;

    .line 143
    const-string v4, "ACTION_GAME_MODE_STATE_OUT"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT:Ljava/lang/String;

    .line 145
    const-string v4, "NOTIFICATION_SETTINGS"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->NOTIFICATION_SETTINGS:Ljava/lang/String;

    .line 146
    const-string v4, "NOTIFICATION_DISMISS"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->NOTIFICATION_DISMISS:Ljava/lang/String;

    .line 147
    const-string v4, "NOTIFICATION_REMOVED"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->NOTIFICATION_REMOVED:Ljava/lang/String;

    .line 149
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LOCALE_CHANGED:Ljava/lang/String;

    .line 151
    const-string v4, "MDNIE_GAME_LOW_MODE"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MDNIE_GAME_LOW_MODE:Ljava/lang/String;

    .line 152
    const-string v4, "MDNIE_GAME_MID_MODE"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MDNIE_GAME_MID_MODE:Ljava/lang/String;

    .line 153
    const-string v4, "MDNIE_GAME_HIGH_MODE"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MDNIE_GAME_HIGH_MODE:Ljava/lang/String;

    .line 155
    const-string v4, "/sys/class/mdnie/mdnie/scenario"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    .line 156
    iput-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 158
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    .line 159
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 160
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 161
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    .line 162
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    .line 163
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 164
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    .line 165
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    .line 166
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 167
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 168
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 169
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    .line 170
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    .line 171
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    .line 192
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    .line 194
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 195
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 197
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotGoUI:Z

    .line 198
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    .line 199
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 200
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 201
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->first_MultiWindowOn:Z

    .line 202
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mForegroundThreadWork:Z

    .line 203
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryModeFirst:Z

    .line 205
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    .line 208
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    .line 209
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    .line 210
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    .line 211
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    .line 212
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoModeEnabled:Z

    .line 213
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEBookScenarioIntented:Z

    .line 215
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 216
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 217
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 218
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    .line 219
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 220
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 221
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 222
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 223
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 224
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 225
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 227
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryMultiViewLauncher:Z

    .line 228
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppLauncher:Z

    .line 229
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoAppLauncher:Z

    .line 231
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryMultiView:Z

    .line 233
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameModeLauncher:Z

    .line 235
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    .line 236
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDetailViewState:Z

    .line 237
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickViewState:Z

    .line 238
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    .line 240
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    .line 242
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectSamsungVideo:Z

    .line 243
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectVideo:Z

    .line 244
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    .line 246
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFirstStart:Z

    .line 247
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverState:Z

    .line 481
    new-instance v4, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 614
    new-instance v4, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 250
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 252
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "MdnieScenarioControlServiceThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 253
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 254
    new-instance v4, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    .line 256
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    .line 258
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    .line 259
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 260
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 261
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    .line 262
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107008f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    .line 263
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070090

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 264
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070091

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    .line 265
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    .line 266
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 267
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070094

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 268
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070095

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 269
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    .line 270
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070097

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    .line 271
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    .line 273
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00cd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    .line 274
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    .line 275
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 276
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    .line 277
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 278
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    .line 279
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 280
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    .line 281
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 282
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    .line 283
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    .line 284
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    .line 285
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    .line 287
    const-string/jumbo v4, "sys.mdniecontrolservice.mscon"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v4, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    .line 291
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 293
    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Lcom/samsung/android/cover/CoverManager;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 295
    const-string/jumbo v4, "hdr_effect"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 296
    const-string/jumbo v4, "hdr_effect_intensity"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 297
    const-string/jumbo v4, "lcd_curtain"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 298
    const-string/jumbo v4, "high_contrast"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 299
    const-string v4, "color_blind"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 300
    const-string/jumbo v4, "ultra_powersaving_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 301
    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 303
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string v4, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v4, "ACTION_DETAIL_VIEW_STATE_IN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v4, "ACTION_DETAIL_VIEW_STATE_OUT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v4, "ACTION_MOVIE_PLAYER_STATE_IN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v4, "ACTION_MOVIE_PLAYER_STATE_OUT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v4, "ACTION_GAME_MODE_STATE_IN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v4, "ACTION_GAME_MODE_STATE_OUT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v4, "NOTIFICATION_DISMISS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v4, "NOTIFICATION_SETTINGS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v4, "NOTIFICATION_REMOVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;

    invoke-direct {v5, p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;)V

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mStatusbarManager:Landroid/app/StatusBarManager;

    .line 324
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotiManager:Landroid/app/NotificationManager;

    .line 325
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 326
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPowerManager:Landroid/os/PowerManager;

    .line 327
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "mDNIe"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdnie/MdnieManager;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    .line 329
    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    if-eqz v4, :cond_0

    .line 330
    const-string/jumbo v4, "sys.mdniecontrolservice.mscon"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V

    .line 336
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 337
    .local v2, "mIActivityManager":Landroid/app/IActivityManager;
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v2    # "mIActivityManager":Landroid/app/IActivityManager;
    :cond_1
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 340
    const-string v4, "MdnieScenarioControlService"

    const-string/jumbo v5, "failed to registerProcessObserver"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->first_MultiWindowOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->receive_multi_window_on_intent()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDetailViewState:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$2102(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameModeLauncher:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MDNIE_GAME_LOW_MODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MDNIE_GAME_MID_MODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MDNIE_GAME_HIGH_MODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$2902(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->monitorForegroundActivity(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoMode()V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoMode(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrowserMode()V

    return-void
.end method

.method static synthetic access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGalleryMode(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGameMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraMode()V

    return-void
.end method

.method static synthetic access$3700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEmailMode()V

    return-void
.end method

.method static synthetic access$3800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEbookMode()V

    return-void
.end method

.method static synthetic access$3900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDMBMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$4000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotiManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->showHdrEffectNotification(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->cancelNotification()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->settingsNotification()V

    return-void
.end method

.method private cancelNotification()V
    .locals 4

    .prologue
    .line 1413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    .line 1414
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotiManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "dialog"

    const/16 v2, 0x3e7

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1415
    return-void
.end method

.method private checkHeadUpNotiFirst()V
    .locals 3

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sharedPref"

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sharedPref:Landroid/content/SharedPreferences;

    .line 1334
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    .line 1336
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "HDR_EFFECT"

    const-string/jumbo v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_DisableHdrEffect"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1338
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->showHdrEffectNotification(Z)V

    .line 1341
    :cond_0
    return-void
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x80

    const/4 v11, 0x0

    .line 1277
    const/4 v6, 0x0

    .line 1278
    .local v6, "in":Ljava/io/InputStream;
    const/16 v0, 0x80

    .line 1279
    .local v0, "MAX_BUFFER_SIZE":I
    new-array v1, v12, [B

    .line 1280
    .local v1, "buffer":[B
    const/4 v9, 0x0

    .line 1281
    .local v9, "value":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1283
    .local v8, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v12, :cond_0

    .line 1284
    aput-byte v11, v1, v5

    .line 1283
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1287
    :cond_0
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    .end local v6    # "in":Ljava/io/InputStream;
    .local v7, "in":Ljava/io/InputStream;
    if-eqz v7, :cond_2

    .line 1289
    :try_start_1
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 1290
    if-eqz v8, :cond_1

    .line 1291
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v8, -0x1

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v1, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .end local v9    # "value":Ljava/lang/String;
    .local v10, "value":Ljava/lang/String;
    move-object v9, v10

    .line 1293
    .end local v10    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1302
    :cond_2
    if-eqz v7, :cond_5

    .line 1304
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 1310
    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    :cond_3
    :goto_1
    return-object v9

    .line 1305
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 1306
    .local v3, "ee":Ljava/io/IOException;
    const-string v11, "MdnieScenarioControlService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 1307
    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_1

    .line 1295
    .end local v3    # "ee":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 1297
    .local v4, "ex":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v11, "MdnieScenarioControlService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileNotFoundException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1302
    if-eqz v6, :cond_3

    .line 1304
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1305
    :catch_2
    move-exception v3

    .line 1306
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v11, "MdnieScenarioControlService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1298
    .end local v3    # "ee":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 1299
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1300
    const-string v11, "MdnieScenarioControlService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1302
    if-eqz v6, :cond_3

    .line 1304
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 1305
    :catch_4
    move-exception v3

    .line 1306
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v11, "MdnieScenarioControlService"

    const-string v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1302
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ee":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v6, :cond_4

    .line 1304
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1307
    :cond_4
    :goto_5
    throw v11

    .line 1305
    :catch_5
    move-exception v3

    .line 1306
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string v12, "MdnieScenarioControlService"

    const-string v13, "File Close error"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1302
    .end local v3    # "ee":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 1298
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 1295
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_2

    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :cond_5
    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private mdnie_reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1245
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 1246
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 1247
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 1248
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    .line 1249
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 1250
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 1251
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 1252
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 1253
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 1254
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 1255
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 1256
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppLauncher:Z

    .line 1257
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryMultiViewLauncher:Z

    .line 1258
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoAppLauncher:Z

    .line 1259
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    .line 1260
    return-void
.end method

.method private monitorForegroundActivity(Ljava/lang/String;II)V
    .locals 26
    .param p1, "packageName_className"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 623
    const/16 v16, 0x0

    .line 624
    .local v16, "isUI":Z
    const/4 v5, 0x0

    .line 625
    .local v5, "isBrowser":Z
    const/4 v10, 0x0

    .line 626
    .local v10, "isGallery":Z
    const/4 v12, 0x0

    .line 627
    .local v12, "isGallery_Multi_View":Z
    const/4 v13, 0x0

    .line 628
    .local v13, "isGallery_from_camera":Z
    const/4 v6, 0x0

    .line 629
    .local v6, "isCamera":Z
    const/4 v14, 0x0

    .line 630
    .local v14, "isSVideo":Z
    const/4 v15, 0x0

    .line 631
    .local v15, "isSVideoOption":Z
    const/16 v17, 0x0

    .line 632
    .local v17, "isVideo":Z
    const/4 v9, 0x0

    .line 633
    .local v9, "isEmail":Z
    const/4 v8, 0x0

    .line 634
    .local v8, "isEbook":Z
    const/4 v7, 0x0

    .line 635
    .local v7, "isDmb":Z
    const/4 v11, 0x0

    .line 637
    .local v11, "isGalleryOption":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_0

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 639
    const/16 v16, 0x1

    .line 643
    :cond_0
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_1

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 645
    const/4 v5, 0x1

    .line 649
    :cond_1
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_2

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 651
    const/4 v5, 0x1

    .line 655
    :cond_2
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 657
    const/4 v10, 0x1

    .line 661
    :cond_3
    const/16 v18, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 663
    const/4 v12, 0x1

    .line 667
    :cond_4
    const/16 v18, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 669
    const/4 v11, 0x1

    .line 673
    :cond_5
    const/16 v18, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 675
    const/4 v13, 0x1

    .line 679
    :cond_6
    const/4 v4, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_7

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 681
    const/4 v6, 0x1

    .line 685
    :cond_7
    const/4 v4, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_8

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 687
    const/4 v14, 0x1

    .line 691
    :cond_8
    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_9

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 693
    const/4 v15, 0x1

    .line 697
    :cond_9
    const/4 v4, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_a

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 699
    const/16 v17, 0x1

    .line 703
    :cond_a
    const/4 v4, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_b

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 705
    const/4 v9, 0x1

    .line 709
    :cond_b
    const/4 v4, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_c

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 711
    const/4 v8, 0x1

    .line 715
    :cond_c
    const/4 v4, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_d

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 717
    const/4 v7, 0x1

    .line 722
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_1d

    if-eqz v5, :cond_1d

    .line 723
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 724
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 725
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 849
    :cond_e
    :goto_e
    return-void

    .line 637
    .end local v18    # "j":I
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 643
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 649
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 655
    .restart local v18    # "j":I
    :cond_12
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 661
    :cond_13
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 667
    :cond_14
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 673
    :cond_15
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 679
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 685
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 691
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    .line 697
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    .line 703
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 709
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    .line 715
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    .line 729
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_1e

    if-eqz v10, :cond_1e

    .line 730
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 731
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 732
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 733
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryModeFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDetailViewState:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 736
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryModeFirst:Z

    goto/16 :goto_e

    .line 739
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_1f

    if-eqz v12, :cond_1f

    .line 740
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryMultiViewLauncher:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 741
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 742
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryMultiViewLauncher:Z

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 746
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_20

    if-eqz v11, :cond_20

    .line 747
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 748
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 749
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 753
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_24

    if-eqz v13, :cond_24

    .line 754
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_23

    .line 755
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 756
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 757
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryModeFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDetailViewState:Z

    move/from16 v19, v0

    if-nez v19, :cond_21

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 760
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryModeFirst:Z

    .line 767
    :cond_21
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->first_MultiWindowOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_22

    .line 768
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 769
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 770
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 771
    .local v20, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 773
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->first_MultiWindowOn:Z

    .line 775
    .end local v20    # "time":J
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 778
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    goto/16 :goto_e

    .line 762
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_21

    .line 763
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_f

    .line 780
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_25

    if-eqz v6, :cond_25

    .line 781
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 782
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 783
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 784
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 785
    .restart local v20    # "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_e

    .line 788
    .end local v20    # "time":J
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_27

    if-eqz v14, :cond_27

    .line 789
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_26

    .line 790
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 791
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 793
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->first_MultiWindowOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 794
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 795
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x7

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x7

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 798
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->first_MultiWindowOn:Z

    goto/16 :goto_e

    .line 800
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_28

    if-eqz v15, :cond_28

    .line 801
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 802
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 803
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 807
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_29

    if-eqz v17, :cond_29

    .line 808
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 809
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 810
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 811
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 812
    .restart local v20    # "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_e

    .line 815
    .end local v20    # "time":J
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2a

    if-eqz v9, :cond_2a

    .line 816
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 818
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 822
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2b

    if-eqz v8, :cond_2b

    .line 823
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 824
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 825
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 829
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2c

    if-eqz v7, :cond_2c

    .line 830
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 831
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 832
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 836
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2d

    if-eqz v16, :cond_2d

    .line 837
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 838
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 839
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 844
    :cond_2d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 845
    .restart local v20    # "time":J
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_e
.end method

.method private pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1401
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v0, v3, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private receive_multi_window_on_intent()V
    .locals 5

    .prologue
    .line 559
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_0

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 564
    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private receive_screen_off_intent()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 578
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 579
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 580
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 581
    return-void
.end method

.method private receive_screen_on_intent()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 571
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 572
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 573
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 574
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode()V

    .line 575
    return-void

    :cond_0
    move v0, v1

    .line 573
    goto :goto_0
.end method

.method private scenario_enable_reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1263
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 1264
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 1265
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 1266
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    .line 1267
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 1268
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 1269
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 1270
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 1271
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 1272
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 1273
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 1274
    return-void
.end method

.method private setAudioHDR(ZI)V
    .locals 2
    .param p1, "audioHDR"    # Z
    .param p2, "mHdrIntensity"    # I

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAudioManager:Landroid/media/AudioManager;

    .line 1326
    if-nez p1, :cond_0

    .line 1327
    const/4 p2, 0x0

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->semSetAudioHDR(ZI)Z

    .line 1330
    return-void
.end method

.method private setBrightnessScaleFactor(I)V
    .locals 3
    .param p1, "scaleValue"    # I

    .prologue
    .line 1314
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v2, "DisplaySolution"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/DisplaySolutionManager;

    .line 1315
    .local v0, "mDisplaySolutionManager":Lcom/samsung/android/displaysolution/DisplaySolutionManager;
    if-nez p1, :cond_1

    .line 1316
    const-string/jumbo v1, "hdr_effect_off"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1318
    const-string/jumbo v1, "hdr_effect_on_1"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    goto :goto_0

    .line 1319
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1320
    const-string/jumbo v1, "hdr_effect_on_2"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/DisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setBrowserMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 958
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 964
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "BROWSER_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 966
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 967
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 968
    const/4 v1, -0x1

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(ZI)V

    .line 969
    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setBrowserMode from Browser function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_0
    return-void

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setCameraMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1019
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1025
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    .line 1026
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mQuickViewState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickViewState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mVideoEnd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickViewState:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    if-nez v1, :cond_2

    .line 1028
    :cond_0
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "CAMERA_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1030
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1031
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1032
    const/4 v1, -0x1

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(ZI)V

    .line 1033
    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setCameraMode from Camera function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_1
    :goto_1
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryModeFirst:Z

    .line 1041
    return-void

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1037
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickViewState:Z

    .line 1038
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    goto :goto_1
.end method

.method private setDMBMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1193
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1199
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "TDMB_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1201
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1202
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1203
    const/4 v1, -0x1

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(ZI)V

    .line 1204
    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setDMBMode from DMB function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    return-void

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setEbookMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1159
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1165
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "eBOOK_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1168
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1169
    const/4 v1, -0x1

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(ZI)V

    .line 1170
    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setEbookMode from Ebook function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_0
    return-void

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setEmailMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1176
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1182
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "EMAIL_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1185
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1186
    const/4 v1, -0x1

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(ZI)V

    .line 1187
    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setEmailMode from Email function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_0
    return-void

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setGalleryMode(Z)V
    .locals 7
    .param p1, "mGalleryAppLauncher"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 975
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :goto_0
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mGalleryAppLauncher : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    if-eqz p1, :cond_2

    .line 982
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 983
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "GALLERY_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 985
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 986
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 987
    invoke-direct {p0, v4, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(ZI)V

    .line 988
    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setGalleryMode from Gallery function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_0
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotGoUI:Z

    .line 991
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryModeFirst:Z

    .line 992
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    .line 993
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickViewState:Z

    .line 1015
    :cond_1
    :goto_1
    return-void

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 996
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 997
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    invoke-virtual {v1, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->removeMessages(I)V

    .line 998
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;

    invoke-virtual {v1, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScrControlHandler;->sendEmptyMessage(I)Z

    .line 999
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    .line 1000
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickViewState:Z

    .line 1001
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNotGoUI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotGoUI:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotGoUI:Z

    if-nez v1, :cond_3

    .line 1003
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "UI_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1005
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1006
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1007
    invoke-direct {p0, v4, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(ZI)V

    .line 1008
    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setUIMode from Gallery function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1011
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotGoUI:Z

    if-eqz v1, :cond_1

    .line 1012
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotGoUI:Z

    goto/16 :goto_1
.end method

.method private setGameMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1210
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    :goto_0
    const-string v1, "LOW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1216
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "GAME_LOW_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1218
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1219
    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setGameMode(LOW) from Game function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_0
    :goto_1
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1241
    const/4 v1, -0x1

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(ZI)V

    .line 1242
    return-void

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1221
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const-string v1, "MID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1222
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "GAME_MID_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1224
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1225
    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setGameMode(MID) from Game function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1227
    :cond_2
    const-string v1, "HIGH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1228
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "GAME_HIGH_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1230
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1231
    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setGameMode(HIGH) from Game function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1233
    :cond_3
    const-string v1, "OUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1234
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "UI_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1237
    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setUIMode from Game function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setSVideoMode(Z)V
    .locals 10
    .param p1, "mSVideoAppLauncher"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1093
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1098
    :goto_0
    const-string v3, "MdnieScenarioControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSVideoAppLauncher : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    if-eqz p1, :cond_6

    .line 1102
    const/4 v1, 0x0

    .line 1103
    .local v1, "hdr_effect_enable":Z
    const/4 v2, 0x1

    .line 1105
    .local v2, "hdr_effect_intensity":I
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    .line 1106
    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectIntensity:I

    .line 1108
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1109
    const-string v3, "MdnieScenarioControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCENARIO_VALUE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    if-eqz v1, :cond_5

    .line 1112
    if-nez v2, :cond_3

    .line 1113
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "14"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "HDR_EFFECT_1 "

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1114
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1115
    const-string v3, "MdnieScenarioControlService"

    const-string/jumbo v4, "setVideoMode from Video function(HDR EFFECT-14)"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_0
    :goto_1
    invoke-direct {p0, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1129
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->checkHeadUpNotiFirst()V

    .line 1130
    invoke-direct {p0, v7, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(ZI)V

    .line 1139
    :cond_1
    :goto_2
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    .line 1155
    .end local v1    # "hdr_effect_enable":Z
    .end local v2    # "hdr_effect_intensity":I
    :cond_2
    :goto_3
    return-void

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1117
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "hdr_effect_enable":Z
    .restart local v2    # "hdr_effect_intensity":I
    :cond_3
    if-ne v2, v7, :cond_4

    .line 1118
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "15"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "HDR_EFFECT_2 "

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1119
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1120
    const-string v3, "MdnieScenarioControlService"

    const-string/jumbo v4, "setVideoMode from Video function(HDR EFFECT-15)"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1122
    :cond_4
    if-ne v2, v9, :cond_0

    .line 1123
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "16"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "HDR_EFFECT_3 "

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1124
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1125
    const-string v3, "MdnieScenarioControlService"

    const-string/jumbo v4, "setVideoMode from Video function(HDR EFFECT-16)"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1131
    :cond_5
    if-nez v1, :cond_1

    .line 1132
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "VIDEO_APP "

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1133
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    invoke-virtual {v3, v7}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1134
    invoke-direct {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1135
    invoke-direct {p0, v6, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(ZI)V

    .line 1136
    const-string v3, "MdnieScenarioControlService"

    const-string/jumbo v4, "setVideoMode from SVideo function"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1143
    .end local v1    # "hdr_effect_enable":Z
    .end local v2    # "hdr_effect_intensity":I
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1144
    const-string v3, "MdnieScenarioControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mVideoEndNotUI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    if-nez v3, :cond_2

    .line 1146
    const-string v3, "MdnieScenarioControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCENARIO_VALUE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "UI_APP "

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1148
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    invoke-virtual {v3, v6}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1149
    invoke-direct {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1150
    invoke-direct {p0, v6, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(ZI)V

    .line 1151
    const-string v3, "MdnieScenarioControlService"

    const-string/jumbo v4, "setUIMode from SVideo function"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private setUIMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 938
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 944
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mGameModeLauncher : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameModeLauncher:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameModeLauncher:Z

    if-nez v1, :cond_0

    .line 946
    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCENARIO_VALUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "UI_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 948
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 949
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 950
    const/4 v1, -0x1

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(ZI)V

    .line 951
    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setUIMode from UI function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_0
    return-void

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setVideoMode()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1045
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    :goto_0
    const/4 v1, 0x0

    .line 1052
    .local v1, "hdr_effect_enable":Z
    const/4 v2, 0x1

    .line 1054
    .local v2, "hdr_effect_intensity":I
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    .line 1055
    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectIntensity:I

    .line 1057
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1058
    const-string v3, "MdnieScenarioControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCENARIO_VALUE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    if-eqz v1, :cond_4

    .line 1061
    if-nez v2, :cond_2

    .line 1062
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "17"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "HDR_EFFECT_THIRD_1 "

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1063
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1064
    const-string v3, "MdnieScenarioControlService"

    const-string/jumbo v4, "setVideoMode from Video function(HDR EFFECT-17)"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_0
    :goto_1
    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1078
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->checkHeadUpNotiFirst()V

    .line 1079
    invoke-direct {p0, v7, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(ZI)V

    .line 1088
    :cond_1
    :goto_2
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    .line 1089
    return-void

    .line 1047
    .end local v1    # "hdr_effect_enable":Z
    .end local v2    # "hdr_effect_intensity":I
    :catch_0
    move-exception v0

    .line 1048
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1066
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "hdr_effect_enable":Z
    .restart local v2    # "hdr_effect_intensity":I
    :cond_2
    if-ne v2, v7, :cond_3

    .line 1067
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "18"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "HDR_EFFECT_THIRD_2 "

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1068
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1069
    const-string v3, "MdnieScenarioControlService"

    const-string/jumbo v4, "setVideoMode from Video function(HDR EFFECT-18)"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1071
    :cond_3
    if-ne v2, v8, :cond_0

    .line 1072
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "19"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "HDR_EFFECT_THIRD_3 "

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1073
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1074
    const-string v3, "MdnieScenarioControlService"

    const-string/jumbo v4, "setVideoMode from Video function(HDR EFFECT-19)"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1080
    :cond_4
    if-nez v1, :cond_1

    .line 1081
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v4, "VIDEO_APP "

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1082
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/mdnie/MdnieManager;

    invoke-virtual {v3, v7}, Lcom/samsung/android/mdnie/MdnieManager;->setContentMode(I)Z

    .line 1083
    invoke-direct {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1084
    const/4 v3, -0x1

    invoke-direct {p0, v6, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(ZI)V

    .line 1085
    const-string v3, "MdnieScenarioControlService"

    const-string/jumbo v4, "setVideoMode from Video function"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private setting_is_changed()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 585
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 587
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "hdr_effect"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    .line 588
    const-string/jumbo v2, "hdr_effect_intensity"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectIntensity:I

    .line 589
    const-string/jumbo v2, "lcd_curtain"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    .line 590
    const-string/jumbo v2, "high_contrast"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    .line 591
    const-string v2, "color_blind"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    .line 592
    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    .line 593
    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoModeEnabled:Z

    .line 595
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoModeEnabled:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    .line 596
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    if-eqz v2, :cond_9

    :goto_7
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 598
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    if-eqz v2, :cond_a

    .line 599
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 603
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :cond_1
    :goto_8
    return-void

    :cond_2
    move v2, v4

    .line 587
    goto :goto_0

    :cond_3
    move v2, v4

    .line 589
    goto :goto_1

    :cond_4
    move v2, v4

    .line 590
    goto :goto_2

    :cond_5
    move v2, v4

    .line 591
    goto :goto_3

    :cond_6
    move v2, v4

    .line 592
    goto :goto_4

    :cond_7
    move v2, v4

    .line 593
    goto :goto_5

    :cond_8
    move v2, v4

    .line 595
    goto :goto_6

    :cond_9
    move v3, v4

    .line 596
    goto :goto_7

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MdnieScenarioControlService"

    const-string/jumbo v3, "failed to onForegroundActivitiesChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 608
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_1

    .line 609
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_8
.end method

.method private settingsNotification()V
    .locals 3

    .prologue
    .line 1405
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mStatusbarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1406
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.HDR_EFFECT_SETTING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1407
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1408
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1409
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->cancelNotification()V

    .line 1410
    return-void
.end method

.method private showHdrEffectNotification(Z)V
    .locals 13
    .param p1, "needHeadUpNoti"    # Z

    .prologue
    const v12, 0x10203cd

    const v11, 0x10203cc

    const v10, 0x1040a9a

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1346
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const v6, 0x1040a99

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1347
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1348
    .local v3, "text":Ljava/lang/CharSequence;
    iput-boolean v9, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    .line 1349
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "HDR_EFFECT"

    const-string/jumbo v7, "true"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1350
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1351
    if-eqz p1, :cond_1

    .line 1352
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080a8a

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040a99

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "NOTIFICATION_REMOVED"

    invoke-direct {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040a9b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "NOTIFICATION_SETTINGS"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v8, v6, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040a9c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "NOTIFICATION_DISMISS"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v8, v6, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1365
    .local v0, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1366
    .local v1, "noti":Landroid/app/Notification;
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x1090076

    invoke-direct {v2, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1367
    .local v2, "rv":Landroid/widget/RemoteViews;
    const v5, 0x10203c9

    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1368
    const v5, 0x10203ca

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1369
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const v6, 0x1040a9c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1370
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const v6, 0x1040a9b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1371
    const-string v5, "NOTIFICATION_DISMISS"

    invoke-direct {p0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1372
    const-string v5, "NOTIFICATION_SETTINGS"

    invoke-direct {p0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v12, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1373
    iput-object v2, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1374
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotiManager:Landroid/app/NotificationManager;

    const-string/jumbo v6, "dialog"

    const/16 v7, 0x3e7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7, v1, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1398
    .end local v0    # "nb":Landroid/app/Notification$Builder;
    .end local v1    # "noti":Landroid/app/Notification;
    .end local v2    # "rv":Landroid/widget/RemoteViews;
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    if-nez p1, :cond_0

    .line 1376
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080a8a

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040a99

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "NOTIFICATION_REMOVED"

    invoke-direct {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040a9b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "NOTIFICATION_SETTINGS"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v8, v6, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040a9c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "NOTIFICATION_DISMISS"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v8, v6, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1388
    .restart local v0    # "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1389
    .restart local v1    # "noti":Landroid/app/Notification;
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x1090076

    invoke-direct {v2, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1390
    .restart local v2    # "rv":Landroid/widget/RemoteViews;
    const v5, 0x10203c9

    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1391
    const v5, 0x10203ca

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1392
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const v6, 0x1040a9c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1393
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const v6, 0x1040a9b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1394
    const-string v5, "NOTIFICATION_DISMISS"

    invoke-direct {p0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1395
    const-string v5, "NOTIFICATION_SETTINGS"

    invoke-direct {p0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v12, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1396
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotiManager:Landroid/app/NotificationManager;

    const-string/jumbo v6, "dialog"

    const/16 v7, 0x3e7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7, v1, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0
.end method
