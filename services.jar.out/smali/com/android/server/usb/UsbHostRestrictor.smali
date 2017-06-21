.class public Lcom/android/server/usb/UsbHostRestrictor;
.super Ljava/lang/Object;
.source "UsbHostRestrictor.java"


# static fields
.field private static final ALLOW:I = 0x0

.field private static final DISALLOW:I = 0x1

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "UsbHostRestrictor"

.field private static final USB_HOST_DISABLE_FILE_PATH:Ljava/lang/String; = "/sys/class/usb_notify/usb_control/disable"
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private static final USB_HOST_ENABLE_PATH:Ljava/lang/String; = "/sys/class/usb_notify"

.field private static final USB_HOST_PATH:Ljava/lang/String; = "/devices/virtual/host_notify"

.field private static final USB_HOST_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/host_notify"

.field private static final USB_RESTRICTION_INTENT:Ljava/lang/String; = "com.sec.enterprise.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

.field private static isMDMBlock:Z

.field private static isSIMBlock:Z

.field private static isUPSMBlock:Z

.field private static mCurrentSysNodeValue:Ljava/lang/String;

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mBootCompleted:Z

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private final mLock:Ljava/lang/Object;

.field private final mSubscriptionIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUEventHostObserver:Landroid/os/UEventObserver;

.field private final mUPSMReceiver:Landroid/content/BroadcastReceiver;

.field private final mUsbHostRestrictionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    const-string v0, "OFF"

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 110
    sput-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 111
    sput-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    .line 112
    sput-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    .line 115
    sput-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    .line 116
    sput-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mUsbDeviceManager"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mLock:Ljava/lang/Object;

    .line 168
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$1;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompleted:Z

    .line 288
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$2;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$2;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbHostRestrictionReceiver:Landroid/content/BroadcastReceiver;

    .line 322
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$3;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$3;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mSubscriptionIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 358
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$4;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$4;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUPSMReceiver:Landroid/content/BroadcastReceiver;

    .line 652
    new-instance v0, Lcom/android/server/usb/UsbHostRestrictor$5;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostRestrictor$5;-><init>(Lcom/android/server/usb/UsbHostRestrictor;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUEventHostObserver:Landroid/os/UEventObserver;

    .line 122
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 126
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 128
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUEventHostObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/host_notify"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbHostRestrictionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.sec.enterprise.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mSubscriptionIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mUPSMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->handleBootCompleteBroadcast()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->turnOnLcd()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 92
    sput-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    return p0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->showAlertDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->showToast()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->showMDMToast()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 92
    sput-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbHostRestrictor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 92
    sput-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostRestrictor;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getPowerManager()V

    return-void
.end method

.method private checkBuildType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 451
    const-string/jumbo v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "checkType":Ljava/lang/String;
    const-string/jumbo v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    const-string v0, "ENG"

    .line 463
    .local v0, "buildType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 457
    .end local v0    # "buildType":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    const-string v0, "USER"

    .restart local v0    # "buildType":Ljava/lang/String;
    goto :goto_0

    .line 460
    .end local v0    # "buildType":Ljava/lang/String;
    :cond_1
    const-string v0, "ENG"

    .restart local v0    # "buildType":Ljava/lang/String;
    goto :goto_0
.end method

.method private checkUsbBlockingCondition(Ljava/lang/String;)Z
    .locals 4
    .param p1, "disableValue"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 502
    const-string v2, "ENG"

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkBuildType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    const-string v1, "UsbHostRestrictor"

    const-string v2, "Cannot DISABLE USB at ENG BINARY"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_0
    return v0

    .line 505
    :cond_0
    const-string v2, "USER"

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->checkBuildType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 506
    const-string v2, "CHM"

    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 507
    const-string v2, "ON_ALL_SIM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ON_ALL_UPSM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ON_ALL_BOTH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ON_HOST_MDM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    :cond_1
    const-string v0, "UsbHostRestrictor"

    const-string v2, "DISABLE USB for USER BINARY and CMCC MODEL"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 511
    goto :goto_0

    .line 512
    :cond_2
    const-string v1, "OFF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 513
    const-string v1, "UsbHostRestrictor"

    const-string v2, "NOT DISABLE USB 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 516
    :cond_3
    const-string v1, "UsbHostRestrictor"

    const-string v2, "NOT DISABLE USB 2"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 520
    :cond_4
    const-string v2, "ON_ALL_UPSM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ON_ALL_BOTH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ON_HOST_MDM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 523
    :cond_5
    const-string v0, "UsbHostRestrictor"

    const-string v2, "DISABLE USB for USER BINARY and Ultra Power Save Mode or MDM block"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 524
    goto :goto_0

    .line 525
    :cond_6
    const-string v1, "OFF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 526
    const-string v1, "UsbHostRestrictor"

    const-string v2, "NOT DISABLE USB 3"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 529
    :cond_7
    const-string v1, "UsbHostRestrictor"

    const-string v2, "NOT DISABLE USB 4"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 534
    :cond_8
    const-string v1, "UsbHostRestrictor"

    const-string v2, "NOT DISABLE USB 5"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getPowerManager()V
    .locals 3

    .prologue
    .line 635
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    .line 637
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "UsbHost"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 638
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 640
    :cond_0
    return-void
.end method

.method private getUsbHostDisableSysNodeWritable()Z
    .locals 5

    .prologue
    .line 570
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/usb_notify"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    const/4 v1, 0x1

    .line 580
    .local v1, "writableHostSysNode":Z
    :goto_0
    const-string v2, "UsbHostRestrictor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writableHostSysNode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return v1

    .line 577
    .end local v1    # "writableHostSysNode":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "writableHostSysNode":Z
    goto :goto_0
.end method

.method private handleBootCompleteBroadcast()V
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompleted:Z

    .line 184
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->initSetUsbBlock()V

    .line 185
    monitor-exit v1

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initSetUsbBlock()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 403
    const/4 v0, -0x1

    .line 405
    .local v0, "count":I
    const-string v1, "UsbHostRestrictor"

    const-string/jumbo v2, "initSetUsbBlock STARTED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getAllSubInfoCount()I

    move-result v0

    .line 408
    if-nez v0, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 415
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    .line 417
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-eqz v1, :cond_4

    .line 418
    const-string v1, "UsbHostRestrictor"

    const-string v2, "SIM was never inserted and UPSM is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    const-string v1, "ON_ALL_BOTH"

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    .line 447
    :goto_1
    return-void

    .line 409
    :cond_1
    if-lez v0, :cond_2

    sput-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    goto :goto_0

    .line 410
    :cond_2
    if-gez v0, :cond_0

    .line 411
    sput-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 412
    const-string v1, "UsbHostRestrictor"

    const-string v2, "SUBINFO value is abnormal"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 424
    :cond_3
    const-string v1, "UsbHostRestrictor"

    const-string v2, "Can NOT Write Disable Sys Node to [ON] 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 426
    :cond_4
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-eqz v1, :cond_6

    .line 427
    const-string v1, "UsbHostRestrictor"

    const-string v2, "SIM was never inserted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 431
    const-string v1, "ON_ALL_SIM"

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto :goto_1

    .line 433
    :cond_5
    const-string v1, "UsbHostRestrictor"

    const-string v2, "Can NOT Write Disable Sys Node to [ON] 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 435
    :cond_6
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-eqz v1, :cond_8

    .line 436
    const-string v1, "UsbHostRestrictor"

    const-string v2, "SIM was already inserted, but UPSM is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 440
    const-string v1, "ON_ALL_UPSM"

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto :goto_1

    .line 442
    :cond_7
    const-string v1, "UsbHostRestrictor"

    const-string v2, "Can NOT Write Disable Sys Node to [ON] 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 445
    :cond_8
    const-string v1, "UsbHostRestrictor"

    const-string/jumbo v2, "isSIMBlock, isUPSMBlock are false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isUsbBlocked()Z
    .locals 3

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 619
    .local v0, "returnUsbBlockState":Z
    sget-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    const/4 v0, 0x1

    .line 631
    :goto_0
    return v0

    .line 622
    :cond_0
    sget-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    const-string v2, "OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 624
    const/4 v0, 0x0

    goto :goto_0

    .line 626
    :cond_1
    const-string v1, "UsbHostRestrictor"

    const-string v2, "Current USB BLOCK STATE is UNKNOWN!! So USB is UNBLOCKED as a default value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readDisableSysNodefromFile()Ljava/lang/String;
    .locals 5

    .prologue
    .line 540
    const-string v1, ""

    .line 544
    .local v1, "returnVal":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/usb_notify/usb_control/disable"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 553
    :goto_0
    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 557
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v3, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    .line 563
    :goto_1
    return-object v1

    .line 546
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Failed to read from DISABLE FILE"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const-string v2, "OFF"

    sput-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 560
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v3, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showAlertDialog()V
    .locals 5

    .prologue
    .line 586
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 587
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SettingsReceiverActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string v2, "cmcc_block_usb"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 589
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 592
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "UsbHostRestrictor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start activity to show the USB BLOCK Dialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showMDMToast()V
    .locals 4

    .prologue
    .line 606
    const-string v2, "UsbHostRestrictor"

    const-string/jumbo v3, "showMDMToast"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 610
    .local v0, "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 612
    .local v1, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    .line 614
    .end local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_0
    return-void
.end method

.method private showToast()V
    .locals 2

    .prologue
    .line 600
    const-string v0, "UsbHostRestrictor"

    const-string/jumbo v1, "showToast"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->showUsbBlockToastbyUPSM()V

    .line 603
    return-void
.end method

.method private turnOnLcd()V
    .locals 4

    .prologue
    .line 643
    const-string v0, "UsbHostRestrictor"

    const-string/jumbo v1, "turnOnLcd :: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getPowerManager()V

    .line 645
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 646
    :cond_0
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 647
    :cond_1
    return-void
.end method

.method private writeDisableSysNodetoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "writeValue"    # Ljava/lang/String;

    .prologue
    .line 467
    const-string v1, "UsbHostRestrictor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write Disable Sys Node with ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v1, "OFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 471
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-eqz v1, :cond_2

    const-string p1, "ON_ALL_BOTH"

    .line 476
    :cond_0
    :goto_0
    const-string v1, "UsbHostRestrictor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write Disable Sys Node change to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_1
    :goto_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->checkUsbBlockingCondition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 485
    const-string v1, "/sys/class/usb_notify/usb_control/disable"

    invoke-static {v1, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sput-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 487
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager;->updateUsbNotificationRefresh()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_2
    return-void

    .line 472
    :cond_2
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-eqz v1, :cond_3

    const-string p1, "ON_ALL_SIM"

    goto :goto_0

    .line 473
    :cond_3
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-eqz v1, :cond_4

    const-string p1, "ON_ALL_UPSM"

    goto :goto_0

    .line 474
    :cond_4
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    if-eqz v1, :cond_0

    const-string p1, "ON_HOST_MDM"

    goto :goto_0

    .line 477
    :cond_5
    const-string v1, "ON_ALL_UPSM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ON_ALL_SIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    :cond_6
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isUPSMBlock:Z

    if-eqz v1, :cond_7

    const-string p1, "ON_ALL_BOTH"

    .line 479
    :cond_7
    const-string v1, "UsbHostRestrictor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write Disable Sys Node change to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 490
    :cond_8
    :try_start_1
    const-string v1, "/sys/class/usb_notify/usb_control/disable"

    const-string v2, "OFF"

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v1, "OFF"

    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 492
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "UsbHostRestrictor"

    const-string v2, "Failed to write to DISABLE FILE"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v1, "OFF"

    sput-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 497
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->setUsbDisableVariable(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    const-string v0, "USB Host Restrictor State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor mBootCompleted:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mBootCompleted:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor MultiSimManager.getAllSubInfoCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getAllSubInfoCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor Disable Sys Node Value :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor Disable Sys Node Writable :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor mCurrentSysNodeValue :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor UPSM ON/OFF :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor SUPPORT UPSM :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportUltraPowerSavingMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Restrictor MDM ON/OFF :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    monitor-exit v1

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
