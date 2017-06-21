.class public Lcom/android/server/am/MARsTrigger;
.super Ljava/lang/Object;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ADJ14BG_KILLED:Ljava/lang/String; = "com.android.server.am.ACTION_ADJ14BG_KILLED"

.field public static final ACTION_MEMORY_NOT_ENOUGH:Ljava/lang/String; = "com.android.server.am.ACTION_MEMROY_NOT_ENOUGH"

.field public static final ACTION_PACKAGE_NOTUSED_RECENTLY:Ljava/lang/String; = "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

.field public static final ACTION_REQUEST_FILLIN_DB_FROMSM:Ljava/lang/String; = "MARS_REQUEST_PKG_INFO"

.field public static final ACTION_SMUI_SETTING_TRUN_ON:Ljava/lang/String; = "com.android.server.am.ACTION_SMUI_SETTING_TRUN_ON"

.field public static final ACTION_UI_SET_ALWAYS_OPTIMIZING:Ljava/lang/String; = "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

.field public static final ACTION_UI_SET_AUTORUN_OFF:Ljava/lang/String; = "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

.field public static final ACTION_UI_TRIGGER_POLICY_SPECIFIC_PACKAGE:Ljava/lang/String; = "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

.field static final EXCUTE_POLICY_MSG:I = 0x385

.field public static final MARS_ACTION_GET_RUNNING_LOCATION:Ljava/lang/String; = "android.intent.action.GET_RUNNING_LOCATION"

.field public static final MARS_ACTION_SET_RUNNING_LOCATION:Ljava/lang/String; = "android.intent.action.SET_RUNNING_LOCATION"

.field private static final MARS_APP_LOCKER_POLICY_ALARM:Ljava/lang/String; = "MARS_APP_LOCKER_POLICY_ALARM"

.field private static final MARS_APP_LOCKER_REPEAT_ALARM:Ljava/lang/String; = "MARS_APP_LOCKER_REPEAT_ALARM"

.field private static final MARS_AUTO_RUN_POLICY_ALARM:Ljava/lang/String; = "MARS_AUTO_RUN_POLICY_ALARM"

.field private static final MARS_AUTO_RUN_POLICY_TRAFFIC_STAT_ALARM:Ljava/lang/String; = "MARS_AUTO_RUN_POLICY_TRAFFIC_STAT_ALARM"

.field private static final MARS_AUTO_RUN_REPEAT_ALARM:Ljava/lang/String; = "MARS_AUTO_RUN_REPEAT_ALARM"

.field private static final MARS_AUTO_RUN_TRAFFIC_STAT_REPEAT_ALARM:Ljava/lang/String; = "MARS_AUTO_RUN_TRAFFIC_STAT_REPEAT_ALARM"

.field public static final MARS_CANCEL_SBIKE_MODE_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_CANCEL_SBIKE_MODE_POLICY"

.field public static final MARS_CANCEL_UDS_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_CANCEL_UDS_POLICY"

.field private static final MARS_GCM_LOCKER_POLICY_ALARM:Ljava/lang/String; = "MARS_GCM_LOCKER_POLICY_ALARM"

.field private static final MARS_GCM_LOCKER_REPEAT_ALARM:Ljava/lang/String; = "MARS_GCM_LOCKER_REPEAT_ALARM"

.field public static final MARS_TRIGGER_SBIKE_MODE_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

.field public static final MARS_TRIGGER_UDS_POLICY:Ljava/lang/String; = "com.android.server.am.MARS_TRIGGER_UDS_POLICY"

.field public static final MARs_SCPM_UPDATE_BROADCAST_MESSAGE:Ljava/lang/String; = "sec.app.policy.UPDATE.MARs"

.field static final SCPM_UPDATE_MSG:I = 0x386

.field private static final SPCM_FIRST_TRIGGER_DELAY:J = 0x493e0L

.field static final TAG:Ljava/lang/String; = "MARsTrigger"


# instance fields
.field private final SPCM_COOL_TIME:J

.field private mAlarm:Landroid/app/AlarmManager;

.field private mAppLockerPolicyInterval:J

.field private mAppLockerRepeatAlarmInterval:J

.field public mAutoRunPolicyInterval:J

.field private mAutoRunRepeatAlarmInterval:J

.field public mAutoRunTrafficStatCollectorInterval:J

.field mContext:Landroid/content/Context;

.field private mGcmLockerPolicyInterval:J

.field private mGcmLockerRepeatAlarmInterval:J

.field final mHandler:Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastSPCMWorkingTime:J

.field private mLastTimeChangeClockTime:J

.field private mLastTimeChangeRealtime:J

.field private mMARsAppLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsAppLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsAutoRunPolicyAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsAutoRunPolicyTrafficStatAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsAutoRunRepeatAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsAutoRunTrafficStatRepeatAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsGCMLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

.field private mMARsGCMLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

.field private mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

.field private mPolicySBikeIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPolicyUDSIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mScpmUpdateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTriggerAutoRunPolicyImmediately:Z

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V
    .locals 4
    .param p1, "policyManager"    # Lcom/android/server/am/MARsPolicyManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v2, 0x493e0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastSPCMWorkingTime:J

    .line 54
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/server/am/MARsTrigger;->SPCM_COOL_TIME:J

    .line 66
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mAppLockerPolicyInterval:J

    .line 67
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mAppLockerRepeatAlarmInterval:J

    .line 75
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mGcmLockerPolicyInterval:J

    .line 76
    iput-wide v2, p0, Lcom/android/server/am/MARsTrigger;->mGcmLockerRepeatAlarmInterval:J

    .line 91
    iput-wide v2, p0, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    .line 92
    iput-wide v2, p0, Lcom/android/server/am/MARsTrigger;->mAutoRunRepeatAlarmInterval:J

    .line 93
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mTriggerAutoRunPolicyImmediately:Z

    .line 310
    new-instance v0, Lcom/android/server/am/MARsTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$1;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 421
    new-instance v0, Lcom/android/server/am/MARsTrigger$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$2;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 516
    new-instance v0, Lcom/android/server/am/MARsTrigger$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$3;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyUDSIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 551
    new-instance v0, Lcom/android/server/am/MARsTrigger$4;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$4;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicySBikeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 576
    new-instance v0, Lcom/android/server/am/MARsTrigger$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$5;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 590
    new-instance v0, Lcom/android/server/am/MARsTrigger$6;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$6;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mScpmUpdateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 602
    new-instance v0, Lcom/android/server/am/MARsTrigger$7;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsTrigger$7;-><init>(Lcom/android/server/am/MARsTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 115
    iput-object p2, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;-><init>(Lcom/android/server/am/MARsTrigger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mHandler:Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/MARsTrigger;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mGcmLockerPolicyInterval:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunRepeatAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyTrafficStatAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunTrafficStatRepeatAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/MARsTrigger;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/server/am/MARsTrigger;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;
    .param p1, "x1"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/am/MARsTrigger;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/server/am/MARsTrigger;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;
    .param p1, "x1"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsTrigger;->triggerPolicy(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/MARsTrigger;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mGcmLockerRepeatAlarmInterval:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/MARsTrigger;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mLastSPCMWorkingTime:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/server/am/MARsTrigger;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;
    .param p1, "x1"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/android/server/am/MARsTrigger;->mLastSPCMWorkingTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/server/am/MARsTrigger;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mAppLockerRepeatAlarmInterval:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/am/MARsTrigger;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mAppLockerPolicyInterval:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/MARsTrigger;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/am/MARsTrigger;->mAutoRunRepeatAlarmInterval:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsTrigger;->policyNameToInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/am/MARsTrigger;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsTrigger;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/MARsTrigger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mTriggerAutoRunPolicyImmediately:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mMARsAppLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mMARsAppLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private actionToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 259
    const-string v0, "com.android.server.am.ACTION_MEMROY_NOT_ENOUGH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "Memory Not Enough"

    .line 290
    :goto_0
    return-object v0

    .line 261
    :cond_0
    const-string v0, "com.android.server.am.ACTION_ADJ14BG_KILLED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    const-string v0, "Adj 14 BG Killed"

    goto :goto_0

    .line 263
    :cond_1
    const-string v0, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    const-string v0, "User Set Always Optimizing"

    goto :goto_0

    .line 265
    :cond_2
    const-string v0, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    const-string v0, "Package Not Used Recently"

    goto :goto_0

    .line 267
    :cond_3
    const-string v0, "com.android.server.am.ACTION_SMUI_SETTING_TRUN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    const-string v0, "Ui Setting --- Turn On"

    goto :goto_0

    .line 269
    :cond_4
    const-string v0, "MARS_GCM_LOCKER_POLICY_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 270
    const-string v0, "GCM Locker 15s-kill"

    goto :goto_0

    .line 271
    :cond_5
    const-string v0, "MARS_GCM_LOCKER_REPEAT_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 272
    const-string v0, "GCM Locker 5Min-kill"

    goto :goto_0

    .line 273
    :cond_6
    const-string v0, "MARS_APP_LOCKER_POLICY_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 274
    const-string v0, "App Locker -- 10Min"

    goto :goto_0

    .line 275
    :cond_7
    const-string v0, "MARS_APP_LOCKER_REPEAT_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 276
    const-string v0, "App Locker 1Hour-kill"

    goto :goto_0

    .line 277
    :cond_8
    const-string v0, "MARS_AUTO_RUN_POLICY_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 278
    const-string v0, "Auto Run Off(China Model)"

    goto :goto_0

    .line 279
    :cond_9
    const-string v0, "MARS_AUTO_RUN_REPEAT_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 280
    const-string v0, "Auto Run 1Hour-kill"

    goto :goto_0

    .line 281
    :cond_a
    const-string v0, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 282
    const-string v0, "User Set Auto Run Off(China Model)"

    goto :goto_0

    .line 283
    :cond_b
    const-string v0, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 284
    const-string v0, "User Trigger Policy"

    goto/16 :goto_0

    .line 285
    :cond_c
    const-string v0, "com.android.server.am.MARS_TRIGGER_UDS_POLICY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 286
    const-string v0, "Trigger UDS(Ultra Data Saving) Policy"

    goto/16 :goto_0

    .line 287
    :cond_d
    const-string v0, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 288
    const-string v0, "Trigger S Bike Policy"

    goto/16 :goto_0

    .line 290
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 623
    :goto_0
    return-object v1

    .line 621
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private policyNameToInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "policyName"    # Ljava/lang/String;

    .prologue
    .line 294
    const-string/jumbo v0, "spcm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    .line 296
    :cond_0
    const-string/jumbo v0, "gcmlocker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const/4 v0, 0x2

    goto :goto_0

    .line 298
    :cond_1
    const-string v0, "applocker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    const/4 v0, 0x3

    goto :goto_0

    .line 300
    :cond_2
    const-string v0, "autorun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    const/4 v0, 0x4

    goto :goto_0

    .line 302
    :cond_3
    const-string/jumbo v0, "udspolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    const/4 v0, 0x5

    goto :goto_0

    .line 304
    :cond_4
    const-string/jumbo v0, "sbikepolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    const/4 v0, 0x6

    goto :goto_0

    .line 307
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAlarm(Ljava/lang/String;J)V
    .locals 8
    .param p1, "intentString"    # Ljava/lang/String;
    .param p2, "alarmTime"    # J

    .prologue
    const/4 v6, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 648
    const-string v1, "MARS_GCM_LOCKER_POLICY_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 650
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 653
    .local v0, "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 656
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 736
    :cond_1
    :goto_0
    return-void

    .line 659
    :cond_2
    const-string v1, "MARS_GCM_LOCKER_REPEAT_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 660
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_3

    .line 661
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 664
    .restart local v0    # "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    .line 667
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 670
    :cond_4
    const-string v1, "MARS_APP_LOCKER_POLICY_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 671
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsAppLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_5

    .line 672
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 675
    .restart local v0    # "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsAppLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 678
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger;->mMARsAppLockerPolicyAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 681
    :cond_6
    const-string v1, "MARS_APP_LOCKER_REPEAT_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 682
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsAppLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_7

    .line 683
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 686
    .restart local v0    # "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsAppLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    .line 689
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger;->mMARsAppLockerRepeatAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 692
    :cond_8
    const-string v1, "MARS_AUTO_RUN_POLICY_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 693
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_9

    .line 694
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 697
    .restart local v0    # "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 700
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 703
    :cond_a
    const-string v1, "MARS_AUTO_RUN_REPEAT_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 704
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunRepeatAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_b

    .line 705
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 708
    .restart local v0    # "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunRepeatAlarmIntent:Landroid/app/PendingIntent;

    .line 711
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_b
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunRepeatAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 714
    :cond_c
    const-string v1, "MARS_AUTO_RUN_POLICY_TRAFFIC_STAT_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 715
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyTrafficStatAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_d

    .line 716
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 719
    .restart local v0    # "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyTrafficStatAlarmIntent:Landroid/app/PendingIntent;

    .line 722
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_d
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyTrafficStatAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 725
    :cond_e
    const-string v1, "MARS_AUTO_RUN_TRAFFIC_STAT_REPEAT_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 726
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunTrafficStatRepeatAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_f

    .line 727
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 730
    .restart local v0    # "pendingIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunTrafficStatRepeatAlarmIntent:Landroid/app/PendingIntent;

    .line 733
    .end local v0    # "pendingIntent":Landroid/content/Intent;
    :cond_f
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger;->mMARsAutoRunTrafficStatRepeatAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method private triggerPolicy(ILjava/lang/String;)V
    .locals 2
    .param p1, "policynum"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 628
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/am/MARsTrigger;->triggerPolicyDelayed(ILjava/lang/String;J)V

    .line 629
    return-void
.end method

.method private triggerPolicyDelayed(ILjava/lang/String;J)V
    .locals 5
    .param p1, "policynum"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "delayMillis"    # J

    .prologue
    .line 632
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 634
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "policy-num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 635
    const-string/jumbo v2, "trigger-reason"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mHandler:Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

    const/16 v3, 0x385

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 638
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 639
    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mHandler:Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

    invoke-virtual {v2, v1, p3, p4}, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 640
    return-void
.end method

.method private triggerScpmUpdate()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mHandler:Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

    const/16 v1, 0x386

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;->sendEmptyMessage(I)Z

    .line 644
    return-void
.end method


# virtual methods
.method public registerReceiver(Z)V
    .locals 10
    .param p1, "boot"    # Z

    .prologue
    .line 158
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    sget-object v6, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    sget-object v6, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v6, "MARS_REQUEST_PKG_INFO"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v4, "policyFilter":Landroid/content/IntentFilter;
    const-string v6, "com.android.server.am.ACTION_MEMROY_NOT_ENOUGH"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v6, "com.android.server.am.ACTION_ADJ14BG_KILLED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v6, "MARS_GCM_LOCKER_POLICY_ALARM"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v6, "MARS_GCM_LOCKER_REPEAT_ALARM"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v6, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v6, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v6, "com.android.server.am.ACTION_SMUI_SETTING_TRUN_ON"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v6, "MARS_APP_LOCKER_POLICY_ALARM"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v6, "MARS_APP_LOCKER_REPEAT_ALARM"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v6, "MARS_AUTO_RUN_POLICY_ALARM"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v6, "MARS_AUTO_RUN_REPEAT_ALARM"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v6, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v6, "MARS_AUTO_RUN_POLICY_TRAFFIC_STAT_ALARM"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v6, "MARS_AUTO_RUN_TRAFFIC_STAT_REPEAT_ALARM"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v6, "android.intent.action.SET_RUNNING_LOCATION"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v0, "UserPolicyFilter":Landroid/content/IntentFilter;
    const-string v6, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v5, "scpmUpdateFilter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "sec.app.policy.UPDATE.MARs"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v6, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    iget-object v6, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    iget-object v6, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v8, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 196
    iget-object v6, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger;->mScpmUpdateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    if-eqz p1, :cond_0

    .line 199
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v3, "pkgFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v6, "package"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 203
    iget-object v6, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v2, "multiUserFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    iget-object v6, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/am/MARsTrigger;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    .end local v2    # "multiUserFilter":Landroid/content/IntentFilter;
    .end local v3    # "pkgFilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    if-nez v6, :cond_1

    .line 212
    iget-object v6, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;

    .line 213
    :cond_1
    return-void
.end method

.method public registerSBikeReceiver()V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v0, "policyFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v1, "com.android.server.am.MARS_CANCEL_SBIKE_MODE_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mPolicySBikeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    return-void
.end method

.method public registerUDSReceiver()V
    .locals 3

    .prologue
    .line 232
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 233
    .local v0, "policyFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.am.MARS_TRIGGER_UDS_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v1, "com.android.server.am.MARS_CANCEL_UDS_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mPolicyUDSIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    .line 127
    return-void
.end method

.method public unregisterReceiver(Z)V
    .locals 3
    .param p1, "multiUser"    # Z

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 223
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger;->mScpmUpdateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterSBikeReceiver()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mPolicySBikeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    return-void
.end method

.method public unregisterUDSReceiver()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/server/am/MARsTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsTrigger;->mPolicyUDSIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 241
    return-void
.end method
