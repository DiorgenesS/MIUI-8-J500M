.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$SdpHandler;,
        Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/LockSettingsService$CredentialUtil;,
        Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;,
        Lcom/android/server/LockSettingsService$CredentialInfo;,
        Lcom/android/server/LockSettingsService$KeystoreUtil;,
        Lcom/android/server/LockSettingsService$IKeystoreUtil;
    }
.end annotation


# static fields
.field private static final CLIENTNAME:Ljava/lang/String; = "clientname"

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "default_password"

.field private static final DEVICE_SUPPORT_KNOX:Z

.field private static final ENABLEEMERGENCYCALL:Ljava/lang/String; = "enableemergencycall"

.field private static final KNOX_RECOVERY_VERSION_KEY:Ljava/lang/String; = "lockscreen.knox_recovery_version"

.field private static final KNOX_RECOVERY_VERSION_LATEST:I = 0x1

.field private static final LOCKED:Ljava/lang/String; = "locked"

.field private static final LOCK_TYPE_BACKUP_PIN:I = 0x3

.field private static final LOCK_TYPE_BACKUP_PWD:I = 0x4

.field private static final LOCK_TYPE_NONE:I = -0x1

.field private static final LOCK_TYPE_PASSWORD:I = 0x2

.field private static final LOCK_TYPE_PATTERN:I = 0x1

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PHONENUMBER:Ljava/lang/String; = "phonenumber"

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final REMOTELOCK_INTENT:Ljava/lang/String; = "com.samsung.remotelock.CLIENT_WAKEUP"

.field private static final REMOTELOCK_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.REMOTELOCK"

.field private static final SAFE_DEBUG:Z

.field private static final SDP_LOCK:Ljava/lang/Object;

.field private static final SECURE_DEBUG:Z = false

.field private static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final TAG_KEYMGNT:Ljava/lang/String; = "LockSettingsService.KeyMgnt"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static final VERIF_TYPE_GATEKEEPER:I = 0x10

.field private static final VERIF_TYPE_NONE:I = 0x0

.field private static final VERIF_TYPE_NON_SDP_MDFPP:I = 0x4

.field private static final VERIF_TYPE_NON_SDP_NON_MDFPP:I = 0x8

.field private static final VERIF_TYPE_SDP:I = 0x1

.field private static final VERIF_TYPE_SDP_NON_MDFPP:I = 0x2

.field private static mSavePassword:Ljava/lang/String;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/IRemoteLockMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFirstCallToVold:Z

.field private mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field private mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mLockTypeForPasswordCheck:I

.field mPassword:Ljava/lang/String;

.field mRemoteCallback:Landroid/os/IRemoteCallback;

.field private mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

.field private final mStorage:Lcom/android/server/LockSettingsStorage;

.field private final mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 137
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/LockSettingsService;->SAFE_DEBUG:Z

    .line 150
    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/LockSettingsService;->SDP_LOCK:Ljava/lang/Object;

    .line 179
    invoke-static {}, Landroid/os/PersonaManager;->isKnoxSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LockSettingsService;->DEVICE_SUPPORT_KNOX:Z

    .line 2183
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "lockscreen.lockedoutpermanently"

    aput-object v3, v0, v1

    const-string/jumbo v3, "lockscreen.lockoutattemptdeadline"

    aput-object v3, v0, v2

    const-string/jumbo v3, "lockscreen.patterneverchosen"

    aput-object v3, v0, v5

    const-string/jumbo v3, "lockscreen.password_type"

    aput-object v3, v0, v6

    const/4 v3, 0x4

    const-string/jumbo v4, "lockscreen.password_type_alternate"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "lockscreen.password_salt"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "lockscreen.disabled"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "lockscreen.options"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "lockscreen.biometric_weak_fallback"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "lockscreen.biometricweakeverchosen"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "lockscreen.power_button_instantly_locks"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "lockscreen.passwordhistory"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "lock_pattern_autolock"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "lock_biometric_weak_flags"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "lock_pattern_visible_pattern"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "lock_pattern_tactile_feedback_enabled"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 2203
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v3, "lock_screen_owner_info_enabled"

    aput-object v3, v0, v1

    const-string/jumbo v3, "lock_screen_owner_info"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 2209
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lockscreen.password_salt"

    aput-object v3, v0, v1

    const-string/jumbo v3, "lockscreen.passwordhistory"

    aput-object v3, v0, v2

    const-string/jumbo v3, "lockscreen.password_type"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 2215
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v3, "lock_screen_owner_info_enabled"

    aput-object v3, v0, v1

    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 137
    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 957
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 145
    new-instance v0, Lcom/android/server/LockSettingsStrongAuth;

    invoke-direct {v0}, Lcom/android/server/LockSettingsStrongAuth;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    .line 156
    iput-object v4, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    .line 157
    iput-object v4, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    .line 158
    iput-object v4, p0, Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 991
    new-instance v0, Lcom/android/server/LockSettingsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$2;-><init>(Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 958
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 961
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    .line 964
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 965
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 966
    const-string v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 967
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 968
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 969
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 971
    new-instance v0, Lcom/android/server/LockSettingsStorage;

    new-instance v1, Lcom/android/server/LockSettingsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/LockSettingsStorage;-><init>(Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    .line 983
    new-instance v0, Lcom/android/server/LockSettingsService$KeystoreUtil;

    invoke-direct {v0, p0, v4}, Lcom/android/server/LockSettingsService$KeystoreUtil;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    .line 984
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    new-instance v0, Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/server/LockSettingsService$SdpHandler;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    .line 986
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 989
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LockSettingsService;II)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/LockSettingsService;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setKnoxRecoveryVersion(JI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStrongAuth;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/LockSettingsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeUser(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/LockSettingsService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/LockSettingsService;Landroid/service/gatekeeper/IGateKeeperService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Landroid/service/gatekeeper/IGateKeeperService;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object p1
.end method

.method static synthetic access$1600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/android/server/LockSettingsService;->SDP_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/LockSettingsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->clear(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LockSettingsService;Ljava/lang/String;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustPatternToBaseOne(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "oneBased"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 634
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 635
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "oneBased"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "result":Z
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, "zeroBased":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 641
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->changePassword(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 642
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result of pattern specified adjustment : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 643
    return v0
.end method

.method private adjustSDP(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 612
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 613
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "credential"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "userId"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 615
    const/4 v2, 0x0

    .line 616
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->isSdpSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    .line 618
    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 619
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->guaranteeCMK(Ljava/lang/String;I)Z

    move-result v2

    .line 621
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "encodedCredential":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 623
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z
    invoke-static {v3, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$400(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    .line 629
    .end local v0    # "encodedCredential":Ljava/lang/String;
    .end local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result of sdp specified adjustment : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 630
    return v2

    .line 625
    .restart local v0    # "encodedCredential":Ljava/lang/String;
    .restart local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_1
    const-string v3, "adjustSDP :: Unexpected condition..."

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkCMKExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 427
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->isCMKExists(II)Z

    move-result v0

    return v0
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1202
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1204
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1205
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1206
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1208
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.READ_CONTACTS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1204
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1214
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1215
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1216
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1218
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1214
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1223
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private checkSDPassword(Ljava/lang/String;)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1655
    const/4 v2, 0x0

    .line 1656
    .local v2, "result":Z
    const-string/jumbo v5, "enterprise_shared_device_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;

    move-result-object v1

    .line 1659
    .local v1, "mService":Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "loginUserName"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1660
    .local v4, "userName":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v2

    .line 1675
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .line 1663
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 1665
    :try_start_0
    invoke-interface {v1, p1, v4}, Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;->checkSDPasswordTIMA(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 1666
    const/4 v2, 0x0

    :cond_2
    :goto_1
    move v3, v2

    .line 1675
    .restart local v3    # "result":I
    goto :goto_0

    .line 1668
    .end local v3    # "result":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 1671
    :catch_0
    move-exception v0

    .line 1672
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    return-void
.end method

.method private clear(Ljava/lang/String;)V
    .locals 2
    .param p1, "credential"    # Ljava/lang/String;

    .prologue
    .line 508
    const-string v0, "LockSettingsService.SDP"

    const-string v1, "Clear credential..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    if-eqz p1, :cond_0

    .line 510
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 512
    :cond_0
    const/4 p1, 0x0

    .line 513
    return-void
.end method

.method private clearHash(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    const/4 v1, 0x0

    .line 558
    packed-switch p2, :pswitch_data_0

    .line 568
    :goto_0
    return-void

    .line 560
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    goto :goto_0

    .line 563
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    goto :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearSalt(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear salt... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 940
    :try_start_0
    const-string/jumbo v1, "lockscreen.password_salt"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :goto_0
    return-void

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private compareHash(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "lockType"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 647
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 648
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "credential"

    aput-object v6, v5, v4

    aput-object p1, v5, v3

    const-string/jumbo v6, "userId"

    aput-object v6, v5, v8

    const/4 v6, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "lockType"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 650
    const/4 v1, 0x0

    .line 651
    .local v1, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 652
    const-string v3, "Verify :: Empty credential..."

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 677
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Verify :: Matched? : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 678
    return v1

    .line 654
    :cond_1
    const/4 v0, 0x0

    .line 655
    .local v0, "hash":[B
    invoke-direct {p0, p2, p3}, Lcom/android/server/LockSettingsService;->getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v2

    .line 657
    .local v2, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-nez v2, :cond_2

    .line 658
    const-string v3, "Verify :: Failed to retrieve stored hash..."

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_2
    if-ne p3, v3, :cond_3

    .line 661
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 668
    :goto_1
    if-eqz v0, :cond_5

    iget-object v5, v2, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v3

    .line 671
    :goto_2
    if-nez v1, :cond_0

    iget-object v5, v2, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v5, v5

    const/16 v6, 0x48

    if-ne v5, v6, :cond_0

    .line 672
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashOriginal(Ljava/lang/String;I)[B

    move-result-object v0

    .line 673
    if-eqz v0, :cond_6

    iget-object v5, v2, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v3

    :goto_3
    goto :goto_0

    .line 663
    :cond_3
    if-ne p3, v8, :cond_4

    .line 664
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_1

    .line 666
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verify :: Unknown lock type... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v1, v4

    .line 668
    goto :goto_2

    :cond_6
    move v1, v4

    .line 673
    goto :goto_3
.end method

.method private doExtraAdjustment(Lcom/android/server/LockSettingsService$CredentialInfo;)Z
    .locals 5
    .param p1, "ci"    # Lcom/android/server/LockSettingsService$CredentialInfo;

    .prologue
    const/4 v4, 0x1

    .line 571
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 572
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "CredentialInfo"

    aput-object v3, v1, v2

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$CredentialInfo;->dump()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 583
    const/4 v0, 0x1

    .line 584
    .local v0, "result":Z
    iget v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->verifType:I

    packed-switch v1, :pswitch_data_0

    .line 607
    :cond_0
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of extra adjustment : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 608
    return v0

    .line 587
    :pswitch_1
    iget v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    if-ne v1, v4, :cond_0

    .line 588
    iget-object v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->adjustPatternToBaseOne(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 593
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->isSdpSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    const-string/jumbo v1, "doExtraAdjustment :: Migrate SDP... "

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 595
    iget-object v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->adjustSDP(Ljava/lang/String;I)Z

    move-result v0

    .line 596
    if-eqz v0, :cond_0

    .line 597
    iget v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->clearHash(II)V

    goto :goto_0

    .line 600
    :cond_1
    const-string/jumbo v1, "doExtraAdjustment :: Enroll knox credential..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 601
    iget-object v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->enrollKnoxCredential(Ljava/lang/String;II)V

    goto :goto_0

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private doLostVersionRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;)Z
    .locals 6
    .param p1, "ci"    # Lcom/android/server/LockSettingsService$CredentialInfo;

    .prologue
    const/4 v5, 0x1

    .line 730
    const/4 v1, 0x0

    .line 731
    .local v1, "result":Z
    iget-boolean v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    if-ne v2, v5, :cond_1

    .line 733
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 734
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "CredentialInfo"

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$CredentialInfo;->dump()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 736
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "encodedCredential":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 739
    const-string v2, "Migration - Verified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 740
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$400(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    .line 741
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/LockSettingsService$KeystoreUtil;->isLocked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    const-string v2, "Migration - Unexpected condition... reset keystore..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 743
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 744
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$400(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    .line 746
    :cond_0
    const-wide/16 v2, 0x1

    iget v4, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setKnoxRecoveryVersion(JI)V

    .line 747
    const/4 v1, 0x1

    .line 751
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result of lost data recovery : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 753
    .end local v0    # "encodedCredential":Ljava/lang/String;
    :cond_1
    return v1

    .line 749
    .restart local v0    # "encodedCredential":Ljava/lang/String;
    :cond_2
    const-string v2, "Migration - Unverified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doSelfRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;Lcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    .locals 5
    .param p1, "ci"    # Lcom/android/server/LockSettingsService$CredentialInfo;
    .param p2, "keystoreUtil"    # Lcom/android/server/LockSettingsService$IKeystoreUtil;

    .prologue
    .line 809
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 810
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "CredentialInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$CredentialInfo;->dump()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 812
    const/4 v0, 0x0

    .line 813
    .local v0, "response":Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    const/4 v1, 0x0

    .line 815
    .local v1, "result":Z
    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->isKeyMigrationRequired(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 816
    iget-boolean v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    if-eqz v2, :cond_2

    .line 817
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardKeyMigration(Ljava/lang/String;I)Z

    move-result v1

    .line 834
    :goto_0
    if-eqz v1, :cond_0

    .line 835
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->doExtraAdjustment(Lcom/android/server/LockSettingsService$CredentialInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 836
    const-wide/16 v2, 0x1

    iget v4, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setKnoxRecoveryVersion(JI)V

    .line 837
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->DONE:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    .line 841
    :cond_0
    if-nez v0, :cond_1

    .line 842
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->ERROR:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    .line 843
    :cond_1
    return-object v0

    .line 819
    :cond_2
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardHashMigration(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 821
    :cond_3
    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->isRecoveryRequired(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 822
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->doLostVersionRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 823
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->DONE:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    goto :goto_0

    .line 824
    :cond_4
    iget-boolean v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    if-eqz v2, :cond_5

    .line 825
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardKeyAdjustment(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 827
    :cond_5
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardHashAdjustment(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 831
    :cond_6
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->OK:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    goto :goto_0
.end method

.method private doVerifyBackupPassword(Ljava/lang/String;ZJIZ)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 13
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .param p6, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2479
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2481
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/server/LockSettingsStorage;->readBackupPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v5

    .line 2482
    .local v5, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz p6, :cond_2

    .line 2485
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2486
    const-string v3, "LockSettingsServiceKeystore"

    const-string/jumbo v4, "mdfpp keystore migrate start for swipe fingerprint"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    const/4 v3, 0x1

    move/from16 v0, p5

    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    .line 2491
    :cond_0
    new-instance v10, Lcom/android/server/LockSettingsService$8;

    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$8;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v3, p0

    move/from16 v4, p5

    move-object v6, p1

    move v7, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 2517
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 2518
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_1

    .line 2519
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/android/server/LockSettingsService;->getKeyType(I)I

    move-result v6

    move/from16 v0, p5

    invoke-virtual {v3, v0, v4, v6}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    :cond_1
    move-object v11, v2

    .line 2555
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v11, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return-object v11

    .line 2524
    .end local v11    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    new-instance v10, Lcom/android/server/LockSettingsService$9;

    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$9;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v3, p0

    move/from16 v4, p5

    move-object v6, p1

    move v7, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredentialBackupType(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 2550
    .restart local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_3

    .line 2551
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_3

    .line 2552
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/android/server/LockSettingsService;->getKeyType(I)I

    move-result v6

    move/from16 v0, p5

    invoke-virtual {v3, v0, v4, v6}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    :cond_3
    move-object v11, v2

    .line 2555
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v11    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0
.end method

.method private doVerifyBackupPin(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2371
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2373
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v1, p5}, Lcom/android/server/LockSettingsStorage;->readBackupPinHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v3

    .line 2374
    .local v3, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    new-instance v8, Lcom/android/server/LockSettingsService$7;

    invoke-direct {v8, p0}, Lcom/android/server/LockSettingsService$7;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v1, p0

    move v2, p5

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2401
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 2402
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v1, :cond_0

    .line 2403
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/LockSettingsService;->getKeyType(I)I

    move-result v4

    invoke-virtual {v1, p5, v2, v4}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    .line 2406
    :cond_0
    return-object v0
.end method

.method private doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 13
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1836
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1837
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1838
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Password can\'t be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1841
    :cond_0
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 1842
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v6, "password"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v6, "hasChallenge"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "challenge"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v6, "userId"

    aput-object v6, v3, v4

    const/4 v4, 0x7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 1844
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1845
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/LockSettingsService$5;

    invoke-direct {v4, p0}, Lcom/android/server/LockSettingsService$5;-><init>(Lcom/android/server/LockSettingsService;)V

    move/from16 v0, p5

    invoke-direct {p0, v3, v0, v4}, Lcom/android/server/LockSettingsService;->verifyKnoxCredential(Ljava/lang/String;ILcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 1863
    .local v2, "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 1901
    .end local v2    # "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return-object v2

    .line 1868
    :cond_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v5

    .line 1869
    .local v5, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    new-instance v10, Lcom/android/server/LockSettingsService$6;

    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$6;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v3, p0

    move/from16 v4, p5

    move-object v6, p1

    move v7, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v11

    .line 1896
    .local v11, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_2

    .line 1897
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_2

    .line 1898
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/server/LockSettingsService;->getKeyType(I)I

    move-result v6

    move/from16 v0, p5

    invoke-virtual {v3, v0, v4, v6}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    :cond_2
    move-object v2, v11

    .line 1901
    goto :goto_0
.end method

.method private doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 13
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1721
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1722
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1723
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Pattern can\'t be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1726
    :cond_0
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 1727
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v7, "pattern"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v7, "hasChallenge"

    aput-object v7, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x4

    const-string v7, "challenge"

    aput-object v7, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v7, "userId"

    aput-object v7, v3, v4

    const/4 v4, 0x7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 1729
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1730
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/LockSettingsService$3;

    invoke-direct {v4, p0}, Lcom/android/server/LockSettingsService$3;-><init>(Lcom/android/server/LockSettingsService;)V

    move/from16 v0, p5

    invoke-direct {p0, v3, v0, v4}, Lcom/android/server/LockSettingsService;->verifyKnoxCredential(Ljava/lang/String;ILcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 1748
    .local v2, "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 1805
    .end local v2    # "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return-object v2

    .line 1753
    :cond_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v5

    .line 1754
    .local v5, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v5, :cond_5

    iget-boolean v3, v5, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    if-eqz v3, :cond_5

    const/4 v12, 0x1

    .line 1757
    .local v12, "shouldReEnrollBaseZero":Z
    :goto_1
    if-eqz v12, :cond_6

    .line 1758
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1763
    .local v6, "patternToVerify":Ljava/lang/String;
    :goto_2
    new-instance v10, Lcom/android/server/LockSettingsService$4;

    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$4;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v3, p0

    move/from16 v4, p5

    move v7, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v11

    .line 1792
    .local v11, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v12, :cond_2

    .line 1794
    move/from16 v0, p5

    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/LockSettingsService;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1796
    :cond_2
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_3

    .line 1797
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->retainPassword(Ljava/lang/String;)V

    .line 1800
    :cond_3
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_4

    .line 1801
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_4

    .line 1802
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/LockSettingsService;->getKeyType(I)I

    move-result v7

    move/from16 v0, p5

    invoke-virtual {v3, v0, v4, v7}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    :cond_4
    move-object v2, v11

    .line 1805
    goto :goto_0

    .line 1754
    .end local v6    # "patternToVerify":Ljava/lang/String;
    .end local v11    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v12    # "shouldReEnrollBaseZero":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 1760
    .restart local v12    # "shouldReEnrollBaseZero":Z
    :cond_6
    move-object v6, p1

    .restart local v6    # "patternToVerify":Ljava/lang/String;
    goto :goto_2
.end method

.method private enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B
    .locals 6
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # Ljava/lang/String;
    .param p3, "toEnroll"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1596
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1597
    if-nez p2, :cond_0

    move-object v0, v4

    .line 1600
    .local v0, "enrolledCredentialBytes":[B
    :goto_0
    if-nez p3, :cond_1

    move-object v3, v4

    .line 1603
    .local v3, "toEnrollBytes":[B
    :goto_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    invoke-interface {v5, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2

    .line 1606
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v2, :cond_2

    .line 1626
    :goto_2
    return-object v4

    .line 1597
    .end local v0    # "enrolledCredentialBytes":[B
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v3    # "toEnrollBytes":[B
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 1600
    .restart local v0    # "enrolledCredentialBytes":[B
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_1

    .line 1612
    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v3    # "toEnrollBytes":[B
    :cond_2
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    const v5, 0x61000

    if-ne v4, v5, :cond_3

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1614
    const-string v4, "LockSettingsServiceKeystore"

    const-string/jumbo v5, "mdfpp keystore migrate start for fingerprint"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    const/4 v4, 0x1

    invoke-direct {p0, p3, p4, v4}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    .line 1619
    :cond_3
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 1620
    .local v1, "hash":[B
    if-eqz v1, :cond_4

    .line 1621
    invoke-direct {p0, p3, p4}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    :goto_3
    move-object v4, v1

    .line 1626
    goto :goto_2

    .line 1624
    :cond_4
    const-string v4, "LockSettingsService"

    const-string v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private enrollCredentialBackupType([BLjava/lang/String;Ljava/lang/String;I)[B
    .locals 6
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # Ljava/lang/String;
    .param p3, "toEnroll"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3314
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3315
    if-nez p2, :cond_0

    move-object v0, v4

    .line 3318
    .local v0, "enrolledCredentialBytes":[B
    :goto_0
    if-nez p3, :cond_1

    move-object v3, v4

    .line 3321
    .local v3, "toEnrollBytes":[B
    :goto_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    invoke-interface {v5, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2

    .line 3324
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v2, :cond_2

    .line 3333
    :goto_2
    return-object v4

    .line 3315
    .end local v0    # "enrolledCredentialBytes":[B
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v3    # "toEnrollBytes":[B
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 3318
    .restart local v0    # "enrolledCredentialBytes":[B
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_1

    .line 3328
    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v3    # "toEnrollBytes":[B
    :cond_2
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 3329
    .local v1, "hash":[B
    if-nez v1, :cond_3

    .line 3331
    const-string v4, "LockSettingsService"

    const-string v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v4, v1

    .line 3333
    goto :goto_2
.end method

.method private enrollKnoxCredential(Ljava/lang/String;II)V
    .locals 7
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "lockType"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 898
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 899
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "credential"

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    const-string/jumbo v3, "userId"

    aput-object v3, v2, v6

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "lockType"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 901
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 902
    const-string v2, "Enroll : Empty credential..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->isSdpSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 904
    const-string v2, "Enroll : SDP supported..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 905
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkCMKExists(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 906
    const/4 v0, 0x0

    .line 907
    .local v0, "encodedCredential":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    .line 908
    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_0

    .line 909
    if-ne p3, v5, :cond_2

    .line 910
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->onPatternChange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    :goto_1
    if-eqz v0, :cond_0

    .line 917
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z
    invoke-static {v2, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$400(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    goto :goto_0

    .line 911
    :cond_2
    if-ne p3, v6, :cond_3

    .line 912
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->onPasswordChange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 914
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enroll : Unknown lock type... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 920
    .end local v0    # "encodedCredential":Ljava/lang/String;
    .end local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_4
    const-string v2, "Enroll : CMK not found... Unexpected condition..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 923
    :cond_5
    const-string v2, "Enroll : SDP not supported..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 925
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->storeHash(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 926
    const-string v2, "Enroll : Stored hashed credential..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 927
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->isLocked(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 928
    const-string v2, "Enroll : Keystore is locked... Reset keystore due to no choice"

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 929
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 931
    :cond_6
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z
    invoke-static {v2, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$400(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private getCurrentHandle(I)[B
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1412
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->getStoredCredentialType(I)I

    move-result v2

    .line 1413
    .local v2, "currentHandleType":I
    packed-switch v2, :pswitch_data_0

    .line 1434
    :pswitch_0
    const/4 v1, 0x0

    .line 1439
    .local v1, "currentHandle":[B
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-nez v1, :cond_0

    .line 1440
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stored handle type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] but no handle available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_0
    return-object v1

    .line 1415
    .end local v1    # "currentHandle":[B
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 1416
    .local v0, "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 1419
    .restart local v1    # "currentHandle":[B
    :cond_1
    goto :goto_0

    .line 1421
    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 1422
    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 1425
    .restart local v1    # "currentHandle":[B
    :cond_2
    goto :goto_0

    .line 1427
    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readBackupPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 1428
    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 1431
    .restart local v1    # "currentHandle":[B
    :cond_3
    goto :goto_0

    .line 1413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getCurrentHandleBackupType(II)[B
    .locals 5
    .param p1, "userId"    # I
    .param p2, "currentHandleType"    # I

    .prologue
    const/4 v1, 0x0

    .line 3284
    packed-switch p2, :pswitch_data_0

    .line 3299
    const/4 v1, 0x0

    .line 3304
    .local v1, "currentHandle":[B
    :goto_0
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    if-nez v1, :cond_0

    .line 3305
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stored handle Backup type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] but no handle available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    :cond_0
    return-object v1

    .line 3286
    .end local v1    # "currentHandle":[B
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/LockSettingsStorage;->readBackupPinHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 3287
    .local v0, "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 3290
    .restart local v1    # "currentHandle":[B
    :cond_1
    goto :goto_0

    .line 3292
    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/LockSettingsStorage;->readBackupPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 3293
    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 3296
    .restart local v1    # "currentHandle":[B
    :cond_2
    goto :goto_0

    .line 3284
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEDMInstance()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1698
    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "encodedCredential":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    .line 490
    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_0

    .line 491
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/pm/PersonaManagerService;->getEncodedPassword(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 493
    :cond_0
    return-object v0
.end method

.method private declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2238
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v2, :cond_0

    .line 2239
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2253
    :goto_0
    monitor-exit p0

    return-object v1

    .line 2242
    :cond_0
    :try_start_1
    const-string v2, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2244
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 2245
    new-instance v1, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2246
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    .line 2249
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    goto :goto_0

    .line 2246
    :cond_1
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    goto :goto_1

    .line 2252
    :cond_2
    const-string v2, "LockSettingsService"

    const-string v3, "Unable to acquire GateKeeperService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2238
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getKeyType(I)I
    .locals 4
    .param p1, "lockType"    # I

    .prologue
    .line 431
    const/4 v0, -0x1

    .line 432
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 444
    :goto_0
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getKeyType :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return v0

    .line 435
    :pswitch_0
    const/4 v0, 0x1

    .line 436
    goto :goto_0

    .line 439
    :pswitch_1
    const/4 v0, 0x3

    .line 440
    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getKnoxRecoveryVersion(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "ret":I
    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    const/16 v2, 0xc8

    if-gt p1, v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const-string/jumbo v3, "lockscreen.knox_recovery_version"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 535
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/LockSettingsService;->setKnoxRecoveryVersion(JI)V

    .line 540
    :goto_0
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery version for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 543
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return v0

    .line 537
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 2221
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2222
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 2223
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 2225
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    .locals 1

    .prologue
    .line 470
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method private getProfiles(I)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1353
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 1354
    .local v5, "um":Landroid/os/UserManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    .line 1358
    .local v6, "versionInfo":Landroid/os/Bundle;
    if-eqz v6, :cond_3

    const-string v7, "2.0"

    const-string/jumbo v8, "version"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1359
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1360
    .local v4, "uinfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1364
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    .end local v4    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    return-object v2

    .line 1369
    .restart local v4    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_1
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 1370
    .local v3, "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1371
    .local v1, "pi":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1372
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1377
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pi":Landroid/content/pm/UserInfo;
    .end local v3    # "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method private getStoredHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->getStoredHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method private getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStorage;->getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method private getVerificationType(II)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    .line 449
    const/4 v1, 0x0

    .line 450
    .local v1, "verificationType":I
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkCMKExists(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 451
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    const/4 v1, 0x1

    .line 465
    :cond_0
    :goto_0
    return v1

    .line 454
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 456
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 458
    .local v0, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-nez v0, :cond_3

    .line 459
    const/4 v1, 0x4

    goto :goto_0

    .line 460
    :cond_3
    iget v2, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v2, :cond_4

    .line 461
    const/16 v1, 0x8

    goto :goto_0

    .line 462
    :cond_4
    iget v2, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 463
    const/16 v1, 0x10

    goto :goto_0
.end method

.method private haveKnoxPassword(II)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    .line 1288
    const/4 v1, 0x0

    .line 1289
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 1291
    .local v2, "sdpEnabled":Z
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1292
    const/4 v1, 0x1

    .line 1312
    :goto_0
    return v1

    .line 1295
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1296
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v3

    iget-boolean v2, v3, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 1303
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkCMKExists(I)Z

    move-result v1

    goto :goto_0

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LockSettingsService"

    const-string/jumbo v4, "havePassword :: Error occured..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1304
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 1305
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v1

    goto :goto_0

    .line 1306
    :cond_3
    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    .line 1307
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v1

    goto :goto_0

    .line 1309
    :cond_4
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "havePassword :: Wrong condition... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isKeyMigrationRequired(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v0

    .line 760
    :cond_0
    return v0
.end method

.method private isKnoxUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, "ret":Z
    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    const/16 v2, 0xc8

    if-gt p1, v2, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    .line 481
    .local v0, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v1

    .line 484
    .end local v0    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_0
    return v1
.end method

.method private isRecoveryRequired(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 717
    const/4 v1, 0x0

    .line 718
    .local v1, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getKnoxRecoveryVersion(I)I

    move-result v0

    .line 721
    .local v0, "currentVersion":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 722
    const/4 v1, 0x1

    .line 725
    .end local v0    # "currentVersion":I
    :cond_0
    return v1
.end method

.method private isSdpSupported()Z
    .locals 1

    .prologue
    .line 422
    sget-boolean v0, Lcom/android/server/LockSettingsService;->DEVICE_SUPPORT_KNOX:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private migrateMDFPPKeystore(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2992
    const-string v2, "LockSettingsSerivceKeystore"

    const-string/jumbo v3, "this model was mdfpp keystore"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    if-nez p2, :cond_2

    .line 2994
    const-string v2, "LockSettingsSerivceKeystore"

    const-string/jumbo v3, "mdfpp keystore is password try MdfppMigrateKeystore"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    invoke-interface {p5, p3}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1, v4}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2996
    invoke-interface {p5, p3, v1, p1}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2997
    if-nez p4, :cond_0

    .line 2998
    const-string v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "hasn\'t challenge"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 3025
    :cond_0
    :goto_0
    return-object v1

    .line 3002
    :cond_1
    const-string v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "password value is wrong"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 3005
    :cond_2
    iget v2, p2, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v2, :cond_5

    .line 3006
    invoke-interface {p5, p3, p1}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3007
    .local v0, "hash":[B
    const-string v2, "LockSettingsSerivceKeystore"

    const-string/jumbo v3, "mdfpp keystore is pattern try MdfppMigrateKeystore"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    iget-object v2, p2, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3009
    invoke-interface {p5, p3}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1, v4}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3010
    const-string v1, "LockSettingsSerivceKeystore"

    const-string v2, "MdfppMigrateKeystore failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 3013
    :cond_3
    invoke-interface {p5, p3, v1, p1}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3014
    if-nez p4, :cond_0

    .line 3015
    const-string v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "hasn\'t challenge"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 3019
    :cond_4
    const-string v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "pattern value is wrong"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 3023
    .end local v0    # "hash":[B
    :cond_5
    const-string v2, "LockSettingsSerivceKeystore"

    const-string/jumbo v3, "this case would not happened"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private migrateMDFPPKeystore(Ljava/lang/String;IZ)Z
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "isFingerprint"    # Z

    .prologue
    .line 3030
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 3031
    .local v1, "ks":Landroid/security/KeyStore;
    const/4 v5, 0x1

    .line 3033
    .local v5, "result":Z
    const-string v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call MDFPPMigrateKeystore with userHandle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 3036
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 3037
    .local v2, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3038
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6, p2}, Landroid/security/KeyStore;->onUserAddedMDFPP(II)V

    .line 3039
    const-string v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onUserAddedMDFPP for userId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "with parentId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3043
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 3044
    .restart local v2    # "pi":Landroid/content/pm/UserInfo;
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 3045
    .local v3, "profileUid":I
    const-string v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "profileUid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    invoke-virtual {v1, v3, p1, p3}, Landroid/security/KeyStore;->migrateMDFPPKeystore(ILjava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3048
    const-string v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MdfppMigrateKeystore failed with profileUid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3050
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 3055
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    .end local v3    # "profileUid":I
    :cond_4
    return v5
.end method

.method private migrateOldData()V
    .locals 34

    .prologue
    .line 1034
    :try_start_0
    const-string/jumbo v31, "migrated"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_2

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1036
    .local v11, "cr":Landroid/content/ContentResolver;
    sget-object v10, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_1

    aget-object v29, v10, v15

    .line 1037
    .local v29, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-static {v11, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1038
    .local v30, "value":Ljava/lang/String;
    if-eqz v30, :cond_0

    .line 1039
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1036
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1043
    .end local v29    # "validSetting":Ljava/lang/String;
    .end local v30    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v31, "migrated"

    const-string/jumbo v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1044
    const-string v31, "LockSettingsService"

    const-string v32, "Migrated lock settings to new location"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    :cond_2
    const-string/jumbo v31, "migrated_user_specific"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_9

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string/jumbo v32, "user"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 1050
    .local v24, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1051
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 1052
    .local v28, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v25, 0x0

    .local v25, "user":I
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    .line 1054
    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .line 1055
    .local v27, "userId":I
    const-string/jumbo v6, "lock_screen_owner_info"

    .line 1056
    .local v6, "OWNER_INFO":Ljava/lang/String;
    const-string/jumbo v31, "lock_screen_owner_info"

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 1057
    .local v19, "ownerInfo":Ljava/lang/String;
    if-eqz v19, :cond_3

    .line 1058
    const-string/jumbo v31, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1059
    const-string v31, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move/from16 v2, v27

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1065
    :cond_3
    const-string/jumbo v7, "lock_screen_owner_info_enabled"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1068
    .local v7, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v31, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 1069
    .local v17, "ivalue":I
    if-eqz v17, :cond_5

    const/4 v13, 0x1

    .line 1070
    .local v13, "enabled":Z
    :goto_2
    const-string/jumbo v31, "lock_screen_owner_info_enabled"

    if-eqz v13, :cond_6

    const-wide/16 v32, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1077
    .end local v13    # "enabled":Z
    .end local v17    # "ivalue":I
    :cond_4
    :goto_4
    :try_start_2
    const-string/jumbo v31, "lock_screen_owner_info_enabled"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v27

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1052
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 1069
    .restart local v17    # "ivalue":I
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 1070
    .restart local v13    # "enabled":Z
    :cond_6
    const-wide/16 v32, 0x0

    goto :goto_3

    .line 1071
    .end local v13    # "enabled":Z
    .end local v17    # "ivalue":I
    :catch_0
    move-exception v12

    .line 1073
    .local v12, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 1074
    const-string/jumbo v31, "lock_screen_owner_info_enabled"

    const-wide/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 1188
    .end local v6    # "OWNER_INFO":Ljava/lang/String;
    .end local v7    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v19    # "ownerInfo":Ljava/lang/String;
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v25    # "user":I
    .end local v27    # "userId":I
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v20

    .line 1189
    .local v20, "re":Landroid/os/RemoteException;
    const-string v31, "LockSettingsService"

    const-string v32, "Unable to migrate old data"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1191
    .end local v20    # "re":Landroid/os/RemoteException;
    :cond_7
    :goto_5
    return-void

    .line 1080
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    .restart local v24    # "um":Landroid/os/UserManager;
    .restart local v25    # "user":I
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :try_start_3
    const-string/jumbo v31, "migrated_user_specific"

    const-string/jumbo v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1081
    const-string v31, "LockSettingsService"

    const-string v32, "Migrated per-user lock settings to new location"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v25    # "user":I
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9
    const-string/jumbo v31, "migrated_biometric_weak"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_c

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string/jumbo v32, "user"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 1087
    .restart local v24    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 1088
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v14, v0, :cond_b

    .line 1089
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .line 1090
    .restart local v27    # "userId":I
    const-string/jumbo v31, "lockscreen.password_type"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    .line 1093
    .local v22, "type":J
    const-string/jumbo v31, "lockscreen.password_type_alternate"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    .line 1096
    .local v8, "alternateType":J
    const-wide/32 v32, 0x8000

    cmp-long v31, v22, v32

    if-nez v31, :cond_a

    .line 1097
    const-string/jumbo v31, "lockscreen.password_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v27

    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1101
    :cond_a
    const-string/jumbo v31, "lockscreen.password_type_alternate"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1088
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1105
    .end local v8    # "alternateType":J
    .end local v22    # "type":J
    .end local v27    # "userId":I
    :cond_b
    const-string/jumbo v31, "migrated_biometric_weak"

    const-string/jumbo v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1106
    const-string v31, "LockSettingsService"

    const-string v32, "Migrated biometric weak to use the fallback instead"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    .end local v14    # "i":I
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c
    const-string/jumbo v31, "migrated_lockscreen_disabled"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_11

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string/jumbo v32, "user"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 1115
    .restart local v24    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 1116
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v26

    .line 1117
    .local v26, "userCount":I
    const/16 v21, 0x0

    .line 1118
    .local v21, "switchableUsers":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_7
    move/from16 v0, v26

    if-ge v14, v0, :cond_e

    .line 1119
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v31 .. v31}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v31

    if-eqz v31, :cond_d

    .line 1120
    add-int/lit8 v21, v21, 0x1

    .line 1118
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 1124
    :cond_e
    const/16 v31, 0x1

    move/from16 v0, v21

    move/from16 v1, v31

    if-le v0, v1, :cond_10

    .line 1125
    const/4 v14, 0x0

    :goto_8
    move/from16 v0, v26

    if-ge v14, v0, :cond_10

    .line 1126
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    .line 1128
    .local v16, "id":I
    const-string/jumbo v31, "lockscreen.disabled"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 1129
    const-string/jumbo v31, "lockscreen.disabled"

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1125
    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1134
    .end local v16    # "id":I
    :cond_10
    const-string/jumbo v31, "migrated_lockscreen_disabled"

    const-string/jumbo v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1135
    const-string v31, "LockSettingsService"

    const-string v32, "Migrated lockscreen disabled flag"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    .end local v14    # "i":I
    .end local v21    # "switchableUsers":I
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v26    # "userCount":I
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_11
    const-string/jumbo v31, "migrated_clear_locktype_if_no_password"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_16

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string/jumbo v32, "user"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 1140
    .restart local v24    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 1141
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_9
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v14, v0, :cond_15

    .line 1142
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .line 1143
    .restart local v27    # "userId":I
    const/16 v31, 0x64

    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    .line 1144
    const-string/jumbo v31, "lockscreen.password_type"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    .line 1147
    .restart local v22    # "type":J
    const-wide/32 v32, 0x20000

    cmp-long v31, v22, v32

    if-eqz v31, :cond_12

    const-wide/32 v32, 0x30000

    cmp-long v31, v22, v32

    if-eqz v31, :cond_12

    const-wide/32 v32, 0x40000

    cmp-long v31, v22, v32

    if-eqz v31, :cond_12

    const-wide/32 v32, 0x50000

    cmp-long v31, v22, v32

    if-eqz v31, :cond_12

    const-wide/32 v32, 0x60000

    cmp-long v31, v22, v32

    if-nez v31, :cond_14

    .line 1152
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v31

    if-nez v31, :cond_13

    .line 1153
    const-string/jumbo v31, "lockscreen.password_type"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1141
    .end local v22    # "type":J
    :cond_13
    :goto_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 1157
    .restart local v22    # "type":J
    :cond_14
    const-wide/32 v32, 0x10000

    cmp-long v31, v22, v32

    if-nez v31, :cond_13

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v31

    if-nez v31, :cond_13

    .line 1159
    const-string/jumbo v31, "lockscreen.password_type"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    goto :goto_a

    .line 1166
    .end local v22    # "type":J
    .end local v27    # "userId":I
    :cond_15
    const-string/jumbo v31, "migrated_clear_locktype_if_no_password"

    const-string/jumbo v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1167
    const-string v31, "LockSettingsService"

    const-string v32, "Migrated clear locktype if No password."

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    .end local v14    # "i":I
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_16
    const-string/jumbo v31, "migrated_lockscreen_fingerprintkey"

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_7

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string/jumbo v32, "user"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 1172
    .restart local v24    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 1173
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_b
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v14, v0, :cond_18

    .line 1174
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .line 1175
    .restart local v27    # "userId":I
    const-string/jumbo v31, "lockscreen.password_type"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    .line 1178
    .restart local v22    # "type":J
    const-string/jumbo v31, "lockscreen.password_type_alternate"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    .line 1181
    .restart local v8    # "alternateType":J
    const-wide/32 v32, 0x61000

    cmp-long v31, v22, v32

    if-nez v31, :cond_17

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 1173
    :cond_17
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 1185
    .end local v8    # "alternateType":J
    .end local v22    # "type":J
    .end local v27    # "userId":I
    :cond_18
    const-string/jumbo v31, "migrated_lockscreen_fingerprintkey"

    const-string/jumbo v32, "true"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1186
    const-string v31, "LockSettingsService"

    const-string v32, "Migrated lockscreen fingerprint key flag"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5
.end method

.method private protect(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "credential"    # Ljava/lang/String;

    .prologue
    .line 497
    const/4 v1, 0x0

    .line 498
    .local v1, "protectedCredential":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 500
    .local v0, "credentialBytes":[B
    new-instance v1, Ljava/lang/String;

    .end local v1    # "protectedCredential":Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 502
    .restart local v1    # "protectedCredential":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->zeroOut([B)V

    .line 504
    .end local v0    # "credentialBytes":[B
    :cond_0
    return-object v1
.end method

.method private removeUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 2149
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->removeUser(I)V

    .line 2150
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStrongAuth;->removeUser(I)V

    .line 2152
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 2153
    .local v2, "ks":Landroid/security/KeyStore;
    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 2156
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .line 2157
    .local v1, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v1, :cond_0

    .line 2158
    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2163
    .end local v1    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_0
    :goto_0
    return-void

    .line 2160
    :catch_0
    move-exception v0

    .line 2161
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "LockSettingsService"

    const-string/jumbo v4, "unable to clear GK secure user id"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveSDPassword(Ljava/lang/String;)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1631
    const/4 v2, 0x0

    .line 1632
    .local v2, "result":Z
    const-string/jumbo v5, "enterprise_shared_device_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;

    move-result-object v1

    .line 1635
    .local v1, "mService":Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "loginUserName"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1636
    .local v4, "userName":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v2

    .line 1651
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .line 1639
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 1641
    :try_start_0
    invoke-interface {v1, p1, v4}, Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;->saveSDPasswordInTIMA(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_3

    .line 1642
    const/4 v2, 0x0

    :cond_2
    :goto_1
    move v3, v2

    .line 1651
    .restart local v3    # "result":I
    goto :goto_0

    .line 1644
    .end local v3    # "result":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 1647
    :catch_0
    move-exception v0

    .line 1648
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private setKeystorePassword(Ljava/lang/String;I)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1385
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 1387
    .local v1, "ks":Landroid/security/KeyStore;
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 1388
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1389
    .local v2, "pi":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    goto :goto_0

    .line 1391
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private setKnoxRecoveryVersion(JI)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "userId"    # I

    .prologue
    .line 547
    const/16 v0, 0x64

    if-lt p3, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p3, v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const-string/jumbo v1, "lockscreen.knox_recovery_version"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 552
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recovery version for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has been set as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 555
    :cond_0
    return-void
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1245
    sget-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    const-string v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 1248
    :cond_0
    return-void
.end method

.method private storeHash(Ljava/lang/String;II)Z
    .locals 8
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "lockType"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 682
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 683
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "credential"

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    const-string/jumbo v5, "userId"

    aput-object v5, v4, v7

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "lockType"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 685
    const/4 v1, 0x0

    .line 686
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 687
    .local v0, "hash":[B
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 688
    const-string v4, "Enroll :: Empty credential..."

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 703
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    move v1, v2

    .line 704
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enroll :: Result of storing hash : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 705
    return v1

    .line 690
    :cond_1
    if-ne p3, v2, :cond_2

    .line 691
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 693
    if-eqz v0, :cond_0

    .line 694
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v4, v0, p2}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    goto :goto_0

    .line 695
    :cond_2
    if-ne p3, v7, :cond_3

    .line 696
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 697
    if-eqz v0, :cond_0

    .line 698
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v4, v0, p2}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    goto :goto_0

    .line 700
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enroll :: Unknown lock type... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 703
    goto :goto_1
.end method

.method private unlockKeystore(Ljava/lang/String;I)V
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1395
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 1397
    .local v1, "ks":Landroid/security/KeyStore;
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 1398
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v5, 0x0

    .line 1399
    .local v5, "result":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1400
    .local v3, "pi":Landroid/content/pm/UserInfo;
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    move-result v5

    .line 1401
    if-nez v5, :cond_0

    .line 1402
    const-string v2, "_nullPassword012"

    .line 1403
    .local v2, "nullPassword":Ljava/lang/String;
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6, v2}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    goto :goto_0

    .line 1406
    .end local v2    # "nullPassword":Ljava/lang/String;
    .end local v3    # "pi":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 21
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "challenge"    # J
    .param p7, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1907
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_2

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1909
    sget-object v17, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2034
    :cond_1
    :goto_0
    return-object v17

    .line 1912
    :cond_2
    sget-boolean v4, Lcom/android/server/LockSettingsService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_3

    .line 1914
    if-eqz p2, :cond_4

    .line 1915
    :try_start_0
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCredential credential= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " storedHash= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1923
    :cond_3
    :goto_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1924
    sget-object v17, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 1917
    :cond_4
    :try_start_1
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCredential credential= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " storedHash=  null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1918
    :catch_0
    move-exception v10

    .line 1919
    .local v10, "e":Ljava/lang/Exception;
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCredential "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1929
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p7

    .line 1930
    invoke-direct/range {v4 .. v9}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v17

    .line 1932
    .local v17, "ret":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v17, :cond_1

    .line 1962
    .end local v17    # "ret":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_6
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_b

    .line 1964
    :cond_7
    sget-object v17, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto/16 :goto_0

    .line 1936
    :cond_8
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v4, :cond_6

    .line 1937
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCredential storedHash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v12

    .line 1942
    .local v12, "hash":[B
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v12, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    .line 1943
    .local v14, "matched":Z
    if-nez v14, :cond_9

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    const/16 v5, 0x48

    if-ne v4, v5, :cond_9

    .line 1944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashOriginal(Ljava/lang/String;I)[B

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    .line 1947
    :cond_9
    if-eqz v14, :cond_a

    .line 1948
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 1950
    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v4, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1951
    if-nez p4, :cond_6

    .line 1952
    sget-object v17, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto/16 :goto_0

    .line 1958
    :cond_a
    sget-object v17, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto/16 :goto_0

    .line 1968
    .end local v12    # "hash":[B
    .end local v14    # "matched":Z
    :cond_b
    const/16 v18, 0x0

    .line 1969
    .local v18, "shouldReEnroll":Z
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 1970
    .local v9, "credBytes":[B
    if-eqz p4, :cond_f

    .line 1971
    const/16 v20, 0x0

    .line 1973
    .local v20, "token":[B
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    move/from16 v5, p1

    move-wide/from16 v6, p5

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v11

    .line 1975
    .local v11, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v16

    .line 1976
    .local v16, "responseCode":I
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_c

    .line 1977
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v19

    .line 1980
    .local v19, "time":I
    new-instance v15, Lcom/android/internal/widget/VerifyCredentialResponse;

    move/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2019
    .end local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v16    # "responseCode":I
    .end local v19    # "time":I
    .end local v20    # "token":[B
    .local v15, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_2
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    array-length v4, v9

    if-ge v13, v4, :cond_12

    .line 2020
    const/4 v4, 0x0

    aput-byte v4, v9, v13

    .line 2019
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1981
    .end local v13    # "i":I
    .end local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v16    # "responseCode":I
    .restart local v20    # "token":[B
    :cond_c
    if-nez v16, :cond_e

    .line 1982
    :try_start_3
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v20

    .line 1983
    if-nez v20, :cond_d

    .line 1985
    const-string v4, "LockSettingsService"

    const-string/jumbo v5, "verifyChallenge response had no associated payload"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_2

    .line 1988
    .end local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_d
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v18

    .line 1989
    new-instance v15, Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .restart local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_2

    .line 1992
    .end local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_e
    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_2

    .line 1994
    .end local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v16    # "responseCode":I
    :catch_1
    move-exception v10

    .line 1995
    .local v10, "e":Ljava/lang/NullPointerException;
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCredential/verifyChallenge storedHash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1996
    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_2

    .line 2000
    .end local v10    # "e":Ljava/lang/NullPointerException;
    .end local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v20    # "token":[B
    :cond_f
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    move/from16 v0, p1

    invoke-interface {v4, v0, v5, v9}, Landroid/service/gatekeeper/IGateKeeperService;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v11

    .line 2002
    .restart local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v16

    .line 2003
    .restart local v16    # "responseCode":I
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_10

    .line 2004
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v19

    .line 2007
    .restart local v19    # "time":I
    new-instance v15, Lcom/android/internal/widget/VerifyCredentialResponse;

    move/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 2008
    .restart local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_2

    .end local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v19    # "time":I
    :cond_10
    if-nez v16, :cond_11

    .line 2009
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v18

    .line 2010
    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_2

    .line 2012
    .end local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_11
    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    .restart local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_2

    .line 2014
    .end local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v16    # "responseCode":I
    :catch_2
    move-exception v10

    .line 2015
    .restart local v10    # "e":Ljava/lang/NullPointerException;
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCredential/verify storedHash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2016
    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v15    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_2

    .line 2022
    .end local v10    # "e":Ljava/lang/NullPointerException;
    .restart local v13    # "i":I
    :cond_12
    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_14

    .line 2024
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 2025
    if-eqz v18, :cond_13

    .line 2026
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_13
    :goto_4
    move-object/from16 v17, v15

    .line 2034
    goto/16 :goto_0

    .line 2028
    :cond_14
    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    .line 2029
    invoke-virtual {v15}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    if-lez v4, :cond_13

    .line 2030
    const/16 v4, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/server/LockSettingsService;->requireStrongAuth(II)V

    goto :goto_4
.end method

.method private verifyCredentialBackupType(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 17
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "challenge"    # J
    .param p7, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3339
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_2

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3341
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 3430
    :cond_1
    :goto_0
    return-object v12

    .line 3352
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3353
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 3356
    :cond_3
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v4, :cond_5

    .line 3357
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCredential storedHash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v11

    .line 3359
    .local v11, "hash":[B
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3360
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 3362
    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v4, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3363
    if-nez p4, :cond_6

    .line 3364
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 3370
    :cond_4
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 3373
    .end local v11    # "hash":[B
    :cond_5
    if-eqz p2, :cond_6

    .line 3374
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storedHash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    :cond_6
    const/4 v14, 0x0

    .line 3379
    .local v14, "shouldReEnroll":Z
    if-eqz p4, :cond_a

    .line 3380
    const/16 v16, 0x0

    .line 3381
    .local v16, "token":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move/from16 v5, p1

    move-wide/from16 v6, p5

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v10

    .line 3383
    .local v10, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v13

    .line 3384
    .local v13, "responseCode":I
    const/4 v4, 0x1

    if-ne v13, v4, :cond_7

    .line 3385
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v15

    .line 3388
    .local v15, "time":I
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v12, v15}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 3419
    .end local v15    # "time":I
    .end local v16    # "token":[B
    .local v12, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_1
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_d

    .line 3421
    if-eqz v14, :cond_1

    .line 3422
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3389
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v16    # "token":[B
    :cond_7
    if-nez v13, :cond_9

    .line 3390
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v16

    .line 3391
    if-nez v16, :cond_8

    .line 3393
    const-string v4, "LockSettingsService"

    const-string/jumbo v5, "verifyChallenge response had no associated payload"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .line 3396
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_8
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v14

    .line 3397
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .line 3400
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_9
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .line 3403
    .end local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v13    # "responseCode":I
    .end local v16    # "token":[B
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move/from16 v0, p1

    invoke-interface {v4, v0, v5, v6}, Landroid/service/gatekeeper/IGateKeeperService;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v10

    .line 3405
    .restart local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v13

    .line 3406
    .restart local v13    # "responseCode":I
    const/4 v4, 0x1

    if-ne v13, v4, :cond_b

    .line 3407
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v15

    .line 3410
    .restart local v15    # "time":I
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v12, v15}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 3411
    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v15    # "time":I
    :cond_b
    if-nez v13, :cond_c

    .line 3412
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v14

    .line 3413
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .line 3415
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_c
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .line 3424
    :cond_d
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3425
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    if-lez v4, :cond_1

    .line 3426
    const/16 v4, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/server/LockSettingsService;->requireStrongAuth(II)V

    goto/16 :goto_0
.end method

.method private verifyKnoxCredential(Ljava/lang/String;ILcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "keystoreUtil"    # Lcom/android/server/LockSettingsService$IKeystoreUtil;

    .prologue
    .line 847
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 848
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "credential"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "userId"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 849
    const-string v1, "Verification - Start!"

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 851
    const/4 v8, 0x0

    .line 852
    .local v8, "verifyResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 853
    const-string v1, "Verification - Unacceptable credential..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 891
    :cond_0
    :goto_0
    if-nez v8, :cond_1

    .line 892
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 893
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verification - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 894
    return-object v8

    .line 855
    :cond_2
    new-instance v0, Lcom/android/server/LockSettingsService$CredentialInfo;

    invoke-interface {p3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->getLockType()I

    move-result v3

    invoke-interface {p3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->getLockType()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/server/LockSettingsService;->getVerificationType(II)I

    move-result v4

    move-object v1, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsService$CredentialInfo;-><init>(Lcom/android/server/LockSettingsService;IIILjava/lang/String;)V

    .line 860
    .local v0, "ci":Lcom/android/server/LockSettingsService$CredentialInfo;
    invoke-direct {p0, v0, p3}, Lcom/android/server/LockSettingsService;->doSelfRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;Lcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    move-result-object v7

    .line 862
    .local v7, "recoveryResponse":Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    invoke-virtual {v7}, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->getResponseCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 887
    :pswitch_0
    const-string v1, "Verification - Failed to recovery..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 864
    :pswitch_1
    iget-boolean v1, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    if-eqz v1, :cond_3

    .line 865
    iget-object v1, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 867
    .local v6, "encodedCredential":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 868
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 869
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v2, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$500(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    goto :goto_0

    .line 873
    .end local v6    # "encodedCredential":Ljava/lang/String;
    :cond_3
    const/16 v1, 0x10

    iget v2, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->verifType:I

    if-ne v1, v2, :cond_4

    .line 874
    iget-object v1, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    iget v3, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->compareHash(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 875
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 876
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget-object v2, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z
    invoke-static {v1, v2, v3}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$500(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    goto :goto_0

    .line 880
    :cond_4
    const-string v1, "Verification - Unexpected condition..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 883
    :pswitch_2
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 884
    const-string v1, "Verification - Verification and Recovery completed!"

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 862
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private verifyPasswordSharedDevice(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3
    .param p1, "response"    # Lcom/android/internal/widget/VerifyCredentialResponse;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1679
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getEDMInstance()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1680
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v0

    .line 1681
    .local v0, "isSharedDevice":Z
    if-eqz v0, :cond_0

    .line 1683
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkSDPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1684
    const-string v1, "LockSettingsService.KeyMgnt"

    const-string v2, "check password true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1691
    .end local v0    # "isSharedDevice":Z
    :cond_0
    :goto_0
    return-object p1

    .line 1687
    .restart local v0    # "isSharedDevice":Z
    :cond_1
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0
.end method

.method private zeroOut(Ljava/lang/String;)V
    .locals 0
    .param p1, "buff"    # Ljava/lang/String;

    .prologue
    .line 522
    if-eqz p1, :cond_0

    .line 523
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 524
    :cond_0
    const/4 p1, 0x0

    .line 525
    return-void
.end method

.method private zeroOut([B)V
    .locals 2
    .param p1, "buff"    # [B

    .prologue
    const/4 v1, 0x0

    .line 516
    if-nez p1, :cond_0

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    array-length v0, p1

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 518
    const/4 p1, 0x0

    .line 519
    goto :goto_0
.end method


# virtual methods
.method public checkAppLockBackupPin(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2790
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2792
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2793
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockBackupkPinHash(I)[B

    move-result-object v2

    .line 2795
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2796
    const/4 v1, 0x1

    .line 2800
    :goto_0
    return v1

    .line 2799
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2800
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkAppLockFingerprintPassword(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2804
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2806
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2807
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockFingerprintPasswordHash(I)[B

    move-result-object v2

    .line 2809
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2810
    const/4 v1, 0x1

    .line 2815
    :goto_0
    return v1

    .line 2813
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2815
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkAppLockPassword(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2763
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2765
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2766
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockPasswordHash(I)[B

    move-result-object v2

    .line 2768
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2769
    const/4 v1, 0x1

    .line 2773
    :goto_0
    return v1

    .line 2772
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2773
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkAppLockPattern(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2777
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2778
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 2779
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockPatternHash(I)[B

    move-result-object v2

    .line 2781
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2782
    const/4 v1, 0x1

    .line 2786
    :goto_0
    return v1

    .line 2785
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2786
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkAppLockPin(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2749
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2751
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2752
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockPinHash(I)[B

    move-result-object v2

    .line 2754
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2755
    const/4 v1, 0x1

    .line 2759
    :goto_0
    return v1

    .line 2758
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2759
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkBackupPassword(Ljava/lang/String;IZ)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2464
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyBackupPassword(Ljava/lang/String;ZJIZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2465
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 2466
    const-string v1, "LockSettingsService"

    const-string v2, "checkBackupPassword( RESPONSE_OK )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    :cond_0
    return-object v0
.end method

.method public checkBackupPin(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2355
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyBackupPin(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2357
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 2358
    const-string v1, "LockSettingsService"

    const-string v2, "checkBackupPin( RESPONSE_OK )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    :cond_0
    return-object v0
.end method

.method public checkCISPassword(ILjava/lang/String;ILandroid/os/IRemoteCallback;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "remoteCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3531
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 3532
    .local v1, "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    const/4 v3, -0x1

    .line 3533
    .local v3, "failcount":I
    if-eqz v1, :cond_0

    .line 3535
    :try_start_0
    invoke-interface {v1, p2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 3548
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3549
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "result"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3551
    :try_start_1
    invoke-interface {p4, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3556
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 3536
    :catch_0
    move-exception v2

    .line 3537
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.remotelock.CLIENT_WAKEUP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3538
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.permission.REMOTELOCK"

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3540
    iput-object p4, p0, Lcom/android/server/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 3541
    iput p1, p0, Lcom/android/server/LockSettingsService;->mLockTypeForPasswordCheck:I

    .line 3542
    iput-object p2, p0, Lcom/android/server/LockSettingsService;->mPassword:Ljava/lang/String;

    .line 3543
    const-string v5, "LockSettingsService"

    const-string/jumbo v6, "failed checkRemoteLockPassword callback!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3552
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v2

    .line 3553
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v5, "LockSettingsService"

    const-string/jumbo v6, "failed sendResult callback!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkCarrierPassword(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2967
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2969
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2970
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readCarrierPasswordHash(I)[B

    move-result-object v2

    .line 2972
    .local v2, "storedHash":[B
    if-nez v2, :cond_1

    .line 2973
    const/4 v1, 0x1

    .line 2982
    :cond_0
    :goto_0
    return v1

    .line 2976
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2979
    .local v1, "matched":Z
    if-nez v1, :cond_0

    array-length v3, v2

    const/16 v4, 0x48

    if-ne v3, v4, :cond_0

    .line 2980
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashOriginal(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public checkFMMPassword(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2904
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2905
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 2906
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "password"

    aput-object v5, v3, v4

    aput-object p1, v3, v1

    const/4 v4, 0x2

    const-string/jumbo v5, "userId"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 2908
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2909
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readFMMPasswordHash(I)[B

    move-result-object v2

    .line 2911
    .local v2, "storedHash":[B
    if-nez v2, :cond_1

    .line 2929
    :cond_0
    :goto_0
    return v1

    .line 2915
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2919
    .local v1, "matched":Z
    if-nez v1, :cond_2

    array-length v3, v2

    const/16 v4, 0x48

    if-ne v3, v4, :cond_2

    .line 2920
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHashOriginal(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2924
    :cond_2
    if-eqz v1, :cond_0

    .line 2925
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_0

    .line 2926
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v3, p2, v4, v5}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public checkParentControlPassword([BI)Z
    .locals 3
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 2847
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2849
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsStorage;->readParentControlPasswordHash(I)[B

    move-result-object v1

    .line 2851
    .local v1, "storedHash":[B
    if-nez v1, :cond_0

    .line 2852
    const/4 v0, 0x1

    .line 2856
    :goto_0
    return v0

    .line 2855
    :cond_0
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 2856
    .local v0, "matched":Z
    goto :goto_0
.end method

.method public checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1812
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1813
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 1814
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->retainPassword(Ljava/lang/String;)V

    .line 1816
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 1817
    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->verifyPasswordSharedDevice(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1819
    :cond_1
    const-string v1, "LockSettingsService.KeyMgnt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 1823
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 1825
    :cond_2
    return-object v0
.end method

.method public checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1704
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1706
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 1707
    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->verifyPasswordSharedDevice(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1710
    :cond_0
    return-object v0
.end method

.method public checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2657
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2659
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2660
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPersonalModeLockBackupkPinHash(I)[B

    move-result-object v2

    .line 2662
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2663
    const/4 v1, 0x1

    .line 2668
    :goto_0
    return v1

    .line 2666
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2668
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2689
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2691
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2692
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPersonalModeLockFingerprintPasswordHash(I)[B

    move-result-object v2

    .line 2694
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2695
    const/4 v1, 0x1

    .line 2700
    :goto_0
    return v1

    .line 2698
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2700
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkPersonalModePassword(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2601
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2603
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2604
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPersonalModeLockPasswordHash(I)[B

    move-result-object v2

    .line 2606
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2607
    const/4 v1, 0x1

    .line 2612
    :goto_0
    return v1

    .line 2610
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2612
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkPersonalModePattern(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2630
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2631
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 2632
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPersonalModeLockPatternHash(I)[B

    move-result-object v2

    .line 2634
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2635
    const/4 v1, 0x1

    .line 2639
    :goto_0
    return v1

    .line 2638
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2639
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkPersonalModePin(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2572
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2574
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2575
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPersonalModeLockPinHash(I)[B

    move-result-object v2

    .line 2577
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2578
    const/4 v1, 0x1

    .line 2583
    :goto_0
    return v1

    .line 2581
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2583
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkSignatureBackupPin([BI)Z
    .locals 3
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2289
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2291
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsStorage;->readSignatureBackupPinHash(I)[B

    move-result-object v1

    .line 2293
    .local v1, "storedHash":[B
    if-nez v1, :cond_0

    .line 2294
    const/4 v0, 0x1

    .line 2299
    :goto_0
    return v0

    .line 2297
    :cond_0
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 2299
    .local v0, "matched":Z
    goto :goto_0
.end method

.method public checkVoldPassword(I)Z
    .locals 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2039
    iget-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    if-nez v0, :cond_0

    .line 2040
    const/4 v0, 0x0

    .line 2145
    :goto_0
    return v0

    .line 2042
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    .line 2044
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2054
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v12

    .line 2055
    .local v12, "service":Landroid/os/storage/IMountService;
    invoke-interface {v12}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    move-result-object v9

    .line 2056
    .local v9, "password":Ljava/lang/String;
    invoke-interface {v12}, Landroid/os/storage/IMountService;->clearPassword()V

    .line 2057
    if-nez v9, :cond_1

    .line 2058
    const/4 v0, 0x0

    goto :goto_0

    .line 2062
    :cond_1
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 2065
    .local v8, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string/jumbo v0, "content://com.sec.knox.provider/PasswordPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2066
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "getMaximumFailedPasswordsForDisable"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2070
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 2072
    const/4 v11, 0x0

    .line 2073
    .local v11, "resultMDM":I
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2074
    const-string/jumbo v0, "getMaximumFailedPasswordsForDisable"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2075
    if-lez v11, :cond_2

    .line 2076
    const-string v0, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check Password again due to PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2077
    const/4 v0, 0x0

    .line 2081
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2086
    .end local v11    # "resultMDM":I
    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2088
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 2090
    .local v10, "pw":Ljava/lang/String;
    invoke-virtual {p0, v9, p1}, Lcom/android/server/LockSettingsService;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_5

    .line 2093
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2094
    new-instance v7, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 2095
    .local v7, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v7, v10}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2098
    .end local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2079
    .end local v10    # "pw":Ljava/lang/String;
    .restart local v11    # "resultMDM":I
    :catch_0
    move-exception v0

    .line 2081
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2101
    .end local v11    # "resultMDM":I
    :catch_1
    move-exception v0

    .line 2105
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2107
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 2109
    .restart local v10    # "pw":Ljava/lang/String;
    invoke-virtual {p0, v9, p1}, Lcom/android/server/LockSettingsService;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_7

    .line 2112
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2113
    new-instance v7, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 2114
    .restart local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v7, v10}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2117
    .end local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2120
    .end local v10    # "pw":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2124
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->savedFingerprintPasswordExists(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2127
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 2128
    .restart local v10    # "pw":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-virtual {p0, v9, p1, v0}, Lcom/android/server/LockSettingsService;->checkBackupPassword(Ljava/lang/String;IZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_9

    .line 2129
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2130
    new-instance v7, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 2131
    .restart local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v7, v10}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 2132
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V

    .line 2134
    .end local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_8
    invoke-virtual {v9}, Ljava/lang/String;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2135
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2138
    .end local v10    # "pw":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 2142
    :cond_9
    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    .line 2145
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1252
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1253
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getCarrierLockPlusMode(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2937
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2938
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage;->getCarrierLockPlusMode()Z

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1260
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1262
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1263
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getParentControlPasswordHashSize(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2869
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/LockSettingsStorage;->readParentControlPasswordHash(I)[B

    move-result-object v0

    .line 2871
    .local v0, "storedHash":[B
    if-eqz v0, :cond_0

    .line 2872
    array-length v1, v0

    .line 2874
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1349
    sget-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureInfo(I)[B
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2268
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2270
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/LockSettingsStorage;->readSignatureHash(I)[B

    move-result-object v0

    .line 2272
    .local v0, "storedHash":[B
    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1268
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1270
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1274
    const-string/jumbo v2, "lock_pattern_autolock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1277
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1283
    .end local v0    # "ident":J
    :goto_1
    return-object v2

    .line 1277
    .restart local v0    # "ident":J
    :cond_0
    :try_start_1
    const-string v2, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1279
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1283
    .end local v0    # "ident":J
    :cond_1
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public haveAppLockBackupPin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockFingerprintPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockFingerprintPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2823
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPattern(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockPattern(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockPin(I)Z

    move-result v0

    return v0
.end method

.method public haveBackupPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasBackupPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveBackupPin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public haveCarrierPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2962
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasCarrierPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveFMMPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasFMMPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveParentControlPassword(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasParentControlPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1320
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsService;->haveKnoxPassword(II)Z

    move-result v0

    .line 1323
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    goto :goto_0
.end method

.method public havePattern(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1330
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsService;->haveKnoxPassword(II)Z

    move-result v0

    .line 1333
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    goto :goto_0
.end method

.method public havePersonalModeBackupPin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePersonalModeLockBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public havePersonalModeFingerprintPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2705
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePersonalModeLockFingerprintPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePersonalModePassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePersonalModeLockPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePersonalModePattern(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePersonalModeLockPattern(I)Z

    move-result v0

    return v0
.end method

.method public havePersonalModePin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePersonalModeLockPin(I)Z

    move-result v0

    return v0
.end method

.method public haveSignature(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveSignature(I)Z

    move-result v0

    return v0
.end method

.method public haveSignatureBackupPin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveSignatureBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "callback"    # Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3451
    const-string v3, "LockSettingsService"

    const-string/jumbo v4, "registerRemoteLockCallback!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3454
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/LockSettingsService;->mLockTypeForPasswordCheck:I

    if-ne v3, p1, :cond_1

    .line 3455
    const/4 v2, -0x1

    .line 3456
    .local v2, "failcount":I
    if-eqz p2, :cond_0

    .line 3458
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mPassword:Ljava/lang/String;

    invoke-interface {p2, v3}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3465
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3466
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "result"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3468
    :try_start_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3473
    :goto_0
    iput-object v5, p0, Lcom/android/server/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 3474
    iput-object v5, p0, Lcom/android/server/LockSettingsService;->mPassword:Ljava/lang/String;

    .line 3476
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "failcount":I
    :cond_1
    :goto_1
    return-void

    .line 3459
    .restart local v2    # "failcount":I
    :catch_0
    move-exception v1

    .line 3460
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "LockSettingsService"

    const-string/jumbo v4, "failed checkRemoteLockPassword callback!! after register"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 3469
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v1

    .line 3470
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "LockSettingsService"

    const-string/jumbo v4, "failed sendResult callback!! after register"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 2167
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2168
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2169
    return-void
.end method

.method public requestRemoteLockInfo(I)V
    .locals 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3559
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v10, 0x3

    if-ge v5, v10, :cond_1

    .line 3560
    move v7, v5

    .line 3561
    .local v7, "lockType":I
    const/4 v6, 0x0

    .line 3562
    .local v6, "lockState":Z
    const/4 v8, 0x0

    .line 3563
    .local v8, "message":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 3564
    .local v9, "phoneNumber":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 3565
    .local v4, "enableEmergencyCall":Z
    const/4 v1, 0x0

    .line 3567
    .local v1, "clientName":Ljava/lang/CharSequence;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "locked"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11, p1}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v6

    .line 3568
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "message"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11, p1}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 3569
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "phonenumber"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11, p1}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 3570
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "enableemergencycall"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11, p1}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v4

    .line 3571
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "clientname"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11, p1}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3573
    new-instance v10, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    invoke-direct {v10, v7, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {v10, v8}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v2

    .line 3578
    .local v2, "data":Lcom/android/internal/widget/RemoteLockInfo;
    if-eqz v6, :cond_0

    .line 3579
    iget-object v10, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 3580
    .local v0, "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    if-eqz v0, :cond_0

    .line 3582
    :try_start_0
    invoke-interface {v0, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3559
    .end local v0    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 3583
    .restart local v0    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    :catch_0
    move-exception v3

    .line 3584
    .local v3, "e":Landroid/os/RemoteException;
    const-string v10, "LockSettingsService"

    const-string/jumbo v11, "failed changeRemoteLockState callback!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 3590
    .end local v0    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .end local v1    # "clientName":Ljava/lang/CharSequence;
    .end local v2    # "data":Lcom/android/internal/widget/RemoteLockInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "enableEmergencyCall":Z
    .end local v6    # "lockState":Z
    .end local v7    # "lockType":I
    .end local v8    # "message":Ljava/lang/CharSequence;
    .end local v9    # "phoneNumber":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 1
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2179
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2180
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 2181
    return-void
.end method

.method public retainPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1340
    return-void
.end method

.method public sanitizePassword()V
    .locals 1

    .prologue
    .line 1343
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 1346
    :cond_0
    return-void
.end method

.method saveSharedDevicePassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1511
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getEDMInstance()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1512
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1513
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v0

    .line 1514
    .local v0, "isSharedDevice":Z
    if-eqz v0, :cond_0

    .line 1516
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->saveSDPassword(Ljava/lang/String;)Z

    .line 1520
    .end local v0    # "isSharedDevice":Z
    :cond_0
    return-void
.end method

.method public setAppLockBackupPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2734
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2736
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockBackupPinHash([BI)V

    .line 2738
    return-void
.end method

.method public setAppLockFingerprintPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2741
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2743
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockFingerprintPasswordHash([BI)V

    .line 2746
    return-void
.end method

.method public setAppLockPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2720
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2722
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockPasswordHash([BI)V

    .line 2724
    return-void
.end method

.method public setAppLockPattern(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2727
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2729
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockPatternHash([BI)V

    .line 2731
    return-void
.end method

.method public setAppLockPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2713
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2715
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockPinHash([BI)V

    .line 2717
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1227
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1228
    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1229
    return-void

    .line 1228
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setCarrierLockPlusEnabled(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2949
    return-void
.end method

.method public setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2420
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2421
    const/4 v0, 0x0

    .line 2422
    .local v0, "currentHandle":[B
    if-eqz p4, :cond_1

    .line 2423
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v0

    .line 2428
    :goto_0
    if-nez p1, :cond_2

    .line 2429
    const-string v2, "LockSettingsService"

    const-string/jumbo v3, "setLockBackupPassword( password is null )"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p3, p4}, Lcom/android/server/LockSettingsStorage;->writeBackupPasswordHash([BIZ)V

    .line 2459
    :cond_0
    :goto_1
    return-void

    .line 2425
    :cond_1
    const/4 v2, 0x4

    invoke-direct {p0, p3, v2}, Lcom/android/server/LockSettingsService;->getCurrentHandleBackupType(II)[B

    move-result-object v0

    goto :goto_0

    .line 2434
    :cond_2
    if-nez v0, :cond_4

    .line 2435
    if-eqz p2, :cond_3

    .line 2436
    const-string v2, "LockSettingsService"

    const-string v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :cond_3
    const/4 p2, 0x0

    .line 2440
    :cond_4
    const/4 v1, 0x0

    .line 2441
    .local v1, "enrolledHandle":[B
    if-eqz p4, :cond_5

    .line 2442
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 2447
    :goto_2
    if-eqz v1, :cond_6

    .line 2448
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3, p4}, Lcom/android/server/LockSettingsStorage;->writeBackupPasswordHash([BIZ)V

    .line 2454
    :goto_3
    if-eqz v1, :cond_0

    .line 2455
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v2, :cond_0

    .line 2456
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, p3, p1, v3}, Lcom/android/server/LockSettingsService$SdpHandler;->enroll(ILjava/lang/String;I)V

    goto :goto_1

    .line 2444
    :cond_5
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredentialBackupType([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_2

    .line 2450
    :cond_6
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to enroll backup Password"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 2313
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2314
    invoke-direct {p0, p3, v5}, Lcom/android/server/LockSettingsService;->getCurrentHandleBackupType(II)[B

    move-result-object v0

    .line 2317
    .local v0, "currentHandle":[B
    if-nez p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/server/LockSettingsService;->haveBackupPassword(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2318
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v2, :cond_0

    .line 2319
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-virtual {v2, p3, v5}, Lcom/android/server/LockSettingsService$SdpHandler;->removeKeyPair(II)V

    .line 2323
    :cond_0
    if-nez p1, :cond_2

    .line 2324
    const-string v2, "LockSettingsService"

    const-string/jumbo v3, "setLockBackupPin( password is null )"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p3}, Lcom/android/server/LockSettingsStorage;->writeBackupPinHash([BI)V

    .line 2350
    :cond_1
    :goto_0
    return-void

    .line 2329
    :cond_2
    if-nez v0, :cond_4

    .line 2330
    if-eqz p2, :cond_3

    .line 2331
    const-string v2, "LockSettingsService"

    const-string v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :cond_3
    const/4 p2, 0x0

    .line 2336
    :cond_4
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredentialBackupType([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 2337
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_5

    .line 2338
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLockBackupPin( writeBackupPinHash = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writeBackupPinHash([BI)V

    .line 2345
    :goto_1
    if-eqz v1, :cond_1

    .line 2346
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v2, :cond_1

    .line 2347
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p3, v3, v5}, Lcom/android/server/LockSettingsService$SdpHandler;->enroll(ILjava/lang/String;I)V

    goto :goto_0

    .line 2341
    :cond_5
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to enroll backup pin"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setLockCarrierPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2953
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2955
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeCarrierPasswordHash([BI)V

    .line 2956
    return-void
.end method

.method public setLockFMMPassword(Ljava/lang/String;I)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2881
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2882
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 2883
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "userId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 2885
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeFMMPasswordHash([BI)V

    .line 2888
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v0, :cond_0

    .line 2889
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2890
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/LockSettingsService$SdpHandler;->enroll(ILjava/lang/String;I)V

    .line 2893
    :cond_0
    return-void
.end method

.method public setLockParentControlPassword([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 2840
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2842
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStorage;->writeParentControlPasswordHash([BI)V

    .line 2843
    return-void
.end method

.method public setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 1526
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1527
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 1528
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "password"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string/jumbo v3, "savedCredential"

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    const/4 v3, 0x4

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 1531
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1532
    invoke-direct {p0, p1, p3, v5}, Lcom/android/server/LockSettingsService;->enrollKnoxCredential(Ljava/lang/String;II)V

    .line 1591
    :goto_0
    return-void

    .line 1536
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v0

    .line 1538
    .local v0, "currentHandle":[B
    if-nez p1, :cond_2

    .line 1539
    invoke-virtual {p0, p3}, Lcom/android/server/LockSettingsService;->haveBackupPassword(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1540
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 1542
    :cond_1
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v7, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    .line 1543
    invoke-direct {p0, v7, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    goto :goto_0

    .line 1547
    :cond_2
    if-nez v0, :cond_4

    .line 1548
    if-eqz p2, :cond_3

    .line 1549
    const-string v2, "LockSettingsService"

    const-string v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_3
    const/4 p2, 0x0

    .line 1554
    :cond_4
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 1555
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_6

    .line 1556
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    .line 1562
    :goto_1
    if-eqz v1, :cond_5

    .line 1563
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v2, :cond_5

    .line 1564
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lcom/android/server/LockSettingsService$SdpHandler;->setPassword(Ljava/lang/String;I)V

    .line 1568
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-virtual {v2, p3, v6}, Lcom/android/server/LockSettingsService$SdpHandler;->removeKeyPair(II)V

    .line 1589
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->saveSharedDevicePassword(Ljava/lang/String;)V

    goto :goto_0

    .line 1558
    :cond_6
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to enroll password"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1449
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1451
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1452
    const/4 v2, 0x1

    invoke-direct {p0, p1, p3, v2}, Lcom/android/server/LockSettingsService;->enrollKnoxCredential(Ljava/lang/String;II)V

    .line 1507
    :goto_0
    return-void

    .line 1456
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v0

    .line 1458
    .local v0, "currentHandle":[B
    if-nez p1, :cond_2

    .line 1459
    invoke-virtual {p0, p3}, Lcom/android/server/LockSettingsService;->haveBackupPassword(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1460
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 1462
    :cond_1
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v3, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 1463
    invoke-direct {p0, v3, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    goto :goto_0

    .line 1467
    :cond_2
    if-nez v0, :cond_4

    .line 1468
    if-eqz p2, :cond_3

    .line 1469
    const-string v2, "LockSettingsService"

    const-string v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_3
    const/4 p2, 0x0

    .line 1474
    :cond_4
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 1475
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_6

    .line 1476
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 1482
    :goto_1
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build.MODEL is ? : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    if-eqz v1, :cond_5

    .line 1499
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v2, :cond_5

    .line 1500
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lcom/android/server/LockSettingsService$SdpHandler;->setPassword(Ljava/lang/String;I)V

    .line 1505
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->saveSharedDevicePassword(Ljava/lang/String;)V

    goto :goto_0

    .line 1478
    :cond_6
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to enroll pattern"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1233
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1234
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1235
    return-void
.end method

.method public setPersonalModeFingerprintPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2679
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2681
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePersonalModeLockFingerprintPasswordHash([BI)V

    .line 2684
    return-void
.end method

.method public setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2649
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2651
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePersonalModeLocBackupkPinHash([BI)V

    .line 2653
    return-void
.end method

.method public setPersonalModeLockPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2593
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2595
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePersonalModeLockPasswordHash([BI)V

    .line 2597
    return-void
.end method

.method public setPersonalModeLockPattern(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2622
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2624
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePersonalModeLockPatternHash([BI)V

    .line 2626
    return-void
.end method

.method public setPersonalModeLockPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2564
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2566
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePersonalModeLockPinHash([BI)V

    .line 2568
    return-void
.end method

.method public setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "data"    # Lcom/android/internal/widget/RemoteLockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 3487
    iget v7, p2, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 3488
    .local v7, "type":I
    iget-boolean v6, p2, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    .line 3489
    .local v6, "set":Z
    iget-object v4, p2, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    .line 3490
    .local v4, "message":Ljava/lang/String;
    iget-object v5, p2, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    check-cast v5, Ljava/lang/String;

    .line 3491
    .local v5, "phoneNumber":Ljava/lang/String;
    iget-boolean v3, p2, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    .line 3492
    .local v3, "enableEmergencyCall":Z
    iget-object v1, p2, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    .line 3495
    .local v1, "clientName":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 3496
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "locked"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v6, p1}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 3497
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "message"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v4, p1}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3498
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "phonenumber"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v5, p1}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3499
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "enableemergencycall"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v3, p1}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 3500
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "clientname"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v1, p1}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3509
    :goto_0
    iget-object v8, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 3510
    .local v0, "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    if-eqz v0, :cond_0

    .line 3512
    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3519
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 3520
    .restart local v0    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    if-eqz v0, :cond_1

    .line 3522
    :try_start_1
    invoke-interface {v0, p2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3528
    :cond_1
    :goto_2
    return-void

    .line 3502
    .end local v0    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "locked"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v11, p1}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 3503
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "message"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v10, p1}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3504
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "phonenumber"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v10, p1}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3505
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "enableemergencycall"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v11, p1}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 3506
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "clientname"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v10, p1}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3513
    .restart local v0    # "callback":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    :catch_0
    move-exception v2

    .line 3514
    .local v2, "e":Landroid/os/RemoteException;
    const-string v8, "LockSettingsService"

    const-string/jumbo v9, "failed changeRemoteLockState callback!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 3523
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 3524
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v8, "LockSettingsService"

    const-string/jumbo v9, "failed changeRemoteLockState callback!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public setSignatureBackupPin([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2277
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2279
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStorage;->writeSignatureBackupPinHash([BI)V

    .line 2280
    return-void
.end method

.method public setSignatureInfo([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2262
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2263
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStorage;->writeSignatureHash([BI)V

    .line 2264
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1239
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1240
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1241
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 1021
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    .line 1023
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    :goto_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    .line 1028
    return-void

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Failure retrieving IGateKeeperService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "callback"    # Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3480
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3484
    :goto_0
    return-void

    .line 3482
    :cond_0
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasn\'t been registered!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 2173
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2174
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2175
    return-void
.end method

.method public updateCarrierLockPlusMode(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2942
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2943
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage;->updateCarrierLockPlusMode()Z

    move-result v0

    return v0
.end method

.method public verifyBackupPassword(Ljava/lang/String;JIZ)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .param p5, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2474
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyBackupPassword(Ljava/lang/String;ZJIZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyBackupPin(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2366
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyBackupPin(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1831
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1716
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method
