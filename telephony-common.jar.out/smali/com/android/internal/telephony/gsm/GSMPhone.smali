.class public Lcom/android/internal/telephony/gsm/GSMPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GSMPhone$1;,
        Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    }
.end annotation


# static fields
.field public static final CF_ICONKEY_VIDEO:Ljava/lang/String; = "cf_iconkey_video"

.field public static final CF_ICONKEY_VOICE:Ljava/lang/String; = "cf_iconkey_voice"

.field public static final CF_IMSIKEY:Ljava/lang/String; = "cf_imsikey"

.field public static final CIPHERING_KEY:Ljava/lang/String; = "ciphering_key"

.field static final EVENT_GET_AVAILABLE_NETWORK_COMPLETE:I = 0x64

.field private static final GLOBAL_CDMAMODE:I = 0x7

.field private static final GLOBAL_GLOBALMODE:I = 0x5

.field private static final GLOBAL_GSMMODE:I = 0x6

.field private static final LOCAL_DEBUG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSMPhone"

.field static PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = null

.field private static final SIMTYPE_RUIM:I = 0x0

.field private static final SIMTYPE_SIM:I = 0x1

.field private static final SIM_CDMAMODE:I = 0x3

.field private static final SIM_GLOBALMODE:I = 0x4

.field private static final SIM_GSMMODE:I = 0x2

.field private static final SIM_POWERCONNECT:I = 0xa

.field private static final SIM_POWERDISCONNECT:I = 0x9

.field private static final SIM_POWERDOWN:I = 0x0

.field private static final SIM_POWERUP:I = 0x1

.field private static final SIM_SETUPMENU:I = 0x8

.field private static final UNKNOWN_NETWORK_MODE:I = 0x63

.field private static final VDBG:Z = true

.field public static final VM_NUMBER:Ljava/lang/String; = "vm_number_key"

.field public static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_key_cdma"

.field public static final VM_SIM_IMSI:Ljava/lang/String; = "vm_sim_imsi_key"

.field private static final VOICECALL_TYPE_CS:I = 0x1

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VoLTE:I


# instance fields
.field mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field private final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private mEsn:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field private mMdn:Ljava/lang/String;

.field private mMeid:Ljava/lang/String;

.field private mMmiErrMsg:Ljava/lang/String;

.field public mMmiInitBySTK:Z

.field mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field private mPreferredNetworkType:I

.field private mPrlVersion:Ljava/lang/String;

.field mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

.field mSsnRegistrants:Landroid/os/RegistrantList;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    const-string v0, "ro.cdma.home.operator.numeric"

    sput-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    .prologue
    .line 317
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    .line 318
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 273
    const-string v1, "GSM"

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 205
    const/16 v0, 0x63

    iput v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPreferredNetworkType:I

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 228
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 234
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEsn:Ljava/lang/String;

    .line 235
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMeid:Ljava/lang/String;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    .line 249
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiErrMsg:Ljava/lang/String;

    .line 275
    instance-of v0, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_0

    .line 276
    check-cast p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .end local p2    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 280
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 282
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 283
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 285
    if-nez p4, :cond_1

    .line 286
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    new-instance v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMiuiIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    .line 287
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v1, 0x13

    invoke-virtual {v0, p0, v1, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x24

    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x34

    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerVoiceRadioBearerHoState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 302
    const/16 v0, 0x2e

    invoke-virtual {p0, p0, v0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 306
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_3

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x29

    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 312
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setProperties()V

    .line 313
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 323
    const-string v1, "GSM"

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V

    .line 205
    const/16 v0, 0x63

    iput v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPreferredNetworkType:I

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 228
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 234
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEsn:Ljava/lang/String;

    .line 235
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMeid:Ljava/lang/String;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    .line 249
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiErrMsg:Ljava/lang/String;

    .line 325
    instance-of v0, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_0

    .line 326
    check-cast p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .end local p2    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v8}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 330
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 332
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 333
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 335
    if-nez p4, :cond_1

    .line 336
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    new-instance v0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMiuiIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    .line 337
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 345
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x19

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1a

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v1, 0x13

    invoke-virtual {v0, p0, v1, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x24

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x34

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerVoiceRadioBearerHoState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 358
    const/16 v0, 0x2e

    invoke-virtual {p0, p0, v0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_4

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x29

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 368
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSMPhone: constructor: sub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setProperties()V

    .line 371
    return-void
.end method

.method private getVmSimImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1553
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vm_sim_imsi_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 898
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 899
    const/4 v1, 0x0

    .line 917
    :cond_0
    :goto_0
    return v1

    .line 902
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 903
    const-string v2, "GSMPhone"

    const-string v3, "MmiCode 0: rejectCall"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "GSMPhone"

    const-string v3, "reject failed"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 909
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 911
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    .line 912
    const-string v2, "GSMPhone"

    const-string v3, "MmiCode 0: hangupWaitingOrBackground"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 10
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 967
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 969
    .local v5, "len":I
    const/4 v7, 0x2

    if-le v5, v7, :cond_0

    .line 970
    const/4 v6, 0x0

    .line 1014
    :goto_0
    return v6

    .line 973
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 975
    .local v0, "call":Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v5, v6, :cond_2

    .line 977
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 978
    .local v2, "ch":C
    add-int/lit8 v1, v2, -0x30

    .line 979
    .local v1, "callIndex":I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;

    move-result-object v3

    .line 982
    .local v3, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v3, :cond_1

    if-lt v1, v6, :cond_1

    const/16 v7, 0x13

    if-gt v1, v7, :cond_1

    .line 983
    const-string v7, "GSMPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MmiCode 2: separate call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 991
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    .end local v3    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :catch_0
    move-exception v4

    .line 992
    .local v4, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v7, "GSMPhone"

    const-string v8, "separate failed"

    invoke-static {v7, v8, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 994
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 987
    .end local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    .restart local v1    # "callIndex":I
    .restart local v2    # "ch":C
    .restart local v3    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    :try_start_1
    const-string v7, "GSMPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "separate: invalid call index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 998
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    .end local v3    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_3

    .line 999
    const-string v7, "GSMPhone"

    const-string v8, "MmiCode 2: accept ringing call"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1007
    :catch_1
    move-exception v4

    .line 1008
    .restart local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string v7, "GSMPhone"

    const-string v8, "switch failed"

    invoke-static {v7, v8, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1010
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto/16 :goto_0

    .line 1003
    .end local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_3
    const-string v7, "GSMPhone"

    const-string v8, "MmiCode 2: switchWaitingOrHoldingAndActive"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 9
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 922
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 924
    .local v4, "len":I
    const/4 v7, 0x2

    if-le v4, v7, :cond_0

    .line 963
    :goto_0
    return v5

    .line 928
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 931
    .local v0, "call":Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v4, v6, :cond_2

    .line 932
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 933
    .local v2, "ch":C
    add-int/lit8 v1, v2, -0x30

    .line 935
    .local v1, "callIndex":I
    if-lt v1, v6, :cond_1

    const/16 v5, 0x13

    if-gt v1, v5, :cond_1

    .line 936
    const-string v5, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MmiCode 1: hangupConnectionByIndex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V

    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    :cond_1
    :goto_1
    move v5, v6

    .line 963
    goto :goto_0

    .line 942
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v7, :cond_4

    .line 943
    const-string v5, "GSMPhone"

    const-string v7, "MmiCode 1: hangup foreground"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "KTT"

    aput-object v8, v5, v7

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 947
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupForegroundResumeBackground()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 957
    :catch_0
    move-exception v3

    .line 958
    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v5, "GSMPhone"

    const-string v7, "hangup failed"

    invoke-static {v5, v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 960
    sget-object v5, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_1

    .line 949
    .end local v3    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_1

    .line 952
    :cond_4
    const-string v5, "GSMPhone"

    const-string v7, "MmiCode 1: switchWaitingOrHoldingAndActive"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1042
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1043
    const/4 v0, 0x0

    .line 1049
    :goto_0
    return v0

    .line 1046
    :cond_0
    const-string v1, "GSMPhone"

    const-string v2, "MmiCode 5: CCBS not supported!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 12
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3088
    const/4 v0, 0x0

    .line 3089
    .local v0, "bIsSupportVoLTECmcc":Z
    sget-boolean v8, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsCmccVolte:Z

    if-eqz v8, :cond_0

    .line 3090
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_type"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_5

    move v0, v6

    .line 3091
    :goto_0
    const-string v8, "GSMPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCfuQueryResult: bIsSupportVoLTECmcc - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3095
    .local v4, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_4

    .line 3096
    if-eqz p1, :cond_1

    array-length v8, p1

    if-nez v8, :cond_7

    .line 3099
    :cond_1
    const-string v8, "TGY"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "BRI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    sget-boolean v8, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsCmccVolte:Z

    if-eqz v8, :cond_6

    .line 3102
    :cond_3
    invoke-virtual {p0, v6, v7, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallForwardingFlag(IZLjava/lang/String;)V

    .line 3150
    :cond_4
    :goto_1
    return-void

    .end local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_5
    move v0, v7

    .line 3090
    goto :goto_0

    .line 3104
    .restart local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_6
    invoke-virtual {p0, v6, v7, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_1

    .line 3107
    :cond_7
    const-string v8, "TGY"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "BRI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    if-eqz v0, :cond_11

    .line 3110
    :cond_9
    const/4 v2, 0x0

    .line 3111
    .local v2, "fi_voice":Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v1, 0x0

    .line 3113
    .local v1, "fi_video":Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v5, p1

    .local v5, "s":I
    :goto_2
    if-ge v3, v5, :cond_f

    .line 3114
    aget-object v8, p1, v3

    if-nez v8, :cond_b

    .line 3115
    const-string v8, "GSMPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCfuQueryResult: infos["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] is null."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    :cond_a
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3118
    :cond_b
    aget-object v8, p1, v3

    iget v8, v8, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_c

    .line 3119
    aget-object v2, p1, v3

    .line 3120
    aget-object v8, p1, v3

    iget v8, v8, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v8, v6, :cond_d

    move v8, v6

    :goto_4
    aget-object v9, p1, v3

    iget-object v9, v9, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 3122
    :cond_c
    aget-object v8, p1, v3

    iget v8, v8, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_a

    .line 3123
    aget-object v1, p1, v3

    .line 3124
    aget-object v8, p1, v3

    iget v8, v8, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v8, v6, :cond_e

    move v8, v6

    :goto_5
    aget-object v9, p1, v3

    iget-object v9, v9, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVideoCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_3

    :cond_d
    move v8, v7

    .line 3120
    goto :goto_4

    :cond_e
    move v8, v7

    .line 3124
    goto :goto_5

    .line 3129
    :cond_f
    if-nez v2, :cond_10

    .line 3130
    invoke-virtual {p0, v6, v7, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 3132
    :cond_10
    if-nez v1, :cond_4

    .line 3133
    invoke-virtual {p0, v6, v7, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVideoCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_1

    .line 3136
    .end local v1    # "fi_video":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v2    # "fi_voice":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "i":I
    .end local v5    # "s":I
    :cond_11
    sget-boolean v8, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsCmccVolte:Z

    if-eqz v8, :cond_12

    .line 3137
    invoke-virtual {p0, v6, v7, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVideoCallForwardingFlag(IZLjava/lang/String;)V

    .line 3139
    :cond_12
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v5, p1

    .restart local v5    # "s":I
    :goto_6
    if-ge v3, v5, :cond_4

    .line 3140
    aget-object v8, p1, v3

    iget v8, v8, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_14

    .line 3141
    aget-object v8, p1, v3

    iget v8, v8, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v8, v6, :cond_13

    move v7, v6

    :cond_13
    aget-object v8, p1, v3

    iget-object v8, v8, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_1

    .line 3139
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1030
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1032
    .local v0, "len":I
    if-eq v0, v1, :cond_0

    .line 1033
    const/4 v1, 0x0

    .line 1038
    :goto_0
    return v1

    .line 1036
    :cond_0
    const-string v2, "GSMPhone"

    const-string v3, "MmiCode 4: explicit call transfer"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->explicitCallTransfer()V

    goto :goto_0
.end method

.method private handleEnterEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4172
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4174
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4176
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Voice RAT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4177
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsPhoneInEcmState:Z

    if-nez v0, :cond_0

    .line 4178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsPhoneInEcmState:Z

    .line 4184
    :cond_0
    :goto_0
    return-void

    .line 4180
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    .line 4182
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private handleExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4187
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 4188
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleExitEmergencyCallbackMode,ar.exception , mIsPhoneInEcmState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 4191
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsPhoneInEcmState:Z

    if-eqz v1, :cond_0

    .line 4192
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsPhoneInEcmState:Z

    .line 4195
    :cond_0
    return-void
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1019
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1020
    const/4 v0, 0x0

    .line 1025
    :goto_0
    return v0

    .line 1023
    :cond_0
    const-string v1, "GSMPhone"

    const-string v2, "MmiCode 3: merge calls"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->conference()V

    goto :goto_0
.end method

.method private isManualSelProhibitedInGlobalMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3255
    const/4 v2, 0x0

    .line 3256
    .local v2, "isProhibited":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3259
    .local v1, "configString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3260
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3262
    .local v0, "configArray":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v3, v0

    if-ne v3, v5, :cond_0

    aget-object v3, v0, v6

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    aget-object v3, v0, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v0, v6

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v0, v5

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->isMatchGid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3267
    :cond_1
    const/4 v2, 0x1

    .line 3270
    .end local v0    # "configArray":[Ljava/lang/String;
    :cond_2
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isManualNetSelAllowedInGlobal in current carrier is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    return v2
.end method

.method private isValidCommandInterfaceCBFlavour(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cbFlavour"    # Ljava/lang/String;

    .prologue
    .line 3876
    const/4 v0, 0x1

    .line 3878
    .local v0, "ret":Z
    const-string v1, "AO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3888
    :cond_0
    :goto_0
    return v0

    .line 3879
    :cond_1
    const-string v1, "OI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3880
    const-string v1, "OX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3881
    const-string v1, "AI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3882
    const-string v1, "IR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3883
    const-string v1, "AB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3884
    const-string v1, "AG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3885
    const-string v1, "AC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3887
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    .prologue
    .line 1869
    packed-switch p1, :pswitch_data_0

    .line 1876
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1874
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1869
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    .prologue
    .line 1846
    packed-switch p1, :pswitch_data_0

    .line 1856
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1854
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1846
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidFacilityString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;

    .prologue
    .line 3839
    const-string v0, "AO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3849
    :cond_0
    const/4 v0, 0x1

    .line 3852
    :goto_0
    return v0

    .line 3851
    :cond_1
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Invalid facility String : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .locals 10
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 2353
    if-ne p1, v4, :cond_2

    move v5, v4

    .line 2356
    .local v5, "isUssdRequest":Z
    :goto_0
    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_3

    move v3, v4

    .line 2360
    .local v3, "isUssdError":Z
    :goto_1
    const/4 v8, 0x2

    if-ne p1, v8, :cond_4

    .line 2365
    .local v4, "isUssdRelease":Z
    :goto_2
    const/4 v1, 0x0

    .line 2366
    .local v1, "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "s":I
    :goto_3
    if-ge v2, v7, :cond_0

    .line 2367
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2368
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    check-cast v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 2373
    .restart local v1    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_0
    if-eqz v1, :cond_9

    .line 2377
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    if-eqz v8, :cond_6

    .line 2378
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    .line 2379
    if-nez v5, :cond_6

    .line 2380
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2413
    :cond_1
    :goto_4
    return-void

    .end local v1    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v2    # "i":I
    .end local v3    # "isUssdError":Z
    .end local v4    # "isUssdRelease":Z
    .end local v5    # "isUssdRequest":Z
    .end local v7    # "s":I
    :cond_2
    move v5, v9

    .line 2353
    goto :goto_0

    .restart local v5    # "isUssdRequest":Z
    :cond_3
    move v3, v9

    .line 2356
    goto :goto_1

    .restart local v3    # "isUssdError":Z
    :cond_4
    move v4, v9

    .line 2360
    goto :goto_2

    .line 2366
    .restart local v1    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v2    # "i":I
    .restart local v4    # "isUssdRelease":Z
    .restart local v7    # "s":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2385
    :cond_6
    if-eqz v4, :cond_7

    .line 2386
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdRelease()V

    goto :goto_4

    .line 2387
    :cond_7
    if-eqz v3, :cond_8

    .line 2388
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    goto :goto_4

    .line 2390
    :cond_8
    invoke-virtual {v1, p2, v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_4

    .line 2395
    :cond_9
    const-string v8, "ril.ussd.notdone"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2396
    .local v0, "UssdError":I
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    if-eqz v8, :cond_a

    if-nez v0, :cond_a

    .line 2397
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    goto :goto_4

    .line 2404
    :cond_a
    if-nez v3, :cond_1

    if-eqz p2, :cond_1

    .line 2406
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p2, v5, p0, v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v6

    .line 2410
    .local v6, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_4
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .prologue
    const/4 v2, 0x0

    .line 2341
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2343
    return-void
.end method

.method private processIccRecordEvents(I)V
    .locals 0
    .param p1, "eventCode"    # I

    .prologue
    .line 2998
    packed-switch p1, :pswitch_data_0

    .line 3008
    :goto_0
    return-void

    .line 3000
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto :goto_0

    .line 3004
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    goto :goto_0

    .line 2998
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processUkCliPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 3501
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 3503
    .local v0, "iso":Ljava/lang/String;
    const-string v1, "gb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3512
    .end local p1    # "dialString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 3506
    .restart local p1    # "dialString":Ljava/lang/String;
    :cond_1
    const-string v1, "1470"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*31#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3508
    :cond_2
    const-string v1, "141"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#31#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private registerForSimRecordEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3275
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3276
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 3283
    :goto_0
    return-void

    .line 3279
    :cond_0
    const/16 v1, 0x1c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3281
    const/16 v1, 0x1d

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3282
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setVmSimImsi(Ljava/lang/String;)V
    .locals 4
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 1557
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1558
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1559
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vm_sim_imsi_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1560
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1561
    return-void
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1441
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1442
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1443
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vm_number_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1445
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vm_number_key_cdma"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1450
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1451
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 1452
    return-void
.end method

.method private unregisterForSimRecordEvents()V
    .locals 2

    .prologue
    .line 3286
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3287
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 3293
    :goto_0
    return-void

    .line 3290
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V

    .line 3291
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 3292
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private updateVoiceMail()V
    .locals 6

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "countVoiceMessages":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 549
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_0

    .line 551
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMessageCount()I

    move-result v0

    .line 552
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[voicemail] countVoiceMessages fromSIM  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getStoredVoiceMessageCount()I

    move-result v1

    .line 555
    .local v1, "countVoiceMessagesStored":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SIMNotStoringVoiceMailInDevice"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 557
    move v0, v1

    .line 558
    const-string v3, "GSMPhone"

    const-string v4, "[voicemail] countVoiceMessages from SharedPreference  = "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_1
    :goto_0
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[voicemail] updateVoiceMail countVoiceMessages = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceMessageCount(I)V

    .line 568
    return-void

    .line 560
    :cond_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->chekcMWISavailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 561
    move v0, v1

    .line 562
    const-string v3, "GSMPhone"

    const-string v4, "[voicemail] MWISavailable is false . countVoiceMessages from SharedPreference  = "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public CardDataInit()V
    .locals 2

    .prologue
    .line 4070
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4071
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 4072
    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->setCardDataInit()V

    .line 4074
    :cond_0
    return-void
.end method

.method public acceptCall(I)V
    .locals 2
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 806
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->acceptCall(I)V

    .line 814
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall(I)V

    goto :goto_0
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3176
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3178
    return-void
.end method

.method public akaAuthenticate([B[BLandroid/os/Message;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 4032
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v0, :cond_0

    .line 4033
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->akaAuthenticate([B[BLandroid/os/Message;)V

    .line 4035
    :cond_0
    return-void
.end method

.method public canConference()Z
    .locals 2

    .prologue
    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, "canImsConference":Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_0

    .line 832
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->canConference()Z

    move-result v0

    .line 834
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canConference()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canDial()Z
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3955
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 3956
    const-string v1, "requesting change call barring password"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3960
    move-object v0, p4

    .line 3962
    .local v0, "resp":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 3965
    const/4 v1, 0x1

    .line 3967
    .end local v0    # "resp":Landroid/os/Message;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "newPwdAgain"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3975
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3976
    const-string v0, "requesting change call barring password"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3980
    move-object v5, p5

    .line 3982
    .local v5, "resp":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 3985
    const/4 v0, 0x1

    .line 3987
    .end local v5    # "resp":Landroid/os/Message;
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 854
    return-void
.end method

.method public conference()V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->canConference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    const-string v0, "conference() - delegated to IMS phone"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->conference()V

    .line 849
    :goto_0
    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->conference()V

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1111
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 8
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1119
    invoke-static {p3}, Lcom/android/internal/telephony/CallDetails;->videoStateToCallType(I)I

    move-result v5

    .line 1120
    .local v5, "callType":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 23
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .param p5, "callType"    # I
    .param p6, "callDomain"    # I
    .param p7, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1129
    sget-boolean v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mUsedLegacyIms:Z

    if-eqz v4, :cond_0

    .line 1130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying call (callType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callDomain: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1131
    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/gsm/GSMPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 1237
    :goto_0
    return-object v4

    .line 1135
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v17

    .line 1136
    .local v17, "isEmergency":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1145
    .local v14, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    const/4 v15, 0x0

    .line 1146
    .local v15, "imsPhoneInIdle":Z
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_2

    .line 1147
    :cond_1
    const/4 v15, 0x1

    .line 1150
    :cond_2
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v19, 0x1

    .line 1151
    .local v19, "isVolteEnabled":Z
    :goto_1
    if-eqz v19, :cond_c

    .line 1152
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getImsStubEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImsStub is enabled. Do NOT check exception case (Platform: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", User: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1173
    :cond_3
    :goto_2
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v20, 0x1

    .line 1174
    .local v20, "isVowifiEnabled":Z
    :goto_3
    if-eqz v20, :cond_4

    const-string v4, "vzwvowifi"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getVoltePolicy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1175
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsRegiState()Lcom/android/internal/telephony/ImsRegistrationState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/ImsRegistrationState;->getFeatureTag()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    if-eqz v15, :cond_4

    .line 1176
    const-string v4, "GSMPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore Vowifi feature (FeatureTag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsRegiState()Lcom/android/internal/telephony/ImsRegistrationState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/ImsRegistrationState;->getFeatureTag()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ImsPhoneInIdle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/16 v20, 0x0

    .line 1181
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isImsUseEnabled()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v14, :cond_e

    if-nez v19, :cond_5

    if-eqz v20, :cond_e

    :cond_5
    invoke-virtual {v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_e

    const/16 v16, 0x1

    .line 1187
    .local v16, "imsUseEnabled":Z
    :goto_4
    if-eqz v14, :cond_f

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_f

    const/16 v21, 0x1

    .line 1194
    .local v21, "useImsForEmergency":Z
    :goto_5
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    .line 1197
    .local v18, "isUt":Z
    if-eqz v14, :cond_10

    invoke-virtual {v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v22, 0x1

    .line 1200
    .local v22, "useImsForUt":Z
    :goto_6
    const-string v5, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imsUseEnabled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", useImsForEmergency="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", useImsForUt="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", isUt="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", imsPhone="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", imsPhone.isVolteEnabled()="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v14, :cond_11

    invoke-virtual {v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_7
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", imsPhone.isVowifiEnabled()="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v14, :cond_12

    invoke-virtual {v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", imsPhone.getServiceState().getState()="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v14, :cond_13

    invoke-virtual {v14}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_9
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/content/Context;)V

    .line 1215
    if-eqz v16, :cond_6

    if-eqz v18, :cond_7

    if-nez v22, :cond_7

    :cond_6
    if-eqz v21, :cond_14

    .line 1217
    :cond_7
    :try_start_0
    const-string v4, "GSMPhone"

    const-string v5, "Trying IMS PS call"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 1150
    .end local v16    # "imsUseEnabled":Z
    .end local v18    # "isUt":Z
    .end local v19    # "isVolteEnabled":Z
    .end local v20    # "isVowifiEnabled":Z
    .end local v21    # "useImsForEmergency":Z
    .end local v22    # "useImsForUt":Z
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1155
    .restart local v19    # "isVolteEnabled":Z
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getSnapshotStatus()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 1156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore VoLTE feature (Snapshot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getSnapshotStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1157
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 1158
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getLteImsVoiceAvail()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_b

    if-eqz v15, :cond_b

    .line 1159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore VoLTE feature (LteImsVoiceAvail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getLteImsVoiceAvail()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ImsPhoneInIdle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1160
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 1161
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_NwSupportAcbInfo"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkAcBarringState()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore VoLTE feature (ACB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkAcBarringState()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ImsPhoneInIdle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1164
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 1167
    :cond_c
    const-string v4, "Softphone"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1168
    const-string v4, "Allow VoLTE call (Softphone)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1169
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 1173
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 1181
    .restart local v20    # "isVowifiEnabled":Z
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 1187
    .restart local v16    # "imsUseEnabled":Z
    :cond_f
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 1197
    .restart local v18    # "isUt":Z
    .restart local v21    # "useImsForEmergency":Z
    :cond_10
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 1200
    .restart local v22    # "useImsForUt":Z
    :cond_11
    const-string v4, "N/A"

    goto/16 :goto_7

    :cond_12
    const-string v4, "N/A"

    goto/16 :goto_8

    :cond_13
    const-string v4, "N/A"

    goto/16 :goto_9

    .line 1219
    :catch_0
    move-exception v13

    .line 1220
    .local v13, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "GSMPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS PS call exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "imsUseEnabled ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", imsPhone ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const-string v4, "cs_fallback"

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1223
    new-instance v12, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    .line 1224
    .local v12, "ce":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v13}, Lcom/android/internal/telephony/CallStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/internal/telephony/CallStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1225
    throw v12

    .line 1230
    .end local v12    # "ce":Lcom/android/internal/telephony/CallStateException;
    .end local v13    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    if-eqz v4, :cond_15

    if-nez v17, :cond_15

    .line 1232
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "cannot dial in current state"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1234
    :cond_15
    const-string v4, "GSMPhone"

    const-string v5, "Trying (non-IMS) CS call"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    goto/16 :goto_0
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 8
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1246
    invoke-static {p3}, Lcom/android/internal/telephony/CallDetails;->videoStateToCallType(I)I

    move-result v5

    .line 1247
    .local v5, "callType":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 26
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .param p5, "callType"    # I
    .param p6, "callDomain"    # I
    .param p7, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1258
    const/4 v4, 0x0

    .line 1259
    .local v4, "newDialString":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1260
    .local v24, "networkPortion":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1262
    .local v23, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    new-instance v8, Lcom/android/internal/telephony/CallDetails;

    move/from16 v0, p5

    move/from16 v1, p6

    move-object/from16 v2, p7

    invoke-direct {v8, v0, v1, v2}, Lcom/android/internal/telephony/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 1264
    .local v8, "callDetails":Lcom/android/internal/telephony/CallDetails;
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getImsStubEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isVolteRegistered()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1266
    const-string v3, "GSMPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change call domain to PS for IMS Stub (old: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v8, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const/4 v3, 0x2

    iput v3, v8, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 1270
    const-string v3, "persist.radio.fakephonenumber"

    const-string v5, ""

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1271
    .local v21, "fakePhoneNumber":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1272
    const/16 v3, 0x5f

    const/16 v5, 0x24

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1273
    const-string v3, "GSMPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change phone number to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for IMS Stub (FakePhoneNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const-string v3, "\\$"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1277
    .local v18, "confAddr":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    .line 1278
    const-string v3, "GSMPhone"

    const-string v5, "Phone number for group call"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const/16 v22, 0x0

    .local v22, "index":I
    :goto_0
    move-object/from16 v0, v18

    array-length v3, v0

    move/from16 v0, v22

    if-ge v0, v3, :cond_0

    .line 1280
    const-string v3, "GSMPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Address["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v18, v22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 1282
    :cond_0
    const-string v3, "participants"

    const-string v5, "unknown"

    invoke-virtual {v8, v3, v5}, Lcom/android/internal/telephony/CallDetails;->setExtraValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    .end local v18    # "confAddr":[Ljava/lang/String;
    .end local v21    # "fakePhoneNumber":Ljava/lang/String;
    .end local v22    # "index":I
    :cond_1
    if-eqz v8, :cond_5

    const-string v3, "unknown"

    const-string v5, "participants"

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1289
    move-object/from16 v4, p1

    .line 1297
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->processUkCliPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1302
    const-string v15, "com.android.phone.emergency_call_notification_pref"

    .line 1303
    .local v15, "ECN_PREFS_NAME":Ljava/lang/String;
    const-string v17, "ecn_ussd"

    .line 1304
    .local v17, "USSD_KEY":Ljava/lang/String;
    const-string v16, "ecn_sent"

    .line 1306
    .local v16, "ECN_SENT_KEY":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "com.android.phone.emergency_call_notification_pref"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 1307
    .local v25, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "ecn_ussd"

    const-string v5, ""

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1308
    .local v20, "ecnUSSD":Ljava/lang/String;
    const-string v3, "ecn_sent"

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 1310
    .local v19, "ecn":Z
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "LGT"

    aput-object v6, v3, v5

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v8, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    .line 1313
    :cond_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v23

    .line 1317
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_RIL_SendEcn"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1319
    if-nez v19, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1322
    :cond_4
    if-nez v19, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1323
    const/4 v3, 0x0

    .line 1373
    :goto_2
    return-object v3

    .line 1292
    .end local v15    # "ECN_PREFS_NAME":Ljava/lang/String;
    .end local v16    # "ECN_SENT_KEY":Ljava/lang/String;
    .end local v17    # "USSD_KEY":Ljava/lang/String;
    .end local v19    # "ecn":Z
    .end local v20    # "ecnUSSD":Ljava/lang/String;
    .end local v25    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1326
    .restart local v15    # "ECN_PREFS_NAME":Ljava/lang/String;
    .restart local v16    # "ECN_SENT_KEY":Ljava/lang/String;
    .restart local v17    # "USSD_KEY":Ljava/lang/String;
    .restart local v19    # "ecn":Z
    .restart local v20    # "ecnUSSD":Ljava/lang/String;
    .restart local v25    # "prefs":Landroid/content/SharedPreferences;
    :cond_6
    if-eqz v19, :cond_8

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v23, :cond_7

    if-eqz v23, :cond_8

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1328
    :cond_7
    const-string v3, "ECN USSD - failed to create GSM MMI code..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1329
    const/4 v3, 0x0

    goto :goto_2

    .line 1331
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialing w/ mmi ECN\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1341
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialing w/ mmi \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1343
    if-nez v23, :cond_b

    .line 1346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/4 v5, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;Lcom/android/internal/telephony/CallDetails;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_2

    .line 1335
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1336
    const/4 v3, 0x0

    goto :goto_2

    .line 1349
    :cond_b
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isGlobalDevMmi()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1350
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v0, v23

    iget-object v10, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;Lcom/android/internal/telephony/CallDetails;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto/16 :goto_2

    .line 1353
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "GCF"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isVolteRegistered()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 1355
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/4 v5, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;Lcom/android/internal/telephony/CallDetails;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto/16 :goto_2

    .line 1357
    :cond_e
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1360
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-object/from16 v0, v23

    iget-object v10, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v11

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;Lcom/android/internal/telephony/CallDetails;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto/16 :goto_2

    .line 1363
    :cond_f
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->IsUssdConnectToCall()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1364
    const-string v3, "GSMPhone"

    const-string v5, "Ussd Connects to call"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/4 v5, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;Lcom/android/internal/telephony/CallDetails;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto/16 :goto_2

    .line 1368
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v23

    invoke-direct {v5, v6, v0, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1370
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    .line 1373
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableLocationUpdates()V

    .line 2234
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 401
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 406
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUSSD(Landroid/os/Handler;)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSs(Landroid/os/Handler;)V

    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterVoiceRadioBearerHoState(Landroid/os/Handler;)V

    .line 415
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dispose()V

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dispose()V

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMiuiIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->dispose()V

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 430
    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 433
    monitor-exit v1

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3304
    const-string v0, "GSMPhone extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3305
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingMMIs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSimPhoneBookIntManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSubInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3312
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3314
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mImei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeis:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMeid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMeids:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mImeiSv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVmNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3322
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableLocationUpdates()V

    .line 2229
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 3297
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    .line 3298
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->exitEmergencyCallbackMode()V

    .line 3300
    :cond_0
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->explicitCallTransfer()V

    .line 864
    return-void
.end method

.method public explicitCallTransfer(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->explicitCallTransfer(Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 450
    const-string v0, "GSMPhone"

    const-string v1, "GSMPhone finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method public gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 4038
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v0, :cond_0

    .line 4039
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V

    .line 4041
    :cond_0
    return-void
.end method

.method public gbaAuthenticateNaf([BLandroid/os/Message;)V
    .locals 1
    .param p1, "nafId"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 4044
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v0, :cond_0

    .line 4045
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->gbaAuthenticateNaf([BLandroid/os/Message;)V

    .line 4047
    :cond_0
    return-void
.end method

.method public getACBarring(Landroid/os/Message;)V
    .locals 4
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 4200
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "ACB"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 4201
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2183
    const/16 v1, 0x64

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2184
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 2186
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3896
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 3897
    return-void
.end method

.method public getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallBarringOption password:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "serviceClass:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3905
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCBFlavour(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3906
    const-string v1, "requesting call barring query."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3910
    move-object v0, p4

    .line 3912
    .local v0, "resp":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 3916
    .end local v0    # "resp":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public getCallBarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3856
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidFacilityString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3857
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 3860
    :cond_0
    return-void
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 2
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3823
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    .line 3824
    return-void
.end method

.method public getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "dialingNumber"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0xd

    .line 1913
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1914
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1921
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    .line 1945
    :cond_1
    :goto_0
    return-void

    .line 1927
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1928
    const-string v2, "GSMPhone"

    const-string v3, "requesting call forwarding query."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    if-nez p1, :cond_3

    .line 1931
    invoke-virtual {p0, v4, p4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1941
    .local v1, "resp":Landroid/os/Message;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p3, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1932
    .end local v1    # "resp":Landroid/os/Message;
    :cond_3
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsCmccVolte:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    .line 1933
    invoke-virtual {p0, v4, p4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "resp":Landroid/os/Message;
    goto :goto_1

    .line 1935
    .end local v1    # "resp":Landroid/os/Message;
    :cond_4
    move-object v1, p4

    .restart local v1    # "resp":Landroid/os/Message;
    goto :goto_1
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    return-object v0
.end method

.method public getCallWaiting(ILandroid/os/Message;)V
    .locals 6
    .param p1, "serviceClass"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2121
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->alwaysTerminalbasedCW(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2122
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 2123
    .local v1, "response":[I
    const-string v2, "Get T/B_CALL_WAITING"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2124
    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    if-ne v4, v2, :cond_0

    .line 2125
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volte_call_waiting_slot2"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    .line 2131
    :goto_0
    const/16 v2, 0x31

    aput v2, v1, v4

    .line 2135
    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2136
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 2147
    .end local v1    # "response":[I
    :goto_1
    return-void

    .line 2128
    .restart local v1    # "response":[I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volte_call_waiting"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    goto :goto_0

    .line 2140
    .end local v1    # "response":[I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2141
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_2

    .line 2143
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_1

    .line 2146
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2079
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallWaiting(ILandroid/os/Message;)V

    .line 2094
    return-void
.end method

.method public getCallWaitingStatus()Z
    .locals 4

    .prologue
    .line 3080
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3081
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "call_waiting_enable_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsCallWaitingEnable:Z

    .line 3082
    const-string v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallWaitingStatus is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsCallWaitingEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsCallWaitingEnable:Z

    return v1
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1887
    const-string v0, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1888
    const-string v0, "gsm.sim.state"

    const-string v1, "ABSENT"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABSENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPrlVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1890
    :cond_0
    const-string v0, "default"

    .line 1895
    :goto_0
    return-object v0

    .line 1892
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrlVersion_gsmphone_3 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1895
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPrlVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3187
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3189
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCscSvn()V
    .locals 2

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 1614
    return-void
.end method

.method public getCurrentGprsState()I
    .locals 1

    .prologue
    .line 3527
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v0, :cond_0

    .line 3529
    const/4 v0, 0x1

    .line 3532
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    goto :goto_0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 687
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 689
    .local v0, "ret":Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 690
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone$1;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActivity()Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 708
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 713
    :cond_0
    :goto_0
    return-object v0

    .line 692
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 693
    goto :goto_0

    .line 696
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 697
    goto :goto_0

    .line 700
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 701
    goto :goto_0

    .line 704
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 705
    goto :goto_0

    .line 690
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 2219
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 9
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 578
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 580
    .local v2, "ret":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v5, :cond_0

    .line 584
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    :goto_0
    move-object v5, v2

    .line 682
    :goto_1
    return-object v5

    .line 585
    :cond_0
    const-string v5, "emergency"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v5

    if-eqz v5, :cond_3

    .line 587
    const-string v5, "CHC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eqz v5, :cond_2

    .line 588
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v6, :cond_2

    .line 589
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_1

    .line 598
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 599
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 604
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 606
    :cond_5
    const/4 v0, 0x0

    .line 607
    .local v0, "isOtherPhoneCalling":Z
    const/4 v1, 0x0

    .line 608
    .local v1, "isRoaming":Z
    const-string v5, "dsds"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMultiSimConfig()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 609
    const/4 v3, 0x0

    .local v3, "simSlot":I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 610
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v5

    if-eq v3, v5, :cond_9

    .line 612
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 613
    .local v4, "subId":[I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDataConnectionState() isNetworkRoaming(subId[0])= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subId[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 615
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 616
    const/4 v1, 0x1

    .line 617
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDataConnectionState() isRoaming is true, simSlot= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .end local v3    # "simSlot":I
    .end local v4    # "subId":[I
    :cond_6
    const-string v5, "dsds"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMultiSimConfig()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "tsts"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMultiSimConfig()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v5

    if-le v5, v8, :cond_8

    .line 632
    const/4 v3, 0x0

    .restart local v3    # "simSlot":I
    :goto_3
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 633
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v5

    if-eq v3, v5, :cond_a

    .line 635
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 636
    .restart local v4    # "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getCallState(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_a

    .line 637
    const/4 v0, 0x1

    .line 647
    .end local v3    # "simSlot":I
    .end local v4    # "subId":[I
    :cond_8
    sget-object v5, Lcom/android/internal/telephony/gsm/GSMPhone$1;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 651
    :pswitch_0
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 652
    goto/16 :goto_0

    .line 621
    .restart local v3    # "simSlot":I
    :catch_0
    move-exception v5

    .line 609
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 641
    :catch_1
    move-exception v5

    .line 632
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 657
    .end local v3    # "simSlot":I
    :pswitch_1
    if-nez v0, :cond_d

    const-string v5, "default"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->needBlockData()Z

    move-result v5

    if-nez v5, :cond_d

    :cond_b
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_c

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_KeepMobileDataEvenWifiOn"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "default"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiActualConnected()Z

    move-result v5

    if-ne v5, v8, :cond_e

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v6, "hipri"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v6, :cond_e

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v6, "hipri"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v6, :cond_e

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v6, "supl"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v6, :cond_e

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v6, "supl"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v6, :cond_e

    .line 669
    :cond_d
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 671
    :cond_e
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 673
    goto/16 :goto_0

    .line 677
    :pswitch_2
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDataDunEnabled()Z
    .locals 2

    .prologue
    .line 2280
    const-string v0, "GSMPhone"

    const-string v1, "getDataDunEnabled() is not implemented for GSMPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    const/4 v0, 0x0

    return v0
.end method

.method public getDataEnabled()Z
    .locals 1

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataServiceState()I
    .locals 1

    .prologue
    .line 3520
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v0, :cond_0

    .line 3521
    const/4 v0, 0x1

    .line 3523
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultApnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4064
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDefaultApnName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredPowerState()Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1580
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ExceptionSid"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KDI"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1583
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1591
    :goto_0
    return-object v0

    .line 1585
    :catch_0
    move-exception v0

    .line 1589
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1591
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeis:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getDunDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 2272
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    return-object v0
.end method

.method public getDunNetworkType()I
    .locals 1

    .prologue
    .line 2276
    const/4 v0, 0x0

    return v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1629
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] getEsn() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const-string v0, "0"

    return-object v0
.end method

.method public getFDNavailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 4160
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4161
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-nez v1, :cond_2

    .line 4163
    :cond_0
    const-string v3, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get IccRecords for getFDNavailable - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    .end local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_1
    return v2

    .restart local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    move v1, v2

    .line 4163
    goto :goto_0

    .line 4166
    :cond_2
    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableFDN:Z

    goto :goto_1
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1697
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1698
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1703
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1704
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid2()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 3994
    const-string v0, "GSMPhone - getHandsetInfo"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3995
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getICBarring(Landroid/os/Message;)V
    .locals 4
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 4208
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "ICB"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/CommandsInterface;->getICBarring(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 4209
    return-void
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 3165
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .prologue
    .line 4057
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4058
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    return-object v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4085
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4086
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1619
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1621
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeis:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1802
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1803
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1711
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_SupportCSIM"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1713
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 1714
    .local v7, "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1715
    const-string v8, "return MSISDN number in Usim for SPR Mode"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1716
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v8

    .line 1791
    .end local v7    # "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    :goto_0
    return-object v8

    .line 1719
    .restart local v7    # "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_0
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 1720
    .local v6, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1721
    const-string v8, "return MDN number in Ruim for SPR Mode"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1724
    :cond_1
    const-string v8, "return null string for SPR Mode"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1725
    const-string v8, ""

    goto :goto_0

    .line 1732
    .end local v6    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    .end local v7    # "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1733
    const-string v8, "getLine1Number() for Global Mode"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1734
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v8, :cond_3

    .line 1735
    const-string v8, "mUiccController == null"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1736
    const-string v8, ""

    goto :goto_0

    .line 1738
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v8, v9, v11}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 1739
    .local v0, "RuimUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_4

    .line 1740
    const-string v8, "return MDN number in Ruim for Global Mode"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1741
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1743
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 1744
    .local v1, "UsimUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v1, :cond_9

    .line 1745
    const-string v8, "return MSISDN number in Usim for Global Mode"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1746
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1747
    .local v5, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const-string v8, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1748
    if-eqz v5, :cond_9

    .line 1749
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v4

    .line 1750
    .local v4, "msisdn":Ljava/lang/String;
    if-nez v4, :cond_5

    .line 1751
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1752
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimMsisdn()Ljava/lang/String;

    move-result-object v4

    :cond_5
    move-object v8, v4

    .line 1755
    goto/16 :goto_0

    .line 1757
    .end local v4    # "msisdn":Ljava/lang/String;
    :cond_6
    const-string v8, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1758
    const-string v8, "return MDN number from Subscription for SPR Global Mode"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1759
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMdn:Ljava/lang/String;

    goto/16 :goto_0

    .line 1761
    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_8
    const-string v8, ""

    goto/16 :goto_0

    .line 1766
    .end local v0    # "RuimUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "UsimUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v5    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1767
    .restart local v5    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    if-le v8, v10, :cond_c

    .line 1768
    const-string v8, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1769
    const-string v8, "getLine1Number"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1770
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v8

    if-nez v8, :cond_a

    .line 1771
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v8, v9, v11}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 1772
    .local v2, "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_c

    .line 1773
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 1774
    .local v3, "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v3, :cond_c

    move-object v6, v3

    .line 1775
    check-cast v6, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 1776
    .restart local v6    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v6, :cond_c

    .line 1777
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdnNumber()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 1782
    .end local v2    # "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v6    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    :cond_a
    if-eqz v5, :cond_b

    .line 1783
    const-string v8, "second"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1784
    check-cast v5, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v5    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 1786
    .restart local v5    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_b
    const-string v8, ""

    goto/16 :goto_0

    .line 1791
    :cond_c
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3379
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method public getMdnavailable()Z
    .locals 1

    .prologue
    .line 4081
    const/4 v0, 0x0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1640
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1643
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1645
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMeids:[Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    aget-object v0, v0, v1

    .line 1651
    :goto_0
    return-object v0

    .line 1650
    :cond_2
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] getMeid() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    const-string v0, "0"

    goto :goto_0
.end method

.method public getMmiErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4001
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiErrMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1796
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1797
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMsisdnavailable()Z
    .locals 1

    .prologue
    .line 4077
    const/4 v0, 0x0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNai()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1656
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 1657
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const-string v1, "GSMPhone"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1658
    const-string v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccRecords is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNAI()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNeighboringCids(Landroid/os/Message;)V

    .line 2192
    return-void
.end method

.method public getOCSGLAvailable()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4101
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4102
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-nez v1, :cond_3

    .line 4104
    :cond_0
    const-string v4, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get IccRecords for getOCSGLAvailable "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 4118
    .end local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    :goto_1
    return v2

    .restart local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    move v1, v3

    .line 4104
    goto :goto_0

    .line 4108
    :cond_3
    const-string v4, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAvailableOCSGL"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-boolean v1, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGL:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "isAvailableOCSGLList"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-boolean v1, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGLList:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 4111
    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-boolean v1, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGL:Z

    if-eqz v1, :cond_1

    .line 4112
    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-boolean v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGLList:Z

    if-nez v1, :cond_1

    move v2, v3

    .line 4115
    goto :goto_1
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3414
    const/4 v0, 0x0

    .line 3415
    .local v0, "operatorNumeric":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3416
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 3417
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3419
    :cond_0
    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2052
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 2054
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 2058
    :goto_0
    return-void

    .line 2057
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getPSISMSCavailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3785
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3786
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-nez v1, :cond_2

    .line 3788
    :cond_0
    const-string v3, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get IccRecords for getPSISMSCavailable - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
    .end local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_1
    return v2

    .restart local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    move v1, v2

    .line 3788
    goto :goto_0

    .line 3791
    :cond_2
    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getPSISMSCavailable()Z

    move-result v2

    goto :goto_1
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 3157
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x1

    return v0
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3809
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkList(Landroid/os/Message;)V

    .line 3810
    return-void
.end method

.method public getPsismsc()[B
    .locals 2

    .prologue
    .line 1815
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1816
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getPsismsc()[B

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 888
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 893
    :goto_0
    return-object v1

    .line 890
    :cond_0
    if-eqz v0, :cond_1

    .line 891
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    goto :goto_0

    .line 893
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_0
.end method

.method public getRuimid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1635
    const-string v0, "ril.cdma.phone.id"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSMSPavailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3776
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3777
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-nez v1, :cond_2

    .line 3779
    :cond_0
    const-string v3, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get IccRecords for getSMSPavailable - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    .end local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_1
    return v2

    .restart local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    move v1, v2

    .line 3779
    goto :goto_0

    .line 3782
    :cond_2
    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMSP:Z

    goto :goto_1
.end method

.method public getSMSavailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3763
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3764
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-nez v1, :cond_2

    .line 3766
    :cond_0
    const-string v3, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get IccRecords for getSMSavailable - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    .end local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_1
    return v2

    .restart local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    move v1, v2

    .line 3766
    goto :goto_0

    .line 3769
    :cond_2
    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v0    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    goto :goto_1
.end method

.method public getSelectedApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2254
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 456
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eqz v3, :cond_6

    .line 468
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_3

    .line 470
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v3, :cond_2

    new-instance v3, Landroid/telephony/ServiceState;

    invoke-direct {v3}, Landroid/telephony/ServiceState;-><init>()V

    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/ServiceState;->mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 471
    .local v1, "mergedSS":Landroid/telephony/ServiceState;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isWifiCallingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 472
    invoke-virtual {v1, v5}, Landroid/telephony/ServiceState;->setVoiceRegType(I)V

    .line 498
    .end local v1    # "mergedSS":Landroid/telephony/ServiceState;
    :cond_1
    :goto_1
    return-object v1

    .line 470
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    goto :goto_0

    .line 479
    :cond_3
    const/16 v3, 0xe

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isImsRegistered()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_6

    .line 482
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 483
    .local v0, "imsSS":Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 484
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 485
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v3, :cond_5

    new-instance v3, Landroid/telephony/ServiceState;

    invoke-direct {v3}, Landroid/telephony/ServiceState;-><init>()V

    :goto_2
    invoke-static {v3, v0}, Landroid/telephony/ServiceState;->mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 486
    .local v2, "newSS":Landroid/telephony/ServiceState;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isWifiCallingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 487
    invoke-virtual {v2, v5}, Landroid/telephony/ServiceState;->setVoiceRegType(I)V

    :cond_4
    move-object v1, v2

    .line 489
    goto :goto_1

    .line 485
    .end local v2    # "newSS":Landroid/telephony/ServiceState;
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    goto :goto_2

    .line 494
    .end local v0    # "imsSS":Landroid/telephony/ServiceState;
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v3, :cond_7

    .line 495
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    goto :goto_1

    .line 498
    :cond_7
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    goto :goto_1
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    return-object v0
.end method

.method public getSktImsiM()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3797
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3798
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSktIMSIM()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getSktIrm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3802
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3803
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSktIRM()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 4013
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4014
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 4015
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSponImsi()[Ljava/lang/String;

    move-result-object v1

    .line 4017
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    .prologue
    .line 515
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 517
    .local v0, "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 527
    .end local v0    # "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    :goto_0
    return-object v0

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-nez v1, :cond_1

    .line 524
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1665
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1666
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberIdDm(I)Ljava/lang/String;
    .locals 7
    .param p1, "networkType"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1672
    const-string v4, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1673
    if-eq p1, v6, :cond_3

    .line 1674
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 1675
    .local v0, "UiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v0, :cond_1

    .line 1676
    const-string v4, "GSMPhone"

    const-string v5, "cdmaUiccApp is Null. "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    .end local v0    # "UiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_0
    :goto_0
    return-object v3

    .line 1679
    .restart local v0    # "UiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 1680
    .local v1, "mCdmaRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, ""

    goto :goto_0

    .line 1682
    .end local v0    # "UiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "mCdmaRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 1683
    .restart local v0    # "UiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v0, :cond_4

    .line 1684
    const-string v4, "GSMPhone"

    const-string v5, "gsmUiccApp is Null. "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1687
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 1688
    .local v2, "mGSMRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    const-string v3, ""

    goto :goto_0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 1862
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1863
    const/4 v0, 0x0

    .line 1865
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUiccApplication()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCardApplication;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4026
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 2943
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1566
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1568
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 1570
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1571
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    const v3, 0x1040004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1575
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 1568
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1456
    const-string v3, ""

    .line 1458
    .local v3, "number":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1459
    .local v4, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_9

    .line 1460
    instance-of v6, v4, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableVoiceMailInSIM()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    instance-of v6, v4, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-nez v6, :cond_2

    .line 1462
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .line 1469
    :cond_2
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "CSC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_ConfigVoicemailSource"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1470
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .line 1472
    :cond_3
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1473
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1474
    .local v5, "sp":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vm_number_key"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1476
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1477
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v6

    if-ne v6, v10, :cond_b

    .line 1478
    const-string v6, "vm_number_key2"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1485
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_4
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1486
    if-eqz v4, :cond_c

    check-cast v4, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .line 1490
    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1492
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1493
    .restart local v5    # "sp":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vm_number_key_cdma"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1496
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1497
    const-string v6, "vm_number_key_cdma"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1500
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1501
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVoiceMailNumberForGlobalMode()Ljava/lang/String;

    move-result-object v3

    .line 1502
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v12, :cond_d

    .line 1503
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VoiceMail Number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1511
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_7
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1512
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107003f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1514
    .local v2, "listArray":[Ljava/lang/String;
    if-eqz v2, :cond_f

    array-length v6, v2

    if-lez v6, :cond_f

    .line 1515
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v6, v2

    if-ge v1, v6, :cond_f

    .line 1516
    aget-object v6, v2, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1517
    aget-object v6, v2, v1

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1518
    .local v0, "defaultVMNumberArray":[Ljava/lang/String;
    if-eqz v0, :cond_8

    array-length v6, v0

    if-lez v6, :cond_8

    .line 1519
    array-length v6, v0

    if-ne v6, v10, :cond_e

    .line 1520
    aget-object v3, v0, v11

    .line 1515
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1466
    .end local v1    # "i":I
    .end local v2    # "listArray":[Ljava/lang/String;
    .restart local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_9
    const-string v3, ""

    goto/16 :goto_0

    .line 1470
    :cond_a
    const-string v3, ""

    goto/16 :goto_1

    .line 1480
    .restart local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_b
    const-string v6, "vm_number_key"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 1486
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_c
    const-string v3, ""

    goto/16 :goto_3

    .line 1504
    .end local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_d
    const-string v6, "*86"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1505
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VoiceMail Number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 1521
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .restart local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "listArray":[Ljava/lang/String;
    :cond_e
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    aget-object v6, v0, v10

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    aget-object v6, v0, v10

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->isMatchGid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1524
    aget-object v3, v0, v11

    .line 1533
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "listArray":[Ljava/lang/String;
    :cond_f
    const-string v6, "DCM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1534
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "44010"

    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, ""

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1536
    const-string v3, "+819031014170"

    .line 1542
    :cond_10
    :goto_6
    const-string v6, "SBM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1544
    const-string v3, "+819066514170"

    .line 1545
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VoiceMail Number for SBM Roaming: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1548
    :cond_11
    return-object v3

    .line 1537
    :cond_12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1538
    const-string v3, "1417"

    goto :goto_6
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1054
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1055
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_0

    .line 1057
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v2

    .line 1095
    :goto_0
    return v2

    .line 1060
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 1061
    goto :goto_0

    .line 1064
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 1065
    goto :goto_0

    .line 1068
    :cond_2
    const/4 v2, 0x0

    .line 1069
    .local v2, "result":Z
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1070
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1072
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1074
    goto :goto_0

    .line 1076
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1078
    goto :goto_0

    .line 1080
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1081
    goto :goto_0

    .line 1083
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1084
    goto :goto_0

    .line 1086
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1087
    goto :goto_0

    .line 1089
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1090
    goto :goto_0

    .line 1070
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 36
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2439
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2447
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v2, :cond_0

    .line 2448
    const-string v2, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] while being destroyed. Ignoring."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_DisplayCountryChangePopupInManualMode"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x11

    if-ne v2, v4, :cond_1

    .line 2454
    const-string v2, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2938
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    .line 2940
    :cond_1
    :goto_0
    return-void

    .line 2443
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2461
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 2464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 2465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 2466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    .line 2467
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->startLceAfterRadioIsAvailable()V

    .line 2468
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2470
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 2473
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_KddiSIMOta"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto :goto_0

    .line 2488
    :sswitch_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_5

    .line 2490
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 2492
    :cond_5
    const-string v2, "dsds"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMultiSimConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2493
    const-string v2, "none"

    const-string v4, "ril.sw_ver"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 2496
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 2497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 2500
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    const-string v2, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2502
    const-string v2, "2"

    const-string v4, "gsm.sim.active"

    const-string v5, "0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2503
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v31

    .line 2504
    .local v31, "slotId":I
    if-gez v31, :cond_8

    .line 2505
    const-string v2, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RADIO_ON: invalid slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2507
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCardStateChanged(II)V

    goto/16 :goto_0

    .line 2514
    .end local v31    # "slotId":I
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->syncClirSetting()V

    goto/16 :goto_0

    .line 2519
    :sswitch_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimLoadDone:Z

    .line 2521
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 2525
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVmSimImsi()Ljava/lang/String;

    move-result-object v17

    .line 2526
    .local v17, "imsi":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v18

    .line 2527
    .local v18, "imsiFromSIM":Ljava/lang/String;
    if-eqz v17, :cond_9

    if-eqz v18, :cond_9

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2528
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 2529
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 2532
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2535
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateVoiceMail()V

    .line 2538
    const-string v2, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 2540
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 2541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 2542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2548
    .end local v17    # "imsi":Ljava/lang/String;
    .end local v18    # "imsiFromSIM":Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2550
    .local v8, "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 2554
    const-string v2, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Baseband version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v5

    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2561
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2563
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 2566
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v29, v2

    check-cast v29, [Ljava/lang/String;

    .line 2567
    .local v29, "respId":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v29, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    .line 2568
    const/4 v2, 0x1

    aget-object v2, v29, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    .line 2569
    const/4 v2, 0x2

    aget-object v2, v29, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEsn:Ljava/lang/String;

    .line 2570
    const/4 v2, 0x3

    aget-object v2, v29, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMeid:Ljava/lang/String;

    .line 2572
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2574
    :cond_b
    const-string v2, "1"

    const-string v4, "persist.radio.multisim.stackid"

    const-string v5, "0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v33, 0x1

    .line 2575
    .local v33, "stackId":I
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeis:[Ljava/lang/String;

    aget-object v2, v2, v33

    if-nez v2, :cond_c

    sget-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeis:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v29, v4

    aput-object v4, v2, v33

    .line 2576
    :cond_c
    sget-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mMeids:[Ljava/lang/String;

    aget-object v2, v2, v33

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mMeids:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v4, v29, v4

    aput-object v4, v2, v33

    goto/16 :goto_0

    .line 2574
    .end local v33    # "stackId":I
    :cond_d
    const/16 v33, 0x0

    goto :goto_1

    .line 2583
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v29    # "respId":[Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2585
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 2589
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    .line 2591
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 2593
    :cond_e
    const-string v2, "1"

    const-string v4, "persist.radio.multisim.stackid"

    const-string v5, "0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v33, 0x1

    .line 2594
    .restart local v33    # "stackId":I
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeis:[Ljava/lang/String;

    aget-object v2, v2, v33

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeis:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    aput-object v4, v2, v33

    goto/16 :goto_0

    .line 2593
    .end local v33    # "stackId":I
    :cond_f
    const/16 v33, 0x0

    goto :goto_2

    .line 2600
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2602
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 2606
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    goto/16 :goto_0

    .line 2610
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2612
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v35, v2

    check-cast v35, [Ljava/lang/String;

    .line 2614
    .local v35, "ussdResult":[Ljava/lang/String;
    move-object/from16 v0, v35

    array-length v2, v0

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    .line 2616
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v35, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    aget-object v4, v35, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->onIncomingUSSD(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2617
    :catch_0
    move-exception v12

    .line 2618
    .local v12, "e":Ljava/lang/NumberFormatException;
    const-string v2, "GSMPhone"

    const-string v4, "error parsing USSD"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2629
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .end local v35    # "ussdResult":[Ljava/lang/String;
    :sswitch_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .local v14, "i":I
    :goto_3
    if-ltz v14, :cond_11

    .line 2633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 2632
    :cond_10
    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    .line 2638
    .end local v14    # "i":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-object/from16 v16, v0

    .line 2639
    .local v16, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v16, :cond_12

    .line 2640
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 2642
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2643
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    const-string v2, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2645
    const-string v2, "1"

    const-string v4, "gsm.sim.active"

    const-string v5, "0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2646
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v31

    .line 2647
    .restart local v31    # "slotId":I
    if-gez v31, :cond_13

    .line 2648
    const-string v2, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE: invalid slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2650
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCardStateChanged(II)V

    goto/16 :goto_0

    .line 2658
    .end local v16    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    .end local v31    # "slotId":I
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2659
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 2660
    .local v25, "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2664
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v25    # "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2665
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2666
    .local v28, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v10, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;

    .line 2667
    .local v10, "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_16

    if-eqz v28, :cond_16

    .line 2668
    const/4 v9, 0x0

    .line 2670
    .local v9, "bIsSupportVoLTECmcc":Z
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsCmccVolte:Z

    if-eqz v2, :cond_14

    .line 2671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "voicecall_type"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_17

    const/4 v9, 0x1

    .line 2672
    :goto_4
    const-string v2, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SET_CALL_FORWARD_DONE: bIsSupportVoLTECmcc - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    :cond_14
    const-string v2, "TGY"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "BRI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2678
    :cond_15
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_18

    const/4 v2, 0x1

    :goto_5
    iget-object v5, v10, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2679
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsCmccVolte:Z

    if-eqz v2, :cond_16

    .line 2680
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVideoCallForwardingFlag(IZLjava/lang/String;)V

    .line 2694
    .end local v9    # "bIsSupportVoLTECmcc":Z
    :cond_16
    :goto_6
    iget-object v2, v10, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 2695
    iget-object v2, v10, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    iget-object v4, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2696
    iget-object v2, v10, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2671
    .restart local v9    # "bIsSupportVoLTECmcc":Z
    :cond_17
    const/4 v9, 0x0

    goto :goto_4

    .line 2678
    :cond_18
    const/4 v2, 0x0

    goto :goto_5

    .line 2683
    :cond_19
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1a

    .line 2684
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1c

    const/4 v2, 0x1

    :goto_7
    iget-object v5, v10, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2686
    :cond_1a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1b

    .line 2687
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1d

    const/4 v2, 0x1

    :goto_8
    iget-object v5, v10, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVideoCallForwardingFlag(IZLjava/lang/String;)V

    .line 2689
    :cond_1b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_16

    .line 2690
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1e

    const/4 v2, 0x1

    :goto_9
    iget-object v5, v10, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_6

    .line 2684
    :cond_1c
    const/4 v2, 0x0

    goto :goto_7

    .line 2687
    :cond_1d
    const/4 v2, 0x0

    goto :goto_8

    .line 2690
    :cond_1e
    const/4 v2, 0x0

    goto :goto_9

    .line 2701
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "bIsSupportVoLTECmcc":Z
    .end local v10    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    .end local v28    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2702
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    const-class v2, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    iget-object v4, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 2704
    const/4 v2, 0x0

    iput-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2713
    :cond_1f
    :goto_a
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Message;

    .line 2714
    .local v26, "onComplete":Landroid/os/Message;
    if-eqz v26, :cond_1

    .line 2715
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v26

    invoke-static {v0, v2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2716
    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2707
    .end local v26    # "onComplete":Landroid/os/Message;
    :cond_20
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2708
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1f

    .line 2709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    goto :goto_a

    .line 2722
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2723
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_21

    .line 2724
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2726
    :cond_21
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Message;

    .line 2727
    .restart local v26    # "onComplete":Landroid/os/Message;
    if-eqz v26, :cond_1

    .line 2728
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v26

    invoke-static {v0, v2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2729
    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2735
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "onComplete":Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2736
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2737
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2738
    const-string v2, "GSMPhone"

    const-string v4, "SET_NETWORK_SELECTION_AUTOMATIC: set to automatic"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2741
    :cond_22
    const-string v2, "GSMPhone"

    const-string v4, "SET_NETWORK_SELECTION_AUTOMATIC: already automatic, ignore"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2746
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2747
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->processIccRecordEvents(I)V

    goto/16 :goto_0

    .line 2751
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2752
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_23

    .line 2753
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 2755
    :cond_23
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Message;

    .line 2756
    .restart local v26    # "onComplete":Landroid/os/Message;
    if-eqz v26, :cond_1

    .line 2757
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v26

    invoke-static {v0, v2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2758
    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2763
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "onComplete":Landroid/os/Message;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2764
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    const-string v2, "GSMPhone"

    const-string v4, "Event EVENT_SS received"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    new-instance v22, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 2769
    .local v22, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processSsData(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2774
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2775
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Message;

    .line 2777
    .restart local v26    # "onComplete":Landroid/os/Message;
    if-eqz v26, :cond_1

    .line 2778
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_NetworkInfoRat"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_UseRatInfoDuringPlmnSelection"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 2782
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_26

    .line 2783
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/util/ArrayList;

    .line 2784
    .local v23, "netList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v20

    .local v20, "li":Ljava/util/ListIterator;
    :cond_24
    :goto_b
    invoke-interface/range {v20 .. v20}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2785
    invoke-interface/range {v20 .. v20}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/telephony/OperatorInfo;

    .line 2786
    .local v24, "ni":Lcom/android/internal/telephony/OperatorInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2787
    .local v15, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v15, :cond_25

    instance-of v2, v15, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-nez v2, :cond_28

    .line 2789
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get IccRecords for GET_AVAILABLE_NETWORK_COMPLETE - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v15, :cond_27

    const/4 v2, 0x1

    :goto_c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2830
    .end local v15    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v20    # "li":Ljava/util/ListIterator;
    .end local v23    # "netList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    .end local v24    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    :cond_26
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v26

    invoke-static {v0, v2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2831
    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2789
    .restart local v15    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v20    # "li":Ljava/util/ListIterator;
    .restart local v23    # "netList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    .restart local v24    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    :cond_27
    const/4 v2, 0x0

    goto :goto_c

    .line 2793
    :cond_28
    const/4 v3, 0x0

    .line 2796
    .local v3, "eonsName":Ljava/lang/String;
    check-cast v15, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v15    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getLac()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v15, v2, v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->getAllEonsNames(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    .line 2803
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_ReferSpnOnManualSearch"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2804
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v32

    .line 2805
    .local v32, "spnName":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v13

    .line 2806
    .local v13, "hPlmn":Ljava/lang/String;
    if-eqz v32, :cond_29

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    if-eqz v13, :cond_29

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2807
    move-object/from16 v3, v32

    .line 2808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change eonsName with spn name :  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2812
    .end local v13    # "hPlmn":Ljava/lang/String;
    .end local v32    # "spnName":Ljava/lang/String;
    :cond_29
    if-eqz v3, :cond_24

    .line 2813
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_DisplayRatInfoInManualNetSearchList"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2814
    new-instance v2, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRat()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 2823
    :cond_2a
    :goto_d
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_24

    .line 2824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change operatorAlphaLong to eonsName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2818
    :cond_2b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_DisableEons"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 2819
    new-instance v2, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/OperatorInfo;->getLac()I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;I)V

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_d

    .line 2838
    .end local v3    # "eonsName":Ljava/lang/String;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "li":Ljava/util/ListIterator;
    .end local v23    # "netList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    .end local v24    # "ni":Lcom/android/internal/telephony/OperatorInfo;
    .end local v26    # "onComplete":Landroid/os/Message;
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2839
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2c

    .line 2840
    const-string v2, "Error while fetching Mdn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2843
    :cond_2c
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v21, v2

    check-cast v21, [Ljava/lang/String;

    .line 2844
    .local v21, "localTemp":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v21, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMdn:Ljava/lang/String;

    .line 2846
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_KddiSIMOta"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_1

    .line 2850
    :cond_2d
    move-object/from16 v0, v21

    array-length v2, v0

    const/4 v4, 0x4

    if-le v2, v4, :cond_1

    .line 2851
    const/4 v2, 0x4

    aget-object v2, v21, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPrlVersion:Ljava/lang/String;

    .line 2852
    const-string v2, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPrlVersion_gsmphone_1 ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2863
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "localTemp":[Ljava/lang/String;
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2864
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2e

    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_2f

    .line 2865
    :cond_2e
    const-string v2, "Error while fetching Prl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2868
    :cond_2f
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v27, v2

    check-cast v27, [I

    .line 2869
    .local v27, "prl":[I
    const/4 v2, 0x0

    aget v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPrlVersion:Ljava/lang/String;

    .line 2871
    const-string v2, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPrlVersion_gsmphone_2 ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2879
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "prl":[I
    :sswitch_15
    const-string v2, "Service state changed for emergnecy number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2880
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setEmergencyNumbers()V

    goto/16 :goto_0

    .line 2886
    :sswitch_16
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    .line 2887
    const-string v2, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2888
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2889
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 2892
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_31

    .line 2893
    const-string v2, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2896
    .local v11, "data":I
    const-string v2, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    if-nez v11, :cond_30

    .line 2898
    const-string v2, "GSMPhone"

    const-string v4, "SIM_POWER_DONE is sent in slot1 gsm"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    new-instance v19, Landroid/content/Intent;

    const-string v2, "SIM_POWER_DONE"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2900
    .local v19, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2903
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_30
    const-string v2, "GSMPhone"

    const-string v4, "SIM_POWER_DONE is not sent"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2906
    .end local v11    # "data":I
    :cond_31
    const-string v2, "GSMPhone"

    const-string v4, "SIM_POWER_DONE is not sent in gsm"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    const-string v2, "ril.Simselswitch"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2909
    .local v30, "simselswitch":Ljava/lang/String;
    const-string v2, "1"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2910
    const-string v2, "gsm.sim.selectnetwork"

    const-string v4, "GSM"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2912
    :cond_32
    const-string v2, "gsm.sim.selectnetwork"

    const-string v4, "CDMA"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2922
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v30    # "simselswitch":Ljava/lang/String;
    :sswitch_17
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleEnterEmergencyCallbackMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2926
    :sswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2931
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 2932
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v34, v2, v4

    .line 2933
    .local v34, "state":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move/from16 v0, v34

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyVoiceRadioBearerHoState(I)V

    goto/16 :goto_0

    .line 2439
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2459
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_a
        0x3 -> :sswitch_3
        0x5 -> :sswitch_1
        0x6 -> :sswitch_4
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xc -> :sswitch_b
        0xd -> :sswitch_d
        0x12 -> :sswitch_10
        0x13 -> :sswitch_2
        0x14 -> :sswitch_c
        0x15 -> :sswitch_5
        0x19 -> :sswitch_17
        0x1a -> :sswitch_18
        0x1c -> :sswitch_e
        0x1d -> :sswitch_f
        0x24 -> :sswitch_11
        0x28 -> :sswitch_13
        0x29 -> :sswitch_14
        0x2e -> :sswitch_15
        0x32 -> :sswitch_16
        0x34 -> :sswitch_19
        0x64 -> :sswitch_12
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1379
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1381
    .local v0, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1382
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1384
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    .line 1385
    const/4 v1, 0x1

    .line 1388
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasCall(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callType"    # Ljava/lang/String;

    .prologue
    .line 2166
    const-string v0, "video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2167
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallTracker;->mHasVideoCall:Z

    .line 2175
    :goto_0
    return v0

    .line 2168
    :cond_0
    const-string v0, "activevideo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2169
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallTracker;->mHasActiveVideoCall:Z

    goto :goto_0

    .line 2170
    :cond_1
    const-string v0, "volte"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2171
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallTracker;->mHasVolteCall:Z

    goto :goto_0

    .line 2172
    :cond_2
    const-string v0, "epdg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2173
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallTracker;->mHasEpdgCall:Z

    goto :goto_0

    .line 2175
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsim()Z
    .locals 2

    .prologue
    .line 1809
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1810
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->hasIsim()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public holdCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4094
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->holdCall()V

    .line 4095
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3554
    aget-object v0, p1, v2

    const-string v1, "setEmergencyNumbers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3555
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3556
    aget-object v0, p1, v3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveEmergencyCallNumberSpec(Ljava/lang/String;)V

    .line 3567
    :goto_0
    return-void

    .line 3558
    :cond_0
    aget-object v0, p1, v3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setEmergencyNumbers(Ljava/lang/String;)V

    goto :goto_0

    .line 3560
    :cond_1
    aget-object v0, p1, v2

    const-string v1, "loadEmergencyCallNumberSpec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3561
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->loadEmergencyCallNumberSpec()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 3562
    :cond_2
    aget-object v0, p1, v2

    const-string v1, "getVideoCallForwardingIndicator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3563
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVideoCallForwardingIndicator()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 3565
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    .prologue
    const/4 v0, 0x1

    .line 1900
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 2

    .prologue
    .line 3204
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3205
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->isCspPlmnEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 1099
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1100
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1101
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1103
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isManualNetSelAllowed()Z
    .locals 5

    .prologue
    .line 3210
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 3211
    .local v0, "nwMode":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v1

    .line 3214
    .local v1, "subId":I
    const/4 v0, -0x1

    .line 3216
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3220
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 3221
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nwMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Check database without subId again"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3227
    :cond_0
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isManualNetSelAllowed in mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isManualSelProhibitedInGlobalMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x16

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 3238
    :cond_1
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manual selection not supported in mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    const/4 v2, 0x0

    .line 3251
    :goto_0
    return v2

    .line 3241
    :cond_2
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manual selection is supported in mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isUtEnabled()Z
    .locals 3

    .prologue
    .line 3483
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3484
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    .line 3485
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v1

    .line 3488
    :goto_0
    return v1

    .line 3487
    :cond_0
    const-string v1, "GSMPhone"

    const-string v2, "isUtEnabled: called for GSM"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3496
    const-string v0, "GSMPhone"

    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    return-void
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 767
    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDisconnectCause(II)V

    .line 743
    return-void
.end method

.method public notifyEcbmTimerReset(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/Boolean;

    .prologue
    .line 3443
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 3444
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 761
    return-void
.end method

.method public notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 735
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 736
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 722
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 731
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 732
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 755
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 756
    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .param p1, "code"    # Lcom/android/internal/telephony/Phone$SuppService;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 751
    return-void
.end method

.method notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 746
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyUnknownConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 747
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 4
    .param p1, "mmi"    # Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .prologue
    const/4 v3, 0x0

    .line 2301
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2304
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->lastErr:Lcom/android/internal/telephony/CommandException$Error;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_1

    .line 2305
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    const v1, 0x1040920

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 2306
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->lastErr:Lcom/android/internal/telephony/CommandException$Error;

    .line 2309
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsCode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMmiErrorMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2310
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_EnableImsSsErrorMsg"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2311
    const-string v0, "true"

    const-string v1, "persist.radio.ss.fallback"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2312
    const-string v0, "Ignore mmi error message from ims network. For SS CS fallback"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2318
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setMmiErrorMsg(Ljava/lang/String;)V

    .line 2320
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    if-nez v0, :cond_4

    .line 2321
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, p1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2331
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMmiErrorMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2332
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setMmiErrorMsg(Ljava/lang/String;)V

    .line 2334
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    .line 2336
    return-void

    .line 2314
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMmiErrorMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 2315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mmi error message from ims network is set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMmiErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2325
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2328
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, p1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method

.method protected onUpdateIccAvailability()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2949
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_0

    .line 2995
    :goto_0
    return-void

    .line 2953
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 2955
    .local v2, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    .line 2957
    .local v1, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-eqz v2, :cond_1

    .line 2958
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .end local v1    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 2959
    .restart local v1    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    const-string v3, "New ISIM application found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2961
    :cond_1
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 2963
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 2965
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v7, :cond_3

    const-string v3, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2967
    :cond_2
    if-nez v2, :cond_3

    .line 2968
    const-string v3, "can\'t find 3GPP application; trying APP_FAM_3GPP2"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2969
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 2974
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2975
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-ne v0, v2, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v7, :cond_7

    const-string v3, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2978
    :cond_4
    if-eqz v0, :cond_6

    .line 2979
    const-string v3, "Removing stale icc objects."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2980
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2981
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    .line 2982
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMiuiIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 2984
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2985
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2987
    :cond_6
    if-eqz v2, :cond_7

    .line 2988
    const-string v3, "New Uicc application found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2989
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2990
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2991
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForSimRecordEvents()V

    .line 2992
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMiuiIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setEmergencyNumbers()V

    goto/16 :goto_0
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3423
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3425
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3455
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3456
    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 795
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 784
    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V

    .line 820
    return-void
.end method

.method public removeReferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 438
    const-string v0, "GSMPhone"

    const-string v1, "removeReferences"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 440
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMiuiIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    .line 441
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 442
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 443
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 445
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 446
    return-void
.end method

.method public requestChangeCbPsw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 3871
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 3872
    return-void
.end method

.method public resetSubSpecifics()V
    .locals 0

    .prologue
    .line 3493
    return-void
.end method

.method public saveCallWaitingStatus(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 3069
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3070
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3071
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "call_waiting_enable_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3074
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3075
    const-string v2, "GSMPhone"

    const-string v3, "failed to commit CallWaitingStatus preference"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    :cond_0
    return-void
.end method

.method public selectCsg(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4124
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4125
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4127
    .local v1, "dos":Ljava/io/DataOutputStream;
    const-string v4, "selectCsg"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 4130
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4131
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4132
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4143
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-interface {v4, v5, p1}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 4145
    if-eqz v1, :cond_1

    .line 4146
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 4148
    :cond_1
    if-eqz v0, :cond_2

    .line 4149
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4154
    :cond_2
    :goto_1
    return-void

    .line 4133
    :catch_0
    move-exception v2

    .line 4134
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "GSMPhone"

    const-string v5, "IOException!!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    if-eqz v1, :cond_0

    .line 4137
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 4139
    :catch_1
    move-exception v3

    .line 4140
    .local v3, "ex":Ljava/io/IOException;
    const-string v4, "GSMPhone"

    const-string v5, "close fail!!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4151
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 4152
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string v4, "GSMPhone"

    const-string v5, "close fail!!!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 2
    .param p1, "dtmfString"    # Ljava/lang/String;

    .prologue
    .line 1431
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] sendBurstDtmf() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 1402
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1403
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public sendEncodedUssd([BII)V
    .locals 2
    .param p1, "ussdMessage"    # [B
    .param p2, "ussdLength"    # I
    .param p3, "dcsCode"    # I

    .prologue
    .line 3539
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 3540
    .local v0, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3541
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendEncodedUssd([BII)V

    .line 3542
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1393
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1394
    .local v0, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1395
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1396
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 1397
    return-void
.end method

.method public setACBarring(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "cbAction"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 4204
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "ACB"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 4205
    return-void
.end method

.method public setCallBarringOption(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3864
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidFacilityString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3865
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 3868
    :cond_0
    return-void
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 6
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3930
    if-eqz p3, :cond_1

    .line 3931
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCBFlavour(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3932
    const-string v0, "requesting set call barring ."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3936
    move-object v5, p5

    .line 3938
    .local v5, "resp":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p2

    move v2, p1

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 3943
    .end local v5    # "resp":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x1

    .line 3945
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3921
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 9
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "serviceClass"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1964
    const-string v6, ""

    const-string v7, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallForwardingOption(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1966
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 12
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "serviceClass"    # I
    .param p6, "startTime"    # Ljava/lang/String;
    .param p7, "endTime"    # Ljava/lang/String;
    .param p8, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1978
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1979
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p8

    .line 1987
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 2047
    :cond_1
    :goto_0
    return-void

    .line 1992
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1997
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallForwardingOption dialingNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " endTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2000
    if-nez p2, :cond_4

    .line 2001
    new-instance v11, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;

    move-object/from16 v0, p8

    invoke-direct {v11, p3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    .line 2007
    .local v11, "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    const/16 v3, 0xc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    move/from16 v0, p5

    invoke-virtual {p0, v3, v2, v0, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 2027
    .end local v11    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    .local v10, "resp":Landroid/os/Message;
    :goto_2
    const-string v2, "0000"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2028
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x6

    const-string v8, "12:34"

    const-string v9, "17:45"

    move v3, p1

    move/from16 v5, p5

    move-object v6, p3

    move/from16 v7, p4

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2007
    .end local v10    # "resp":Landroid/os/Message;
    .restart local v11    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 2010
    .end local v11    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    :cond_4
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsCmccVolte:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    if-ne p2, v2, :cond_6

    .line 2011
    new-instance v11, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;

    move-object/from16 v0, p8

    invoke-direct {v11, p3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    .line 2012
    .restart local v11    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    const/16 v3, 0xc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    move/from16 v0, p5

    invoke-virtual {p0, v3, v2, v0, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 2014
    .restart local v10    # "resp":Landroid/os/Message;
    goto :goto_2

    .line 2012
    .end local v10    # "resp":Landroid/os/Message;
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 2015
    .end local v11    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    :cond_6
    move-object/from16 v10, p8

    .restart local v10    # "resp":Landroid/os/Message;
    goto :goto_2

    .line 2037
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v3, p1

    move v4, p2

    move/from16 v5, p5

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3832
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 3835
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2151
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 2153
    invoke-virtual {v0, p1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 2157
    :goto_0
    return-void

    .line 2156
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2099
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_CallUssdException"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_CallNexti"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2102
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallWaiting(ZILandroid/os/Message;)V

    .line 2117
    :goto_0
    return-void

    .line 2104
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3198
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3200
    return-void
.end method

.method public setDataDunEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2285
    const-string v0, "GSMPhone"

    const-string v1, "setDataDunEnabled is not implemented for GSMPhone."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataEnabled(Z)V

    .line 2268
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 2244
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2245
    .local v1, "uid":I
    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 2246
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Security Exception Occurred. Only SYSTEM app can change Data Roaming"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 2247
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 2250
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataOnRoamingEnabled(Z)V

    .line 2251
    return-void
.end method

.method public setEmergencyNumbers()V
    .locals 1

    .prologue
    .line 3577
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setEmergencyNumbers(Ljava/lang/String;)V

    .line 3578
    return-void
.end method

.method public setEmergencyNumbers(Ljava/lang/String;)V
    .locals 30
    .param p1, "customerSpec"    # Ljava/lang/String;

    .prologue
    .line 3581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    .line 3758
    :cond_0
    return-void

    .line 3585
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    .line 3587
    .local v23, "ss":Landroid/telephony/ServiceState;
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v16

    .line 3588
    .local v16, "op":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v20

    .line 3591
    .local v20, "simState":I
    const-string v21, "ABSENT"

    .line 3592
    .local v21, "simstateProperty":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3593
    .local v5, "emergencyNumbers":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3594
    .local v6, "emergencyNumbersForOperator":Ljava/lang/String;
    const-string v4, "ril.ecclist"

    .line 3595
    .local v4, "PROP_ECC_LIST":Ljava/lang/String;
    const/16 v25, 0x1

    .line 3598
    .local v25, "withSIM":Z
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setEmergencyNumbers: mPrevSs=["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPrevSs:Landroid/telephony/ServiceState;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "], ss=["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3599
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setEmergencyNumbers: customerSpec="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3602
    const-string v26, "EUR"

    const-string v27, "EUR"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 3603
    const-string v26, "ro.multisim.simslotcount"

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 3604
    .local v19, "simSlotCount":I
    const/16 v17, 0x0

    .line 3605
    .local v17, "phoneIndex":I
    const/16 v25, 0x0

    .line 3606
    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 3607
    const-string v26, "gsm.sim.state"

    const-string v27, "ABSENT"

    move-object/from16 v0, v26

    move/from16 v1, v17

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3608
    const-string v26, "ABSENT"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "UNKNOWN"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "CARD_IO_ERROR"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "NOT_READY"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_2

    .line 3611
    const/16 v25, 0x1

    .line 3612
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setEmergencyNumbers: state="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " for PhoneId:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3606
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 3616
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v20

    .line 3617
    const-string v26, "gsm.sim.state"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v27

    const-string v28, "ABSENT"

    invoke-static/range {v26 .. v28}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3629
    .end local v17    # "phoneIndex":I
    .end local v19    # "simSlotCount":I
    :cond_4
    :goto_1
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setEmergencyNumbers: withSIM="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3631
    if-eqz v25, :cond_8

    .line 3632
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEccNums:Ljava/lang/String;

    .line 3635
    const-string v26, "DCM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    const-string v26, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    const-string v26, "SBM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 3638
    :cond_5
    const-string v26, "READY"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    const-string v26, "440"

    const-string v27, "gsm.sim.operator.numeric"

    const-string v28, "44000"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x3

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    const-string v26, "441"

    const-string v27, "gsm.sim.operator.numeric"

    const-string v28, "44000"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x3

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    const-string v26, "001"

    const-string v27, "gsm.sim.operator.numeric"

    const-string v28, "44000"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x3

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 3642
    :cond_6
    const-string v26, "setEmergencyNumbers: add emergencynumber for jpn model"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3643
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_15

    .line 3644
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "110/1,118/8,119/6,"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3651
    :cond_7
    :goto_2
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setEmergencyNumbers: ECC from SIM="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3655
    :cond_8
    const/16 v22, 0x0

    .line 3656
    .local v22, "specToUpdate":Ljava/lang/String;
    if-eqz p1, :cond_16

    .line 3657
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveEmergencyCallNumberSpec(Ljava/lang/String;)V

    .line 3658
    move-object/from16 v22, p1

    .line 3664
    :goto_3
    const-string v26, "BRI"

    sget-object v27, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_9

    const-string v26, "TGY"

    sget-object v27, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 3665
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/EccTable;->updateEccTable(Ljava/lang/String;)V

    .line 3668
    :cond_9
    const-string v26, "CHN"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 3669
    .local v9, "isCHN":Z
    const-string v26, "HKG"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 3670
    .local v10, "isHK":Z
    const-string v26, "TPE"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 3672
    .local v11, "isTW":Z
    if-nez v9, :cond_a

    if-nez v10, :cond_a

    if-eqz v11, :cond_d

    .line 3673
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "airplane_mode_on"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_b

    if-nez v16, :cond_d

    .line 3674
    :cond_b
    if-nez v9, :cond_c

    if-eqz v10, :cond_17

    .line 3675
    :cond_c
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setEmergencyNumbers: For China mainland or Hong Kong in Airplane mode : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3676
    const-string v16, "460"

    .line 3683
    :cond_d
    :goto_4
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/EccTable;->emergencyNumbersForPLMN(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 3686
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_RIL_ConfigEccListDuringEncryptionMode"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3687
    .local v14, "mccForEnc":Ljava/lang/String;
    const-string v3, "trigger_restart_min_framework"

    .line 3688
    .local v3, "ENCRYPTED_STATE":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_e

    .line 3689
    if-nez v16, :cond_e

    const-string v26, "trigger_restart_min_framework"

    const-string v27, "vold.decrypt"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 3690
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "op == null, mccForEnc == "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3691
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-static {v14, v0}, Lcom/android/internal/telephony/gsm/EccTable;->emergencyNumbersForPLMN(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 3697
    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_RIL_SetECCListWhenPinEnabled"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3698
    .local v13, "mccForECC":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_10

    .line 3699
    if-nez v16, :cond_10

    const/16 v26, 0x2

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_f

    const/16 v26, 0x3

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 3700
    :cond_f
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "op == null, mccForECC == "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3701
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-static {v13, v0}, Lcom/android/internal/telephony/gsm/EccTable;->emergencyNumbersForPLMN(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 3707
    :cond_10
    const-string v26, "SBM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 3708
    const-string v26, "READY"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    const-string v26, "440"

    const-string v27, "gsm.sim.operator.numeric"

    const-string v28, "44000"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x3

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_11

    const-string v26, "441"

    const-string v27, "gsm.sim.operator.numeric"

    const-string v28, "44000"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x3

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_11

    const-string v26, "001"

    const-string v27, "gsm.sim.operator.numeric"

    const-string v28, "44000"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x3

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 3712
    :cond_11
    const-string v26, "setEmergencyNumbers: add emergencynumber for jpn model"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3713
    const-string v26, "440"

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/EccTable;->emergencyNumbersForPLMN(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 3719
    :cond_12
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setEmergencyNumbers: ECC for operator="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3722
    if-eqz v5, :cond_18

    const-string v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_18

    .line 3723
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3727
    :goto_5
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setEmergencyNumbers: emergencyNumbers="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3729
    new-instance v26, Landroid/telephony/ServiceState;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mPrevSs:Landroid/telephony/ServiceState;

    .line 3731
    const/16 v18, 0x5b

    .line 3735
    .local v18, "propLen":I
    const/4 v8, 0x0

    .line 3736
    .local v8, "i":I
    :goto_6
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ril.ecclist"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3737
    .local v12, "key":Ljava/lang/String;
    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3739
    .local v15, "n":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v26

    if-eqz v26, :cond_19

    .line 3740
    const-string v26, ""

    move-object/from16 v0, v26

    invoke-static {v12, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3735
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 3620
    .end local v3    # "ENCRYPTED_STATE":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "isCHN":Z
    .end local v10    # "isHK":Z
    .end local v11    # "isTW":Z
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "mccForECC":Ljava/lang/String;
    .end local v14    # "mccForEnc":Ljava/lang/String;
    .end local v15    # "n":Ljava/lang/String;
    .end local v18    # "propLen":I
    .end local v22    # "specToUpdate":Ljava/lang/String;
    :cond_13
    const-string v26, "gsm.sim.state"

    const-string v27, "ABSENT"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3621
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setEmergencyNumbers: simstateProperty="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3622
    const-string v26, "ABSENT"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    const-string v26, "UNKNOWN"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    const-string v26, "CARD_IO_ERROR"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    const-string v26, "NOT_READY"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 3625
    :cond_14
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 3646
    :cond_15
    const-string v5, "110/1,118/8,119/6"

    goto/16 :goto_2

    .line 3660
    .restart local v22    # "specToUpdate":Ljava/lang/String;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->loadEmergencyCallNumberSpec()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_3

    .line 3677
    .restart local v9    # "isCHN":Z
    .restart local v10    # "isHK":Z
    .restart local v11    # "isTW":Z
    :cond_17
    if-eqz v11, :cond_d

    .line 3678
    const-string v16, "466"

    goto/16 :goto_4

    .line 3725
    .restart local v3    # "ENCRYPTED_STATE":Ljava/lang/String;
    .restart local v13    # "mccForECC":Ljava/lang/String;
    .restart local v14    # "mccForEnc":Ljava/lang/String;
    :cond_18
    move-object v5, v6

    goto/16 :goto_5

    .line 3746
    .restart local v8    # "i":I
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v15    # "n":Ljava/lang/String;
    .restart local v18    # "propLen":I
    :cond_19
    const/4 v8, 0x0

    :goto_7
    mul-int/lit8 v26, v8, 0x5b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 3747
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ril.ecclist"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3748
    mul-int/lit8 v24, v8, 0x5b

    .line 3749
    .local v24, "start":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v27, v8, 0x1

    mul-int/lit8 v27, v27, 0x5b

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 3752
    .local v7, "end":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setEmergencyNumbers: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " - "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move/from16 v0, v24

    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3756
    move/from16 v0, v24

    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v12, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3746
    add-int/lit8 v8, v8, 0x1

    goto :goto_7
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 4051
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v0, :cond_0

    .line 4052
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 4054
    :cond_0
    return-void
.end method

.method public setICBarring(ILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "cbAction"    # I
    .param p2, "iCBNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 4212
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "ICB"

    const/4 v4, 0x1

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setICBarring(Ljava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V

    .line 4213
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    .prologue
    .line 3432
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    .line 3434
    return-void
.end method

.method public setInternalDataEnabledFlag(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 3438
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabledFlag(Z)Z

    move-result v0

    return v0
.end method

.method protected setIsoCountryProperty(Ljava/lang/String;)V
    .locals 4
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 3330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3331
    const-string v2, "setIsoCountryProperty: clear \'gsm.sim.operator.iso-country\'"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3332
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3347
    :goto_0
    return-void

    .line 3334
    :cond_0
    const-string v1, ""

    .line 3336
    .local v1, "iso":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3344
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIsoCountryProperty: set \'gsm.sim.operator.iso-country\' to iso="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3345
    const-string v2, "gsm.sim.operator.iso-country"

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3338
    :catch_0
    move-exception v0

    .line 3339
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v2, "GSMPhone"

    const-string v3, "[GSMPhone] setIsoCountryProperty: countryCodeForMcc error"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3340
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 3341
    .local v0, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, "GSMPhone"

    const-string v3, "[GSMPhone] setIsoCountryProperty: countryCodeForMcc error"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1822
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1823
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 1824
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1825
    const/4 v1, 0x1

    .line 1827
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMmiErrorMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 4005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMmiErrorMsg with msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 4006
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiErrMsg:Ljava/lang/String;

    .line 4007
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 2209
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2196
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 2197
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 6
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3385
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_1

    .line 3407
    :cond_0
    :goto_0
    return v2

    .line 3389
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 3390
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_0

    .line 3394
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v2

    .line 3397
    .local v2, "status":Z
    if-eqz v2, :cond_0

    .line 3398
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3399
    .local v1, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_2

    .line 3400
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 3403
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v3, :cond_0

    .line 3404
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_0
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 4
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2064
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 2066
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 2074
    :goto_0
    return-void

    .line 2072
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "plmn"    # Ljava/lang/String;
    .param p4, "gsmAct"    # I
    .param p5, "gsmCompactAct"    # I
    .param p6, "utranAct"    # I
    .param p7, "mode"    # I
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 3816
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V

    .line 3817
    return-void
.end method

.method protected setProperties()V
    .locals 5

    .prologue
    .line 374
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    .line 376
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    const-string v2, "ro.cdma.home.operator.alpha"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "operatorAlpha":Ljava/lang/String;
    const-string v2, "gsm.sim.operator.alpha"

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    sget-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "operatorNumeric":Ljava/lang/String;
    const-string v2, "gsm.sim.operator.numeric"

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    .line 397
    .end local v0    # "operatorAlpha":Ljava/lang/String;
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/GSMPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .restart local v1    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRadioPower(Z)V

    .line 1438
    return-void
.end method

.method public setSelectedApn()V
    .locals 0

    .prologue
    .line 2258
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 776
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 777
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    .line 2202
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setUiTTYMode(ILandroid/os/Message;)V

    .line 2204
    :cond_0
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 1837
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    .line 1838
    const/16 v2, 0x14

    invoke-virtual {p0, v2, v3, v3, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1839
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1840
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 1841
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1843
    :cond_0
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 3
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    .line 3472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[voicemail] setVoiceMessageWaiting : countWaiting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " line = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3473
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3474
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 3475
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    .line 3476
    const-string v1, " [voicemail] r.setVoiceMessageWaiting"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3480
    :goto_0
    return-void

    .line 3478
    :cond_0
    const-string v1, " [voicemail] SIM Records not found, MWI not updated"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setmMmiInitBySTK(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 3546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMmiInitBySTK set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3547
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    .line 3548
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 1415
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1416
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :goto_0
    return-void

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 1427
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 826
    return-void
.end method

.method protected syncClirSetting()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2419
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2420
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clir_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2421
    .local v0, "clirSetting":I
    if-ltz v0, :cond_1

    .line 2422
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 2429
    :cond_0
    :goto_0
    return-void

    .line 2424
    :cond_1
    const-string v2, "clir_key"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2425
    if-ltz v0, :cond_0

    .line 2426
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 3429
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3460
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3461
    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 800
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 790
    :cond_0
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 14

    .prologue
    .line 3016
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v10

    int-to-long v2, v10

    .line 3017
    .local v2, "currentDds":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 3020
    .local v7, "operatorNumeric":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3021
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0x28

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 3025
    :cond_0
    const-string v10, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3027
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v10

    const-string v11, "ril.ICC_TYPE"

    const-string v12, "0"

    invoke-static {v10, v11, v12}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3028
    .local v0, "cardType":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v10

    const-string v11, "gsm.sim.cdmaoperator.numeric"

    const-string v12, ""

    invoke-static {v10, v11, v12}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3029
    .local v1, "cdmaOperator":Ljava/lang/String;
    const-string v10, "3"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "4"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    const-string v10, "46003"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "45502"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3030
    :cond_3
    move-object v7, v1

    .line 3045
    .end local v0    # "cardType":Ljava/lang/String;
    .end local v1    # "cdmaOperator":Ljava/lang/String;
    :cond_4
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateCurrentCarrierInProvider: mSubId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " currentDds = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " operatorNumeric = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3048
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v10, v2

    if-eqz v10, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_a

    .line 3050
    :cond_5
    const/4 v9, 0x0

    .line 3051
    .local v9, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_9

    .line 3052
    sget-object v10, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "current"

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v12

    int-to-long v12, v12

    invoke-static {v11, v12, v13}, Landroid/telephony/TelephonyManager;->appendId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 3056
    :goto_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3057
    .local v6, "map":Landroid/content/ContentValues;
    const-string v10, "numeric"

    invoke-virtual {v6, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3058
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v9, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3059
    const/4 v10, 0x1

    .line 3064
    .end local v6    # "map":Landroid/content/ContentValues;
    .end local v9    # "uri":Landroid/net/Uri;
    :goto_2
    return v10

    .line 3032
    :cond_6
    const-string v10, "20404"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3033
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3034
    .local v8, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const-string v5, ""

    .line 3035
    .local v5, "iccid":Ljava/lang/String;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    if-le v10, v11, :cond_7

    .line 3036
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x6

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3038
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "check CTC iccid= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3039
    const-string v10, "898603"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "898605"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "898611"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "898530"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3040
    :cond_8
    const-string v7, "46003"

    goto/16 :goto_0

    .line 3054
    .end local v5    # "iccid":Ljava/lang/String;
    .end local v8    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_9
    :try_start_1
    sget-object v10, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "current"

    invoke-static {v10, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto/16 :goto_1

    .line 3060
    :catch_0
    move-exception v4

    .line 3061
    .local v4, "e":Landroid/database/SQLException;
    const-string v10, "GSMPhone"

    const-string v11, "Can\'t store current operator"

    invoke-static {v10, v11, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3064
    .end local v4    # "e":Landroid/database/SQLException;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_a
    const/4 v10, 0x0

    goto :goto_2
.end method

.method updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 6
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3356
    const-string v4, "GSMPhone: updateCurrentCarrierInProvider called"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3359
    :try_start_0
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "current"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3360
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3361
    .local v1, "map":Landroid/content/ContentValues;
    const-string v4, "numeric"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCurrentCarrierInProvider from system: numeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3363
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update mccmnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3367
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3369
    const/4 v3, 0x1

    .line 3374
    .end local v1    # "map":Landroid/content/ContentValues;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v3

    .line 3370
    :catch_0
    move-exception v0

    .line 3371
    .local v0, "e":Landroid/database/SQLException;
    const-string v4, "GSMPhone"

    const-string v5, "Can\'t store current operator"

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->update()V

    .line 1882
    return-void
.end method

.method public updateEccNum(Ljava/lang/String;)V
    .locals 1
    .param p1, "eccNums"    # Ljava/lang/String;

    .prologue
    .line 3572
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEccNums:Ljava/lang/String;

    .line 3573
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setEmergencyNumbers(Ljava/lang/String;)V

    .line 3574
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableSingleLocationUpdate()V

    .line 2224
    return-void
.end method
