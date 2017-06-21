.class public Landroid/content/pm/PersonaInfo;
.super Ljava/lang/Object;
.source "PersonaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AUTH_TYPE_CMK:I = 0x2

.field public static final AUTH_TYPE_PWD_HASH:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_EC_ENABLED:I = 0x10000

.field public static final FLAG_ENCRYPT:I = 0x20

.field public static final FLAG_MIGRATION:I = 0x100

.field public static final FLAG_SECURE_FOLDER_CONTAINER:I = 0x2000

.field public static final FLAG_SECURE_STORAGE:I = 0x40

.field public static final KLMS_LOCKED:I = 0x9

.field public static final KNOX_SECURITY_TIMEOUT_DEFAULT:I = 0x927c0

.field public static final KNOX_STATE_ADMIN_LOCKED:I = 0x8

.field public static final KNOX_STATE_TIMA_COMPROMISED:I = 0x7

.field public static final KNOX_STATE_UPGRADING:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "PersonaInfo"

.field public static final PERSONA_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final STATE_ACTIVE:I = 0x0

.field public static final STATE_CREATE:I = 0x4

.field public static final STATE_DELETING:I = 0x3

.field public static final STATE_INITIALIZE:I = 0x1

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_LOCKED:I = 0x2

.field public static final STATE_RESET:I = 0x63

.field public static final STATE_RESET_PASSWORD:I = 0x5


# instance fields
.field private adminPackageName:Ljava/lang/String;

.field private adminUid:I

.field public authenticationType:I

.field public canUseBluetooth:Z

.field public canUseExtSdcard:Z

.field public cmkFormat:I

.field private creatorUid:I

.field public encryptedId:Ljava/lang/String;

.field private fingerCount:I

.field private fingerprintHashList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprintIndexList:[I

.field public flags:I

.field public fotaUpgradeVersion:I

.field public fwversion:Ljava/lang/String;

.field public id:I

.field private installedPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAdminLockedJustBefore:Z

.field public isBBCContainer:Z

.field public isEnabledFingerprintIndex:Z

.field public isEulaShown:Z

.field private isFingerIdentifyFailed:Z

.field private isFingerReset:Z

.field private isFingerTimeout:Z

.field public isFsMounted:Z

.field public isKioskModeEnabled:Z

.field public isLightWeightContainer:Z

.field public isPureContainer:Z

.field private isQuickAccessUIEnabled:Z

.field public isRestarting:Z

.field public isSdpMinor:Z

.field public isSecureFolder:Z

.field private isUnlockedAfterTurnOn:Z

.field public isUserManaged:Z

.field private knoxBackupPin:Ljava/lang/String;

.field private knoxSecurityTimeoutValue:I

.field private lastKeyguardUnlockTime:J

.field public lastLoggedOutTime:J

.field public lockInProgress:Z

.field public migratedToM:Z

.field public needsRestart:Z

.field parentId:I

.field public partial:Z

.field public personaFwkVersion:I

.field public removePersona:Z

.field public resetPassword:Z

.field public resetPersonaOnReboot:Z

.field public samsungAccount:Ljava/lang/String;

.field public sdpActive:Z

.field public sdpEnabled:Z

.field public setupComplete:Z

.field private setupWizardApkLocation:Ljava/lang/String;

.field public shownFolderHelp:Z

.field public shownLauncherHelp:Z

.field public timaEcrytfsIndex:I

.field public timaPasswordHintIndex:I

.field public timaPasswordIndex:I

.field public timaPwdResetTokenIndex:I

.field public timaVersion:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public upgradeInProgress:Z

.field private useEncoding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 746
    new-instance v0, Landroid/content/pm/PersonaInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PersonaInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PersonaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 104
    iput v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 109
    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 112
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 113
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 115
    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 118
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 120
    const-string v0, "0.0"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    .line 123
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 126
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 128
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 131
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 133
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    .line 136
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 142
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 143
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 146
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 149
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 152
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 154
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 157
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 160
    iput v1, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 163
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    .line 166
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 171
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 172
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 173
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 174
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 175
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 176
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 177
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 179
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 182
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 184
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    .line 186
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSecureFolder:Z

    .line 189
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 191
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 193
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 196
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    .line 201
    iput v1, p0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    .line 207
    iput v4, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 209
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 212
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 214
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 216
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 218
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 220
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 222
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 224
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 226
    const v0, 0x927c0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 228
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 230
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 232
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    .line 233
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    .line 234
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 237
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->migratedToM:Z

    .line 368
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 389
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "parentId"    # I
    .param p4, "creatorUid"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 104
    iput v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 109
    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 112
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 113
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 115
    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 118
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 120
    const-string v0, "0.0"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    .line 123
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 126
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 128
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 131
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 133
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    .line 136
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 142
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 143
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 146
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 149
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 152
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 154
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 157
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 160
    iput v1, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 163
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    .line 166
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 171
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 172
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 173
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 174
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 175
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 176
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 177
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 179
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 182
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 184
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    .line 186
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSecureFolder:Z

    .line 189
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 191
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 193
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 196
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    .line 201
    iput v1, p0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    .line 207
    iput v4, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 209
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 212
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 214
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 216
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 218
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 220
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 222
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 224
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 226
    const v0, 0x927c0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 228
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 230
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 232
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    .line 233
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    .line 234
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 237
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->migratedToM:Z

    .line 368
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 241
    iput p1, p0, Landroid/content/pm/PersonaInfo;->id:I

    .line 242
    iput p2, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 243
    iput p3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 244
    iput p4, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PersonaInfo;)V
    .locals 8
    .param p1, "orig"    # Landroid/content/pm/PersonaInfo;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v2, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 104
    iput v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 109
    iput v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 112
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 113
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 115
    iput v2, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 118
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 120
    const-string v0, "0.0"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    .line 123
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 126
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 128
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 131
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 133
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    .line 136
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 142
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 143
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 146
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 149
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 152
    iput v2, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 154
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 157
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 160
    iput v1, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 163
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    .line 166
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 171
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 172
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 173
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 174
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 175
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 176
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 177
    iput v1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 179
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 182
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 184
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    .line 186
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSecureFolder:Z

    .line 189
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 191
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 193
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 196
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    .line 201
    iput v1, p0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    .line 207
    iput v4, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 209
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 212
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 214
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 216
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 218
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 220
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 222
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 224
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 226
    const v0, 0x927c0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 228
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 230
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 232
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    .line 233
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    .line 234
    iput-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 237
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->migratedToM:Z

    .line 368
    iput-boolean v4, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 393
    iget v0, p1, Landroid/content/pm/PersonaInfo;->id:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    .line 394
    iget v0, p1, Landroid/content/pm/PersonaInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 395
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->partial:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 396
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 397
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 398
    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 399
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 400
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminUid()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 403
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    .line 404
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 405
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaPasswordIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 406
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaPwdResetTokenIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 407
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 408
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    .line 409
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 410
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 411
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 412
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 413
    iget v0, p1, Landroid/content/pm/PersonaInfo;->authenticationType:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 414
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 415
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 416
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 417
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 418
    iget v0, p1, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 419
    iget v0, p1, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    .line 420
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 421
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 422
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    .line 423
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isSecureFolder:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSecureFolder:Z

    .line 424
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 425
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 426
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaPasswordHintIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 427
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 428
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 429
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 430
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 431
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 432
    iget v0, p1, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    .line 433
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 434
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 436
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    .line 438
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 439
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 440
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 441
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 442
    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 443
    iget v0, p1, Landroid/content/pm/PersonaInfo;->fingerCount:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 444
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 445
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 446
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 447
    iget v0, p1, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 448
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 449
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 450
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    .line 451
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    .line 452
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 453
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 104
    iput v2, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 109
    iput v3, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 112
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 113
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 115
    iput v3, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 118
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 120
    const-string v0, "0.0"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    .line 123
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 126
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 128
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 131
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 133
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    .line 136
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 142
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 143
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 146
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 149
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 152
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 154
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 157
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 160
    iput v2, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 163
    iput v2, p0, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    .line 166
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 171
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 172
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 173
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 174
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 175
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 176
    iput-wide v6, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 177
    iput v2, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 179
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 182
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 184
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    .line 186
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSecureFolder:Z

    .line 189
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 191
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 193
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 196
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    .line 201
    iput v2, p0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    .line 207
    iput v1, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 209
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 212
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 214
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 216
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 218
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 220
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 222
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 224
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 226
    const v0, 0x927c0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 228
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 230
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 232
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    .line 233
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    .line 234
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 237
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->migratedToM:Z

    .line 368
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 757
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    .line 758
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 759
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 761
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 762
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 763
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 764
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 765
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 766
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 771
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    .line 773
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 774
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 775
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 776
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    .line 777
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 779
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 781
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 784
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    .line 785
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSecureFolder:Z

    .line 786
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    .line 789
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 790
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 791
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    .line 792
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    .line 793
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    .line 794
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 796
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_14
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 799
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 800
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 801
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_17
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 802
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 803
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 804
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 805
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_19
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    .line 806
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    .line 807
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 808
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    .line 809
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 810
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_1c
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    .line 811
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 812
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 814
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    :goto_1d
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->migratedToM:Z

    .line 816
    return-void

    :cond_0
    move v0, v2

    .line 759
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 771
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 772
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 775
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 776
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 778
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 779
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 782
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 783
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 784
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 785
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 786
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 787
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 788
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 789
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 790
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 791
    goto/16 :goto_10

    :cond_11
    move v0, v2

    .line 793
    goto/16 :goto_11

    :cond_12
    move v0, v2

    .line 794
    goto/16 :goto_12

    :cond_13
    move v0, v2

    .line 796
    goto/16 :goto_13

    :cond_14
    move v0, v2

    .line 798
    goto/16 :goto_14

    :cond_15
    move v0, v2

    .line 799
    goto/16 :goto_15

    :cond_16
    move v0, v2

    .line 800
    goto/16 :goto_16

    :cond_17
    move v0, v2

    .line 801
    goto/16 :goto_17

    :cond_18
    move v0, v2

    .line 804
    goto/16 :goto_18

    :cond_19
    move v0, v2

    .line 805
    goto/16 :goto_19

    :cond_1a
    move v0, v2

    .line 806
    goto/16 :goto_1a

    :cond_1b
    move v0, v2

    .line 808
    goto :goto_1b

    :cond_1c
    move v0, v2

    .line 810
    goto :goto_1c

    :cond_1d
    move v1, v2

    .line 814
    goto :goto_1d
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PersonaInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/PersonaInfo$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/content/pm/PersonaInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private showFingerprintIndexStatus()V
    .locals 4

    .prologue
    .line 590
    const-string v1, "PersonaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEnabledFingerprintIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    if-eqz v1, :cond_0

    .line 592
    const-string v1, "PersonaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fingerprintIndexList.length  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 594
    const-string v1, "PersonaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fingerprintIndexList["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    .end local v0    # "i":I
    :cond_0
    const-string v1, "PersonaInfo"

    const-string v2, "fingerprintIndexList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 601
    const-string v1, "PersonaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fingerprintHashList.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 603
    const-string v2, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fingerprintHashList["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]  = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 605
    .end local v0    # "i":I
    :cond_2
    const-string v1, "PersonaInfo"

    const-string v2, "fingerprintHashList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method public getAdminPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdminUid()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    return v0
.end method

.method public getAuthenticationType()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    return v0
.end method

.method public getCreatorUid()I
    .locals 3

    .prologue
    .line 493
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    return v0
.end method

.method public getFingerCount()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    return v0
.end method

.method public getFingerprintHashList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    const-string v0, "PersonaInfo"

    const-string v1, "called getFingerprintHashList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    return-object v0
.end method

.method public getFingerprintIndexList()[I
    .locals 2

    .prologue
    .line 612
    const-string v0, "PersonaInfo"

    const-string v1, "called getFingerprintIndexList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    return v0
.end method

.method public getInstalledPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    return-object v0
.end method

.method public getIsAdminLockedJustBefore()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    return v0
.end method

.method public getIsFingerIdentifyFailed()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    return v0
.end method

.method public getIsFingerReset()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    return v0
.end method

.method public getIsFingerTimeout()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    return v0
.end method

.method public getIsQuickAccessUIEnabled()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    return v0
.end method

.method public getIsUnlockedAfterTurnOn()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    return v0
.end method

.method public getKnoxBackupPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    return-object v0
.end method

.method public getKnoxSecurityTimeoutValue()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    return v0
.end method

.method public getLastKeyguardUnlockTime()J
    .locals 2

    .prologue
    .line 321
    iget-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    return-wide v0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    return v0
.end method

.method public getPersonaHandle()Landroid/os/PersonaHandle;
    .locals 2

    .prologue
    .line 457
    new-instance v0, Landroid/os/PersonaHandle;

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    return-object v0
.end method

.method public getSetupWizardApkLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 545
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTimaEcrytfsIndex()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    return v0
.end method

.method public getTimaPasswordHintIndex()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    return v0
.end method

.method public getTimaPasswordIndex()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    return v0
.end method

.method public getTimaPwdResetTokenIndex()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 462
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getsamsungAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    return-object v0
.end method

.method public isECContainer()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 363
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEncodingRequired()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    return v0
.end method

.method public isMigratedPersona()Z
    .locals 2

    .prologue
    .line 358
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureFileSystem()Z
    .locals 2

    .prologue
    .line 347
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureFolderEnabled()Z
    .locals 2

    .prologue
    .line 382
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureStorageEnabled()Z
    .locals 2

    .prologue
    .line 352
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdminPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "adminPackageName"    # Ljava/lang/String;

    .prologue
    .line 478
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 479
    return-void
.end method

.method public setAdminUid(I)V
    .locals 0
    .param p1, "adminUid"    # I

    .prologue
    .line 488
    iput p1, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 489
    return-void
.end method

.method public setAuthenticationType(I)V
    .locals 3
    .param p1, "authType"    # I

    .prologue
    .line 551
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAuthenticationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iput p1, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    .line 554
    return-void
.end method

.method public setCreatorUid(I)V
    .locals 3
    .param p1, "creatorUid"    # I

    .prologue
    .line 499
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iput p1, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 501
    return-void
.end method

.method public setEncodingRequired(Z)V
    .locals 0
    .param p1, "isEncoding"    # Z

    .prologue
    .line 377
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    .line 378
    return-void
.end method

.method public setFingerCount(I)V
    .locals 0
    .param p1, "fingerCount"    # I

    .prologue
    .line 336
    iput p1, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    .line 337
    return-void
.end method

.method public setFingerprintHashList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, "hashs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "PersonaInfo"

    const-string v1, "called setFingerprintHashList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 637
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 641
    :goto_0
    return-void

    .line 639
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    goto :goto_0
.end method

.method public setFingerprintIndexList([I)V
    .locals 2
    .param p1, "indexs"    # [I

    .prologue
    .line 618
    const-string v0, "PersonaInfo"

    const-string v1, "called setFingerprintIndexList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 620
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    .line 624
    :goto_0
    return-void

    .line 622
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintIndexList:[I

    goto :goto_0
.end method

.method public setInstalledPkgList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 584
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 586
    :cond_0
    return-void
.end method

.method public setIsAdminLockedJustBefore(Z)V
    .locals 0
    .param p1, "isAdminLockedJustBefore"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    .line 317
    return-void
.end method

.method public setIsFingerIdentifyFailed(Z)V
    .locals 0
    .param p1, "isFingerIdentifyFailed"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    .line 297
    return-void
.end method

.method public setIsFingerReset(Z)V
    .locals 0
    .param p1, "isFingerReset"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    .line 307
    return-void
.end method

.method public setIsFingerTimeout(Z)V
    .locals 0
    .param p1, "isFingerTimeout"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    .line 287
    return-void
.end method

.method public setIsQuickAccessUIEnabled(Z)V
    .locals 0
    .param p1, "isQuickAccessUIEnabled"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    .line 276
    return-void
.end method

.method public setIsUnlockedAfterTurnOn(Z)V
    .locals 0
    .param p1, "isUnlockedAfterTurnOn"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 265
    return-void
.end method

.method public setKnoxBackupPin(Ljava/lang/String;)V
    .locals 0
    .param p1, "backupPin"    # Ljava/lang/String;

    .prologue
    .line 668
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 669
    return-void
.end method

.method public setKnoxSecurityTimeoutValue(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 650
    iput p1, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    .line 651
    return-void
.end method

.method public setLastKeyguardUnlockTime(J)V
    .locals 1
    .param p1, "lastKeyguardUnlockTime"    # J

    .prologue
    .line 326
    iput-wide p1, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    .line 327
    return-void
.end method

.method public setSetupWizardApkLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "setupWizardApkLocation"    # Ljava/lang/String;

    .prologue
    .line 561
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 563
    return-void
.end method

.method public setTimaEcrytfsIndex(I)V
    .locals 0
    .param p1, "timaEcrytfsIndex"    # I

    .prologue
    .line 510
    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 511
    return-void
.end method

.method public setTimaPasswordHintIndex(I)V
    .locals 0
    .param p1, "timaPasswordHintIndex"    # I

    .prologue
    .line 540
    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    .line 541
    return-void
.end method

.method public setTimaPasswordIndex(I)V
    .locals 0
    .param p1, "timaPasswordIndex"    # I

    .prologue
    .line 530
    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 531
    return-void
.end method

.method public setTimaPwdResetTokenIndex(I)V
    .locals 0
    .param p1, "timaPwdResetTokenIndex"    # I

    .prologue
    .line 520
    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaPwdResetTokenIndex:I

    .line 521
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setsamsungAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "samsungAccount"    # Ljava/lang/String;

    .prologue
    .line 572
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 573
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersonaInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifyKnoxBackupPin(Ljava/lang/String;)Z
    .locals 1
    .param p1, "backupPin"    # Ljava/lang/String;

    .prologue
    .line 655
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    const/4 v0, 0x1

    .line 658
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 684
    iget v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    iget v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 689
    iget-wide v4, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 690
    iget v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 693
    iget v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->timaVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 695
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordHintIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 702
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    iget v0, p0, Landroid/content/pm/PersonaInfo;->authenticationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 708
    iget v0, p0, Landroid/content/pm/PersonaInfo;->personaFwkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isBBCContainer:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSecureFolder:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->canUseBluetooth:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    iget v0, p0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUnlockedAfterTurnOn:Z

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isQuickAccessUIEnabled:Z

    if-eqz v0, :cond_13

    move v0, v1

    :goto_13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerTimeout:Z

    if-eqz v0, :cond_14

    move v0, v1

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerIdentifyFailed:Z

    if-eqz v0, :cond_15

    move v0, v1

    :goto_15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFingerReset:Z

    if-eqz v0, :cond_16

    move v0, v1

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isAdminLockedJustBefore:Z

    if-eqz v0, :cond_17

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    iget-wide v4, p0, Landroid/content/pm/PersonaInfo;->lastKeyguardUnlockTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 730
    iget v0, p0, Landroid/content/pm/PersonaInfo;->fingerCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->useEncoding:Z

    if-eqz v0, :cond_18

    move v0, v1

    :goto_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownLauncherHelp:Z

    if-eqz v0, :cond_19

    move v0, v1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->shownFolderHelp:Z

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget v0, p0, Landroid/content/pm/PersonaInfo;->knoxSecurityTimeoutValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isEulaShown:Z

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->knoxBackupPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 737
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isEnabledFingerprintIndex:Z

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 740
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->migratedToM:Z

    if-eqz v0, :cond_1d

    :goto_1d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    return-void

    :cond_0
    move v0, v2

    .line 686
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 698
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 699
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 702
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 703
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 705
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 706
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 709
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 710
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 711
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 712
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 713
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 714
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 715
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 716
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 717
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 718
    goto/16 :goto_10

    :cond_11
    move v0, v2

    .line 720
    goto/16 :goto_11

    :cond_12
    move v0, v2

    .line 721
    goto/16 :goto_12

    :cond_13
    move v0, v2

    .line 723
    goto/16 :goto_13

    :cond_14
    move v0, v2

    .line 725
    goto/16 :goto_14

    :cond_15
    move v0, v2

    .line 726
    goto/16 :goto_15

    :cond_16
    move v0, v2

    .line 727
    goto/16 :goto_16

    :cond_17
    move v0, v2

    .line 728
    goto/16 :goto_17

    :cond_18
    move v0, v2

    .line 731
    goto/16 :goto_18

    :cond_19
    move v0, v2

    .line 732
    goto :goto_19

    :cond_1a
    move v0, v2

    .line 733
    goto :goto_1a

    :cond_1b
    move v0, v2

    .line 735
    goto :goto_1b

    :cond_1c
    move v0, v2

    .line 737
    goto :goto_1c

    :cond_1d
    move v1, v2

    .line 740
    goto :goto_1d
.end method
