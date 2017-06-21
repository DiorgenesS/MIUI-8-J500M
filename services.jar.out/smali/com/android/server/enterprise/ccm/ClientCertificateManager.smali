.class public Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.super Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;
.source "ClientCertificateManager.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;,
        Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;
    }
.end annotation


# static fields
.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final CCM_PRIVATE_KEY:I = 0x3

.field private static final CCM_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.ccm.date"

.field private static final DBG:Z

.field public static final KEYSTORE_KEYCHAIN_CCM_MARKER:Ljava/lang/String; = "keystorekeychain"

.field private static final KNOX_CCM_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CCM"

.field private static TAG:Ljava/lang/String;

.field private static final defaultPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final INVALID_SLOT_ID:J

.field private final TIMA_SERVICE:Ljava/lang/String;

.field private final TZ_CCM_APP_NAME:Ljava/lang/String;

.field private final TZ_CCM_SUCCESS:J

.field private mContext:Landroid/content/Context;

.field private mDefaultCertAlias:Ljava/lang/String;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsTimaVersion30:Z

.field private mPersonaMgr:Landroid/os/PersonaManager;

.field private mPersonaObr:Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

.field private mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotCount:I

.field private final mTimaService:Landroid/service/tima/ITimaService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 152
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    .line 155
    const-string v0, "ClientCertificateManager Service"

    sput-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 191
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.samsung.android.spayfw"

    aput-object v3, v0, v1

    const-string v1, "com.samsung.android.spay"

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    return-void

    :cond_0
    move v0, v2

    .line 152
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 193
    invoke-direct {p0}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;-><init>()V

    .line 159
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    .line 160
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 161
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 162
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    .line 163
    new-instance v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

    invoke-direct {v4, p0, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;)V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObr:Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

    .line 164
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    .line 165
    iput v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 166
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    .line 168
    const-string/jumbo v4, "tima"

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TIMA_SERVICE:Ljava/lang/String;

    .line 172
    iput-boolean v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    .line 177
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TZ_CCM_SUCCESS:J

    .line 185
    const-wide v4, 0xffffffffL

    iput-wide v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->INVALID_SLOT_ID:J

    .line 188
    const-string/jumbo v4, "tz_ccm"

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TZ_CCM_APP_NAME:Ljava/lang/String;

    .line 3443
    new-instance v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 195
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "ClientCertificateManager Constructor"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    .line 197
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 198
    const-string/jumbo v4, "tima"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    .line 200
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setupIntentFilters()V

    .line 204
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    .line 206
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    if-eqz v4, :cond_1

    .line 207
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObr:Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    .line 209
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v4, v7}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    .line 210
    .local v3, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_1

    .line 211
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 212
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    iget v4, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->registerPersonaObserver(I)V

    goto :goto_0

    .line 217
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    .end local v3    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v4

    iput v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 220
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v4, :cond_3

    .line 222
    :try_start_0
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_2

    .line 223
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "Called TIMA service getTimaVersion"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v4}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 225
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_3
    :goto_1
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static native CCM_SetTokenTUIPasswd(II)I
.end method

.method static native CCM_SetTokenTUIProperty(ILjava/lang/String;[BII)I
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMProfileDefaultForContainer(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMAsDefaultCertStore(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->registerPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->unregisterPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/ccm/ClientCertificateManager;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMDefaultPolicyRecord(I)Z

    move-result v0

    return v0
.end method

.method private addDefaultPackageToExemptList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1117
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "addDefaultPackageToExemptList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1119
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1120
    .local v0, "defaultPackageName":Ljava/lang/String;
    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v2

    .line 1121
    .local v2, "uid":I
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "defaultPackageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_1
    const/4 v3, -0x1

    if-eq v3, v2, :cond_2

    .line 1123
    const/4 v3, 0x1

    const/16 v4, 0x3e8

    invoke-static {v3, v4, v6, v2, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 1118
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1126
    .end local v0    # "defaultPackageName":Ljava/lang/String;
    .end local v2    # "uid":I
    :cond_3
    return-void
.end method

.method private addExemptList()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 259
    .local v2, "c":Landroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v3, "containerId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v1, "adminUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string v7, "/data/system/enterprise.db"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 263
    const-string v6, "SELECT * FROM MUMCONTAINER;"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 264
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 265
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_3

    .line 266
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v6

    .line 273
    if-eqz v2, :cond_0

    .line 274
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_0
    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 278
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 279
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v7, "No container"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    :goto_2
    return-void

    .line 273
    :cond_3
    if-eqz v2, :cond_4

    .line 274
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_4
    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 273
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_5

    .line 274
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_5
    if-eqz v0, :cond_6

    .line 276
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v6

    .line 284
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 285
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 286
    const/4 v4, -0x1

    .line 287
    .local v4, "emailUid":I
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "com.samsung.android.email.provider"

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v4

    .line 288
    if-eq v4, v12, :cond_9

    .line 289
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v11, v7, v6, v4, v10}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 285
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 291
    :cond_9
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "com.samsung.android.email.sync"

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v4

    .line 292
    if-eq v4, v12, :cond_a

    .line 293
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v11, v7, v6, v4, v10}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_4

    .line 295
    :cond_a
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "com.android.exchange"

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v4

    .line 296
    if-eq v4, v12, :cond_8

    .line 297
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v11, v7, v6, v4, v10}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_4

    .line 303
    .end local v4    # "emailUid":I
    .end local v5    # "i":I
    :cond_b
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v7, "No Admin for this container"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method static native ccm_create_slot(IIILjava/lang/String;)J
.end method

.method static native ccm_delete_alias_list(I[Ljava/lang/String;)J
.end method

.method static native ccm_delete_certificate(IILjava/lang/String;)J
.end method

.method static native ccm_delete_csr_profile(IILjava/lang/String;)J
.end method

.method static native ccm_delete_slot(II)J
.end method

.method static native ccm_gen_csr_using_template(IILjava/lang/String;Ljava/lang/String;[B)[B
.end method

.method static native ccm_generate_csr(IILjava/lang/String;)[B
.end method

.method static native ccm_get_aliases_having_private_key(I)[Ljava/lang/String;
.end method

.method static native ccm_get_error_message(J)Ljava/lang/String;
.end method

.method static native ccm_install_certificate(IIZZZLjava/lang/String;[BLjava/lang/String;)J
.end method

.method static native ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J
.end method

.method static native ccm_manage_exempt_list(ZIIIZ)J
.end method

.method static native ccm_set_csr_profile(IILjava/lang/String;I[BI)J
.end method

.method static native ccm_update_lock_status(IIZ)J
.end method

.method private checkAliasExists(IILjava/lang/String;Z)Z
    .locals 9
    .param p1, "adminId"    # I
    .param p2, "userId"    # I
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "isCsrRecord"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4054
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 4055
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "in checkAliasExists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    :cond_0
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1

    .line 4058
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdminId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", UserId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Alias - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isCsrRecord - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    :cond_1
    if-eqz p4, :cond_3

    move v0, v4

    .line 4064
    .local v0, "csrRecordIntValue":I
    :goto_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4065
    .local v1, "cvW":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4066
    const-string/jumbo v6, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4067
    const-string v6, "alias"

    invoke-virtual {v1, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4068
    const-string/jumbo v6, "csr"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4070
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertTable"

    invoke-virtual {v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    .line 4073
    .local v3, "rowCount":I
    if-lez v3, :cond_4

    .line 4074
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_2

    .line 4075
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v7, "Alias Exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4083
    .end local v1    # "cvW":Landroid/content/ContentValues;
    .end local v3    # "rowCount":I
    :cond_2
    :goto_1
    return v4

    .end local v0    # "csrRecordIntValue":I
    :cond_3
    move v0, v5

    .line 4061
    goto :goto_0

    .line 4078
    .restart local v0    # "csrRecordIntValue":I
    :catch_0
    move-exception v2

    .line 4079
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 4080
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAliasExists - Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    move v4, v5

    .line 4083
    goto :goto_1
.end method

.method private checkDefaultCCMProfile()Z
    .locals 7

    .prologue
    .line 958
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "checkDefaultCCMProfile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    const/4 v4, 0x0

    .line 960
    .local v4, "prepared":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDefaultPackageList()Ljava/util/List;

    move-result-object v3

    .line 961
    .local v3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 962
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 963
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 964
    .local v1, "defaultPackageName":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 965
    .local v0, "contains":Z
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 966
    const/4 v4, 0x1

    .line 962
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 968
    :cond_1
    const/4 v4, 0x0

    .line 973
    .end local v0    # "contains":Z
    .end local v1    # "defaultPackageName":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    return v4
.end method

.method private checkMPforCCM()V
    .locals 12

    .prologue
    .line 3537
    const/4 v8, 0x0

    .line 3538
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 3539
    .local v7, "userManager":Landroid/os/UserManager;
    if-eqz v7, :cond_0

    .line 3540
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    .line 3543
    :cond_0
    if-eqz v8, :cond_8

    .line 3544
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 3545
    .local v6, "user":Landroid/content/pm/UserInfo;
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMPforCCM() user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", CCM? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v6, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    :cond_2
    iget-boolean v9, v6, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    if-nez v9, :cond_6

    .line 3547
    const/4 v4, 0x0

    .line 3549
    .local v4, "provision":Z
    const-string/jumbo v9, "device_policy"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    .line 3553
    .local v1, "dpms":Landroid/app/admin/IDevicePolicyManager;
    :try_start_0
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    if-nez v9, :cond_5

    .line 3554
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 3555
    const/4 v4, 0x1

    .line 3562
    :cond_3
    :goto_1
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMPforCCM() user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", provision? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    :cond_4
    if-eqz v4, :cond_1

    .line 3564
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3566
    :catch_0
    move-exception v5

    .line 3567
    .local v5, "re":Landroid/os/RemoteException;
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v10, "DPMS"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3558
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_5
    :try_start_1
    iget v9, v6, Landroid/content/pm/UserInfo;->flags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit8 v9, v9, 0x20

    const/16 v10, 0x20

    if-ne v9, v10, :cond_3

    .line 3559
    const/4 v4, 0x1

    goto :goto_1

    .line 3571
    .end local v1    # "dpms":Landroid/app/admin/IDevicePolicyManager;
    .end local v4    # "provision":Z
    :cond_6
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 3573
    .local v3, "mumContainerOwnerUid":I
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 3575
    .local v0, "adminId":I
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_7

    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMPforCCM() mumContainerOwnerUid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    :cond_7
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMPforCCM() adminId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3584
    .end local v0    # "adminId":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mumContainerOwnerUid":I
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_8
    return-void
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 3363
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3368
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 3364
    :catch_0
    move-exception v0

    .line 3365
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3366
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private deleteCCMDefaultPolicyRecord(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 4346
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 4347
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "in deleteCCMDefaultPolicyRecord"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4349
    :cond_0
    const/4 v5, 0x1

    :try_start_0
    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "uid"

    aput-object v6, v2, v5

    .line 4350
    .local v2, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 4351
    .local v0, "contId":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    .line 4352
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMDefaultPolicy"

    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 4357
    .end local v0    # "contId":Ljava/lang/String;
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :goto_0
    return v4

    .line 4354
    :catch_0
    move-exception v1

    .line 4355
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "deleteCCMDefaultPolicyRecord() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteCCMProfile(I)Z
    .locals 10
    .param p1, "containerId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2023
    iget-boolean v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v6, :cond_1

    .line 2024
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 2025
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "deleteCCMProfile - TIMA version does not include CCM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_0
    :goto_0
    return v4

    .line 2031
    :cond_1
    const-wide/16 v6, 0x0

    invoke-static {v4, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 2032
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 2033
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "deleteCCMProfile - native ccm_delete_slot failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2036
    :cond_2
    invoke-direct {p0, v4, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 2038
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v6, "uid"

    aput-object v6, v2, v4

    .line 2039
    .local v2, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2040
    .local v0, "contId":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 2041
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ClientCertificateManagerTable"

    invoke-virtual {v4, v6, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2044
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v4

    iput v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "contId":Ljava/lang/String;
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :cond_3
    :goto_1
    move v4, v5

    .line 2050
    goto :goto_0

    .line 2045
    :catch_0
    move-exception v1

    .line 2046
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_3

    .line 2047
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deleteCCMProfile - Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private deleteCCMProfileUsingAdminId(IIZ)Z
    .locals 10
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I
    .param p3, "useAdminIdOnly"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1973
    iget-boolean v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v5, :cond_1

    .line 1974
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 1975
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCCMProfileUsingAdminId - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_0
    :goto_0
    return v3

    .line 1981
    :cond_1
    const-wide/16 v6, 0x0

    invoke-static {p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 1982
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 1983
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCCMProfileUsingAdminId - native ccm_delete_slot failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1987
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 1991
    if-eqz p3, :cond_4

    .line 1992
    const/4 v3, 0x1

    :try_start_0
    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "adminUid"

    aput-object v5, v1, v3

    .line 1993
    .local v1, "sColumns":[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 1994
    .local v2, "sValues":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ClientCertificateManagerTable"

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2005
    :goto_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v3

    iput v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sValues":[Ljava/lang/String;
    :cond_3
    :goto_2
    move v3, v4

    .line 2013
    goto :goto_0

    .line 1997
    :cond_4
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "adminUid"

    aput-object v5, v1, v3

    const/4 v3, 0x1

    const-string/jumbo v5, "uid"

    aput-object v5, v1, v3

    .line 1999
    .restart local v1    # "sColumns":[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 2001
    .restart local v2    # "sValues":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ClientCertificateManagerTable"

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2006
    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2007
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_3

    .line 2008
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCCMProfileUsingAdminId - Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private deleteCSRProfileUsingAdminId(II)Z
    .locals 12
    .param p1, "adminId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 4600
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 4601
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "in deleteCSRProfileUsingAdminId"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4603
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v7, :cond_2

    .line 4604
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 4605
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "deleteCSRProfileUsingAdminId - TIMA version does not include CCM"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4607
    :cond_1
    const/4 v7, 0x0

    .line 4676
    :goto_0
    return v7

    .line 4610
    :cond_2
    const/4 v5, 0x0

    .line 4613
    .local v5, "templateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4614
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v7, "csr"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4617
    const/4 v7, -0x1

    if-ne v7, p1, :cond_7

    .line 4618
    const-string/jumbo v7, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4624
    :goto_1
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_3

    .line 4625
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "in deleteCSRProfileUsingAdminId: AdminId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4629
    :cond_3
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CCMCertTable"

    const-string v9, "alias"

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 4632
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 4634
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4635
    .local v6, "templateName":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_5

    .line 4636
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "in deleteCSRProfileUsingAdminId - templateName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4639
    :cond_5
    const-wide/16 v8, 0x0

    invoke-static {p1, p2, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_csr_profile(IILjava/lang/String;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    .line 4641
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_6

    .line 4642
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "deleteCSRProfileUsingAdminId - native ccm_delete_csr_profile failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4644
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 4620
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "templateName":Ljava/lang/String;
    :cond_7
    const-string v7, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4621
    const-string/jumbo v7, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 4669
    .end local v0    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 4670
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_8

    .line 4671
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteCSRProfileUsingAdminId - Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4676
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 4649
    .restart local v0    # "cvWhere":Landroid/content/ContentValues;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    const/4 v7, -0x1

    if-ne v7, p1, :cond_a

    .line 4650
    const/4 v7, 0x2

    :try_start_1
    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "uid"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "csr"

    aput-object v8, v3, v7

    .line 4652
    .local v3, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 4655
    .local v4, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CCMCertTable"

    invoke-virtual {v7, v8, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 4667
    :goto_2
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 4658
    .end local v3    # "sColumns":[Ljava/lang/String;
    .end local v4    # "sValues":[Ljava/lang/String;
    :cond_a
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adminUid"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "uid"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "csr"

    aput-object v8, v3, v7

    .line 4660
    .restart local v3    # "sColumns":[Ljava/lang/String;
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 4663
    .restart local v4    # "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CCMCertTable"

    invoke-virtual {v7, v8, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private deleteCertificateProfile(I)Z
    .locals 11
    .param p1, "containerId"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2361
    iget-boolean v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v5, :cond_1

    .line 2362
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 2363
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCertificateProfile - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :cond_0
    :goto_0
    return v3

    .line 2369
    :cond_1
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-static {v3, p1, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 2370
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 2371
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCertificateProfile - native ccm_delete_certificate failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2376
    :cond_2
    new-array v1, v10, [Ljava/lang/String;

    const-string/jumbo v5, "uid"

    aput-object v5, v1, v3

    const-string/jumbo v5, "csr"

    aput-object v5, v1, v4

    .line 2377
    .local v1, "sColumns":[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 2379
    .local v2, "sValues":[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMCertTable"

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 2381
    goto :goto_0

    .line 2382
    :catch_0
    move-exception v0

    .line 2383
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 2384
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCertificateProfile - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteCertificateProfileUsingAdminId(IIZ)Z
    .locals 8
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I
    .param p3, "useAdminIdOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2311
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 2312
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in deleteCertificateProfileUsingAdminId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_2

    .line 2315
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 2316
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCertificateProfileUsingAdminId - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    :cond_1
    :goto_0
    return v1

    .line 2322
    :cond_2
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {p1, p2, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 2324
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 2325
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCertificateProfileUsingAdminId - native ccm_delete_certificate failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2330
    :cond_3
    const/4 v1, 0x1

    .line 2332
    .local v1, "ret":Z
    if-eqz p3, :cond_5

    .line 2333
    const/4 v4, 0x2

    :try_start_0
    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "csr"

    aput-object v5, v2, v4

    .line 2335
    .local v2, "sColumns":[Ljava/lang/String;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2337
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2353
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :cond_4
    :goto_1
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 2354
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "out deleteCertificateProfileUsingAdminId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2340
    :cond_5
    const/4 v4, 0x3

    :try_start_1
    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "uid"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "csr"

    aput-object v5, v2, v4

    .line 2342
    .restart local v2    # "sColumns":[Ljava/lang/String;
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2344
    .restart local v3    # "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2347
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2348
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 2349
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 2350
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCertificateProfileUsingAdminId - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private deleteCertificateUsingAdminId(IILjava/lang/String;)Z
    .locals 18
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 2250
    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_0

    .line 2251
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "in deleteCertificateUsingAdminId"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v13, :cond_2

    .line 2254
    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_1

    .line 2255
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "deleteCertificateUsingAdminId - TIMA version does not include CCM"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    :cond_1
    const/4 v13, 0x0

    .line 2305
    :goto_0
    return v13

    .line 2261
    :cond_2
    const-wide/16 v14, 0x0

    :try_start_0
    invoke-static/range {p1 .. p3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-eqz v13, :cond_4

    .line 2263
    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_3

    .line 2264
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "deleteCertificateUsingAdminId - native ccm_delete_certificate failed"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 2270
    :cond_4
    const/4 v3, 0x0

    .line 2271
    .local v3, "callerUid":I
    const/4 v13, 0x4

    new-array v9, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "adminUid"

    aput-object v14, v9, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "uid"

    aput-object v14, v9, v13

    const/4 v13, 0x2

    const-string v14, "alias"

    aput-object v14, v9, v13

    const/4 v13, 0x3

    const-string/jumbo v14, "csr"

    aput-object v14, v9, v13

    .line 2274
    .local v9, "sIdColumns":[Ljava/lang/String;
    const/4 v13, 0x4

    new-array v11, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x2

    aput-object p3, v11, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    .line 2276
    .local v11, "sIdValues":[Ljava/lang/String;
    const/4 v13, 0x1

    new-array v10, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "installerId"

    aput-object v14, v10, v13

    .line 2278
    .local v10, "sIdReturnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "CCMCertTable"

    invoke-virtual {v13, v14, v9, v11, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2281
    .local v5, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 2282
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    const-string/jumbo v14, "installerId"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2287
    :cond_5
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2288
    .local v2, "adminId":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2289
    .local v4, "contId":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 2290
    .local v7, "installerId":Ljava/lang/String;
    const/4 v13, 0x5

    new-array v8, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "adminUid"

    aput-object v14, v8, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "uid"

    aput-object v14, v8, v13

    const/4 v13, 0x2

    const-string v14, "alias"

    aput-object v14, v8, v13

    const/4 v13, 0x3

    const-string/jumbo v14, "installerId"

    aput-object v14, v8, v13

    const/4 v13, 0x4

    const-string/jumbo v14, "csr"

    aput-object v14, v8, v13

    .line 2293
    .local v8, "sColumns":[Ljava/lang/String;
    const/4 v13, 0x5

    new-array v12, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object v7, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 2296
    .local v12, "sValues":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "CCMCertTable"

    invoke-virtual {v13, v14, v8, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2298
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2299
    .end local v2    # "adminId":Ljava/lang/String;
    .end local v3    # "callerUid":I
    .end local v4    # "contId":Ljava/lang/String;
    .end local v5    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v7    # "installerId":Ljava/lang/String;
    .end local v8    # "sColumns":[Ljava/lang/String;
    .end local v9    # "sIdColumns":[Ljava/lang/String;
    .end local v10    # "sIdReturnColumns":[Ljava/lang/String;
    .end local v11    # "sIdValues":[Ljava/lang/String;
    .end local v12    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2300
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_6

    .line 2301
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "deleteCertificateUsingAdminId - Exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private deleteDefaultCCMProfile(J)V
    .locals 11
    .param p1, "slotId"    # J

    .prologue
    .line 1201
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteDefaultCCMProfile : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_0
    const-wide v8, 0xffffffffL

    cmp-long v7, p1, v8

    if-nez v7, :cond_2

    .line 1203
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v8, "INVALID_SLOT_ID"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_1
    return-void

    .line 1206
    :cond_2
    const-string v0, "1000"

    .line 1207
    .local v0, "adminUid":Ljava/lang/String;
    const-string v1, "0"

    .line 1209
    .local v1, "containerId":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 1211
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1212
    .local v4, "packageName":Ljava/lang/String;
    const/4 v7, 0x4

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adminUid"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "uid"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "slotId"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "pkgName"

    aput-object v8, v5, v7

    .line 1214
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x4

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    .line 1217
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ClientCertificateManagerTable"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1219
    :catch_0
    move-exception v2

    .line 1220
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteDefaultCCMProfile - Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 337
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    .line 339
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v0

    .line 341
    .local v0, "profileOwnerUid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v1, v0, :cond_1

    .line 342
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 343
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "ClientCertificateManager.enforceAdminPermission() call comes from the profile owner"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 353
    .end local v0    # "profileOwnerUid":I
    :goto_0
    return-object v1

    .line 349
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 350
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string/jumbo v2, "com.sec.enterprise.knox.permission.KNOX_CCM"

    invoke-virtual {v1, p1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    :cond_2
    move-object v1, p1

    .line 353
    goto :goto_0
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)V
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string/jumbo v1, "com.sec.enterprise.knox.permission.KNOX_CCM"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_0
.end method

.method private existDefaultProfile(J)Z
    .locals 13
    .param p1, "slotId"    # J

    .prologue
    .line 1173
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "existDefaultProfile : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_0
    const/4 v3, 0x0

    .line 1175
    .local v3, "exist":Z
    const-string v1, "1000"

    .line 1176
    .local v1, "defaultAdminUid":Ljava/lang/String;
    const-string v2, "0"

    .line 1177
    .local v2, "defaultContainerId":Ljava/lang/String;
    const/4 v10, 0x3

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "uid"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "pkgName"

    aput-object v11, v7, v10

    .line 1179
    .local v7, "sIdColumns_default":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "slotId"

    aput-object v11, v8, v10

    .line 1180
    .local v8, "sReturnColumns":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 1181
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1182
    .local v6, "packageName":Ljava/lang/String;
    const/4 v10, 0x3

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const/4 v10, 0x2

    aput-object v6, v9, v10

    .line 1185
    .local v9, "sValues":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v7, v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1189
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 1190
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v11, "slotId"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1191
    .local v4, "existSlotId":I
    int-to-long v10, v4

    cmp-long v10, v10, p1

    if-nez v10, :cond_2

    .line 1192
    const/4 v3, 0x1

    .line 1197
    .end local v0    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "existSlotId":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "sValues":[Ljava/lang/String;
    :cond_1
    return v3

    .line 1180
    .restart local v0    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v9    # "sValues":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3917
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 3918
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 3919
    .local v0, "newCInfo":Landroid/app/enterprise/ContextInfo;
    move-object p1, v0

    .line 3920
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3921
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fixContextInfoForMP() returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3924
    .end local v0    # "newCInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    return-object p1
.end method

.method private getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I
    .locals 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3809
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, -0x1

    .line 3810
    .local v5, "adminId":I
    const/4 v7, 0x0

    .line 3812
    .local v7, "caller":Ljava/lang/String;
    const/16 v21, 0x2

    :try_start_0
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "uid"

    aput-object v22, v17, v21

    const/16 v21, 0x1

    const-string/jumbo v22, "pkgName"

    aput-object v22, v17, v21

    .line 3814
    .local v17, "sColumns":[Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    const-string v22, "adminUid"

    aput-object v22, v18, v21

    .line 3815
    .local v18, "sReturnColumns":[Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 3816
    .local v20, "userIdString":Ljava/lang/String;
    const/4 v13, 0x0

    .line 3818
    .local v13, "pkgNames":[Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 3819
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 3825
    :goto_0
    if-eqz v13, :cond_1

    .line 3826
    move-object v6, v13

    .local v6, "arr$":[Ljava/lang/String;
    array-length v11, v6

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v11, :cond_1

    aget-object v12, v6, v10

    .line 3827
    .local v12, "pkgName":Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    aput-object v20, v19, v21

    const/16 v21, 0x1

    aput-object v12, v19, v21

    .line 3829
    .local v19, "sValues":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    const-string v22, "ClientCertificateManagerTable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 3832
    .local v8, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_5

    .line 3833
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    const-string v22, "adminUid"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3842
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v19    # "sValues":[Ljava/lang/String;
    :cond_1
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v0, v5, :cond_3

    .line 3843
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v14, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string/jumbo v22, "uid"

    aput-object v22, v14, v21

    const/16 v21, 0x1

    const-string v22, "allowAllPkgs"

    aput-object v22, v14, v21

    .line 3845
    .local v14, "sAllColumns":[Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v16, v21

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v16, v21

    .line 3848
    .local v16, "sAllValues":[Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v15, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "adminUid"

    aput-object v22, v15, v21

    .line 3849
    .local v15, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3851
    .restart local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    const-string v22, "ClientCertificateManagerTable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 3855
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_2

    .line 3856
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    const-string v22, "adminUid"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3860
    :cond_2
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_3

    .line 3861
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getAdminIdForCaller - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    .end local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v13    # "pkgNames":[Ljava/lang/String;
    .end local v14    # "sAllColumns":[Ljava/lang/String;
    .end local v15    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v16    # "sAllValues":[Ljava/lang/String;
    .end local v17    # "sColumns":[Ljava/lang/String;
    .end local v18    # "sReturnColumns":[Ljava/lang/String;
    .end local v20    # "userIdString":Ljava/lang/String;
    :cond_3
    :goto_2
    return v5

    .line 3822
    .restart local v13    # "pkgNames":[Ljava/lang/String;
    .restart local v17    # "sColumns":[Ljava/lang/String;
    .restart local v18    # "sReturnColumns":[Ljava/lang/String;
    .restart local v20    # "userIdString":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "pkgNames":[Ljava/lang/String;
    check-cast v13, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v13    # "pkgNames":[Ljava/lang/String;
    goto/16 :goto_0

    .line 3826
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v19    # "sValues":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 3865
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "pkgNames":[Ljava/lang/String;
    .end local v17    # "sColumns":[Ljava/lang/String;
    .end local v18    # "sReturnColumns":[Ljava/lang/String;
    .end local v19    # "sValues":[Ljava/lang/String;
    .end local v20    # "userIdString":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 3866
    .local v9, "e":Ljava/lang/Exception;
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_3

    .line 3867
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getAdminIdForCaller - Exception"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I
    .locals 3
    .param p1, "cInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 540
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 541
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientCertificateManager.getCallingOrCurrentUserId() cInfo.mContainerId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 544
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 546
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    goto :goto_0
.end method

.method private getDefaultPackageList()Ljava/util/List;
    .locals 13
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
    .line 924
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "getDefaultPackageList"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .local v5, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x3e8

    .line 930
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 932
    .local v1, "containerId":I
    const/4 v10, 0x2

    :try_start_0
    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "uid"

    aput-object v11, v7, v10

    .line 934
    .local v7, "sColumns":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 937
    .local v9, "sValues":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "pkgName"

    aput-object v11, v8, v10

    .line 939
    .local v8, "sReturnColumns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v7, v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 942
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 943
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "cvList size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 945
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v11, "pkgName"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 946
    .local v6, "packageName":Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "packageName in DB : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_1
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 950
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "sColumns":[Ljava/lang/String;
    .end local v8    # "sReturnColumns":[Ljava/lang/String;
    .end local v9    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 951
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v5
.end method

.method private getDeleteSlotList(II)J
    .locals 12
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1129
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDeleteSlotList, adminUid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", containerId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_0
    const-wide v4, 0xffffffffL

    .line 1132
    .local v4, "slotId":J
    new-array v1, v11, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v1, v9

    const-string/jumbo v6, "uid"

    aput-object v6, v1, v10

    .line 1134
    .local v1, "sIdColumns":[Ljava/lang/String;
    new-array v3, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    .line 1137
    .local v3, "sIdValues":[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v6, "slotId"

    aput-object v6, v2, v9

    .line 1138
    .local v2, "sIdReturnColumns":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ClientCertificateManagerTable"

    invoke-virtual {v6, v7, v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1142
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1143
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cvList size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v7, "slotId"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v4, v6

    .line 1145
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDeleteSlotList slotId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_1
    return-wide v4
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getErrorMessage(J)Ljava/lang/String;
    .locals 1
    .param p1, "errorCode"    # J

    .prologue
    .line 3803
    invoke-static {p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_get_error_message(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMUMContainerOwnerUid(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 531
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 532
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v0

    .line 534
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    goto :goto_0
.end method

.method private getPackageUid(ILjava/lang/String;)I
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 3293
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 3294
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "in getPackageUid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    :cond_0
    const/4 v4, -0x1

    .line 3297
    .local v4, "uid":I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3299
    if-nez p2, :cond_2

    .line 3300
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1

    .line 3301
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getPackageUid - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    :cond_1
    :goto_0
    return v5

    .line 3305
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v6, :cond_3

    .line 3306
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getPackageUid -  Invalid Context "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3310
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3313
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 3318
    .local v0, "appId":I
    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 3320
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_4

    .line 3321
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPackageUid - User Id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", appId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3332
    :cond_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "appId":I
    :goto_1
    move v5, v4

    .line 3335
    goto :goto_0

    .line 3325
    :catch_0
    move-exception v1

    .line 3326
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_5

    .line 3327
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPackageUid - Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    :cond_5
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3332
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 3329
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 3330
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3332
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private getProfileOwnerUid(I)I
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 1230
    const/4 v0, -0x1

    .line 1232
    .local v0, "adminId":I
    :try_start_0
    const-string/jumbo v6, "device_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v4

    .line 1235
    .local v4, "dpmService":Landroid/app/admin/IDevicePolicyManager;
    if-eqz v4, :cond_0

    .line 1236
    if-eqz p1, :cond_2

    .line 1238
    const/4 v2, 0x0

    .line 1239
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-interface {v4, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 1240
    if-eqz v2, :cond_1

    .line 1242
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v1

    .line 1243
    .local v1, "compId":I
    move v0, v1

    .line 1244
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getProfileOwnerUid() componentName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    .end local v1    # "compId":I
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :cond_0
    :goto_0
    return v0

    .line 1248
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :cond_1
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getProfileOwnerUid() componentName is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1260
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :catch_0
    move-exception v5

    .line 1261
    .local v5, "er":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getProfileOwnerUid"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1252
    .end local v5    # "er":Landroid/os/RemoteException;
    .restart local v4    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v3

    .line 1253
    .local v3, "deviceOwnerPackage":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1254
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 1255
    .restart local v1    # "compId":I
    move v0, v1

    goto :goto_0
.end method

.method private getSlotCount()I
    .locals 5

    .prologue
    .line 3719
    const/4 v1, 0x0

    .line 3723
    .local v1, "slotCount":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ClientCertificateManagerTable"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3729
    :goto_0
    return v1

    .line 3725
    :catch_0
    move-exception v0

    .line 3726
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getValidString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3352
    if-nez p1, :cond_1

    .line 3357
    :cond_0
    :goto_0
    return-object v1

    .line 3352
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 3354
    :catch_0
    move-exception v0

    .line 3355
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getWrappedPin([B)[B
    .locals 5
    .param p1, "hashedPin"    # [B

    .prologue
    .line 3401
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 3402
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getWrappedPin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    :cond_0
    const/4 v1, 0x0

    .line 3406
    .local v1, "wrappedPin":[B
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->loadTui()I

    move-result v3

    if-gez v3, :cond_1

    move-object v2, v1

    .line 3415
    .end local v1    # "wrappedPin":[B
    .local v2, "wrappedPin":[B
    :goto_0
    return-object v2

    .line 3409
    .end local v2    # "wrappedPin":[B
    .restart local v1    # "wrappedPin":[B
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    const-string/jumbo v4, "tz_ccm"

    invoke-interface {v3, v4, p1}, Landroid/service/tima/ITimaService;->tuiDecryptPinHash(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 3415
    .end local v1    # "wrappedPin":[B
    .restart local v2    # "wrappedPin":[B
    goto :goto_0

    .line 3411
    .end local v2    # "wrappedPin":[B
    .restart local v1    # "wrappedPin":[B
    :catch_0
    move-exception v0

    .line 3412
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getWrappedPin - tuiDecryptPinHash failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static native get_ccm_version()Ljava/lang/String;
.end method

.method static native get_default_cert_alias()Ljava/lang/String;
.end method

.method private handleCCMBuildUpdate()V
    .locals 5

    .prologue
    .line 238
    :try_start_0
    const-string/jumbo v3, "ro.build.date"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "currentBuild":Ljava/lang/String;
    const-string/jumbo v3, "persist.sys.ccm.date"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "oldBuild":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 245
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 246
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleCCMBuildUpdate - updated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    const-string/jumbo v3, "persist.sys.ccm.date"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->addExemptList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v0    # "currentBuild":Ljava/lang/String;
    .end local v2    # "oldBuild":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initParams()V
    .locals 3

    .prologue
    .line 4138
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 4139
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "TIMA3: in initParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4141
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 4142
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 4143
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initParams - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4149
    :cond_1
    :goto_0
    return-void

    .line 4147
    :cond_2
    const/16 v0, 0x3f2

    const/16 v1, 0x3e8

    const v2, 0x186a0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->init_params(III)J

    goto :goto_0
.end method

.method static native init_params(III)J
.end method

.method private insertOrUpdateCCMProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;J)Z
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CCMProfile;
    .param p3, "slotId"    # J

    .prologue
    .line 1861
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_0

    .line 1862
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "in insertOrUpdateCCMProfileInternal"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_0
    if-nez p1, :cond_3

    .line 1864
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_1

    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "cxtInfo is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    :cond_1
    const/4 v8, 0x0

    .line 1963
    :cond_2
    :goto_0
    return v8

    .line 1868
    :cond_3
    const/4 v8, 0x1

    .line 1869
    .local v8, "ret":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 1871
    .local v11, "userId":I
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_4

    .line 1872
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AdminId - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ContainerId -  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " UserId - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " whiteListAllPackages - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_4
    const/4 v12, 0x2

    new-array v9, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "adminUid"

    aput-object v13, v9, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "uid"

    aput-object v13, v9, v12

    .line 1878
    .local v9, "sColumns":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1879
    .local v1, "adminId":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1880
    .local v2, "contId":Ljava/lang/String;
    const/4 v12, 0x2

    new-array v10, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v1, v10, v12

    const/4 v12, 0x1

    aput-object v2, v10, v12

    .line 1882
    .local v10, "sValues":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "ClientCertificateManagerTable"

    invoke-virtual {v12, v13, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1887
    :try_start_0
    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    if-eqz v12, :cond_7

    .line 1889
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1890
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1891
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1892
    const-string v12, "accessType"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v13}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    sget-object v12, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v12, v13, :cond_6

    .line 1895
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    if-eqz v12, :cond_5

    .line 1896
    const-string/jumbo v12, "loginRetry"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v13, v13, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1898
    const-string/jumbo v12, "loginExpiration"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v13, v13, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginExpirationPeriod:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1906
    :cond_5
    :goto_1
    const-string/jumbo v12, "slotId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1907
    const-string v12, "allowAllPkgs"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1909
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1910
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1911
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1913
    iget-object v12, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "ClientCertificateManagerTable"

    invoke-virtual {v12, v13, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v8

    .line 1915
    const/4 v12, 0x1

    if-eq v12, v8, :cond_2

    .line 1916
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_2

    .line 1917
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "insertOrUpdateCCMProfileInternal whiteListAllPackages - DB operation failed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1957
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 1958
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_2

    .line 1959
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "insertOrUpdateCCMProfileInternal - Exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1902
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "cv":Landroid/content/ContentValues;
    :cond_6
    :try_start_1
    const-string/jumbo v12, "loginRetry"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1903
    const-string/jumbo v12, "loginExpiration"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1922
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_7
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1923
    .local v7, "pkg":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1924
    .restart local v3    # "cv":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1925
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1926
    const-string v12, "accessType"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v13}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    sget-object v12, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v12, v13, :cond_b

    .line 1929
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    if-eqz v12, :cond_9

    .line 1930
    const-string/jumbo v12, "loginRetry"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v13, v13, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1932
    const-string/jumbo v12, "loginExpiration"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v13, v13, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginExpirationPeriod:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1939
    :cond_9
    :goto_2
    const-string/jumbo v12, "slotId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1940
    const-string/jumbo v12, "pkgName"

    invoke-virtual {v3, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1943
    .restart local v4    # "cvWhere":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1944
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1945
    const-string/jumbo v12, "pkgName"

    invoke-virtual {v4, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "ClientCertificateManagerTable"

    invoke-virtual {v13, v14, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v13

    if-eq v12, v13, :cond_8

    .line 1949
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_a

    .line 1950
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "insertOrUpdateCCMProfileInternal packages - DB operation failed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    :cond_a
    const/4 v8, 0x0

    .line 1953
    goto/16 :goto_0

    .line 1936
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :cond_b
    const-string/jumbo v12, "loginRetry"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1937
    const-string/jumbo v12, "loginExpiration"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .param p3, "adminId"    # I
    .param p4, "userId"    # I
    .param p5, "isCSRRecord"    # Z

    .prologue
    .line 2111
    sget-boolean v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v16, :cond_0

    .line 2112
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "in insertOrUpdateCertificateProfileInternal"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_0
    const/4 v13, 0x1

    .line 2115
    .local v13, "ret":Z
    const/4 v8, 0x0

    .line 2117
    .local v8, "keyStoreKeyChainInstall":Z
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 2118
    :cond_1
    sget-boolean v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v16, :cond_2

    .line 2119
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "insertOrUpdateCertificateProfileInternal - Invalid Arguments"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    :cond_2
    const/16 v16, 0x0

    .line 2244
    :goto_0
    return v16

    .line 2124
    :cond_3
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "InstallerId - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ContainerId - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " allowAllPackages - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " AdminId - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " isCSRRecord - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    if-eqz p5, :cond_9

    const/4 v3, 0x1

    .line 2131
    .local v3, "csrIntValue":I
    :goto_1
    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "adminUid"

    aput-object v17, v14, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "uid"

    aput-object v17, v14, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "installerId"

    aput-object v17, v14, v16

    const/16 v16, 0x3

    const-string v17, "alias"

    aput-object v17, v14, v16

    const/16 v16, 0x4

    const-string/jumbo v17, "csr"

    aput-object v17, v14, v16

    .line 2134
    .local v14, "sColumns":[Ljava/lang/String;
    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v15, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 2139
    .local v15, "sValues":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v16, v0

    const-string v17, "CCMCertTable"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2149
    :cond_4
    :goto_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    const/16 v16, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v17, v0

    const-string/jumbo v18, "keystorekeychain"

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 2152
    const/4 v8, 0x1

    .line 2156
    :cond_5
    const/16 v16, 0x1

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    const/16 v16, 0x1

    move/from16 v0, v16

    move/from16 v1, p5

    if-ne v0, v1, :cond_a

    .line 2157
    :cond_6
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2158
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v16, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2159
    const-string/jumbo v16, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2160
    const-string v16, "alias"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    const-string v16, "allowAllPkgs"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2162
    const-string v16, "allowWiFi"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2163
    const-string/jumbo v16, "installerId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2164
    const-string/jumbo v16, "csr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2165
    const-string v16, "allowRawSigning"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2166
    if-eqz v8, :cond_7

    .line 2167
    const-string/jumbo v16, "pkgName"

    const-string/jumbo v17, "keystorekeychain"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    :cond_7
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2172
    .local v5, "cvWhere":Landroid/content/ContentValues;
    const-string v16, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2173
    const-string/jumbo v16, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2174
    const-string v16, "alias"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    const-string/jumbo v16, "installerId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2176
    const-string/jumbo v16, "csr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2178
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v16, v0

    const-string v17, "CCMCertTable"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    :cond_8
    :goto_3
    move/from16 v16, v13

    .line 2244
    goto/16 :goto_0

    .line 2130
    .end local v3    # "csrIntValue":I
    .end local v14    # "sColumns":[Ljava/lang/String;
    .end local v15    # "sValues":[Ljava/lang/String;
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2141
    .restart local v3    # "csrIntValue":I
    .restart local v14    # "sColumns":[Ljava/lang/String;
    .restart local v15    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2142
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v16, :cond_4

    .line 2143
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "insertOrUpdateCertificateProfileInternal - Exception delete"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2180
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "cvWhere":Landroid/content/ContentValues;
    :catch_1
    move-exception v6

    .line 2181
    .restart local v6    # "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 2182
    sget-boolean v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v16, :cond_8

    .line 2183
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "insertOrUpdateCertificateProfileInternal - Exception allowAllPackages"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2189
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v16, v0

    if-nez v16, :cond_c

    .line 2190
    sget-boolean v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v16, :cond_b

    .line 2191
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "insertOrUpdateCertificateProfileInternal - Invalid Package list"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :cond_b
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    .line 2197
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 2200
    .local v12, "pkgNames":[Ljava/lang/String;
    move-object v2, v12

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_4
    if-ge v7, v9, :cond_d

    aget-object v11, v2, v7

    .line 2201
    .local v11, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2200
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2203
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v12    # "pkgNames":[Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 2204
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 2207
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2208
    .local v10, "pkg":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2209
    .restart local v4    # "cv":Landroid/content/ContentValues;
    const-string v16, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2210
    const-string/jumbo v16, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2211
    const-string v16, "alias"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    const-string/jumbo v16, "pkgName"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    const-string v16, "allowWiFi"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2214
    const-string/jumbo v16, "installerId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2215
    const-string v16, "allowRawSigning"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2217
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2218
    .restart local v5    # "cvWhere":Landroid/content/ContentValues;
    const-string v16, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2219
    const-string/jumbo v16, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2220
    const-string v16, "alias"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    const-string/jumbo v16, "pkgName"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    const-string/jumbo v16, "installerId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2224
    const-string/jumbo v16, "csr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2226
    const/16 v16, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "CCMCertTable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_e

    .line 2228
    sget-boolean v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v16, :cond_f

    .line 2229
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "insertOrUpdateCertificateProfileInternal - DB operation failed"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2231
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 2234
    :catch_3
    move-exception v6

    .line 2235
    .restart local v6    # "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 2236
    sget-boolean v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v16, :cond_e

    .line 2237
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "insertOrUpdateCertificateProfileInternal - Exception"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private isCCMDefaultCertStore(I)Z
    .locals 11
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4286
    const/4 v5, 0x0

    .line 4287
    .local v5, "ret":Z
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_0

    .line 4288
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "in isCCMDefaultCertStore useId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    :cond_0
    const/4 v8, 0x1

    :try_start_0
    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "enabled"

    aput-object v9, v0, v8

    .line 4296
    .local v0, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4297
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v8, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4299
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "CCMDefaultPolicy"

    invoke-virtual {v8, v9, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 4302
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4303
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 4304
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    .line 4305
    const-string/jumbo v8, "enabled"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-ne v8, v6, :cond_3

    move v5, v6

    .line 4315
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_0
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_2

    .line 4316
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCCMDefaultCertStore returning - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4318
    :cond_2
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "cvWhere":Landroid/content/ContentValues;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    move v5, v7

    .line 4305
    goto :goto_0

    .line 4309
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v3

    .line 4310
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCCMDefaultCertStore() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private markUserAsCCMProvisioned(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3519
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3520
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService;

    .line 3521
    .local v1, "mUms":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->setUserCCMProvisioned(I)V

    .line 3522
    return-void
.end method

.method private provisionUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3505
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMProfileDefaultForContainer(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3506
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 3507
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "Error making CCM default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    :cond_0
    :goto_0
    return-void

    .line 3510
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMAsDefaultCertStore(IZ)Z

    .line 3511
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 3512
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCCMDefaultCertStore says: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->markUserAsCCMProvisioned(I)V

    goto :goto_0
.end method

.method private registerPersonaObserver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3651
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3652
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3653
    new-instance v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Landroid/content/Context;II)V

    .line 3654
    .local v0, "observer":Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3657
    .end local v0    # "observer":Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
    :cond_0
    return-void
.end method

.method private resetDefaultCCMProfile(II)V
    .locals 7
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 1152
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "resetDefaultCCMProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDeleteSlotList(II)J

    move-result-wide v2

    .line 1154
    .local v2, "slotId":J
    const-wide v4, 0xffffffffL

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 1155
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "reset : INVALID_SLOT_ID"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_1
    :goto_0
    return-void

    .line 1159
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->existDefaultProfile(J)Z

    move-result v0

    .line 1160
    .local v0, "exist":Z
    if-nez v0, :cond_3

    .line 1161
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slotId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not related with default profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1164
    :cond_3
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slotId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is related with default profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteDefaultCCMProfile(J)V

    .line 1168
    invoke-virtual {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setDefaultCCMProfile()Z

    move-result v1

    .line 1169
    .local v1, "set":Z
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDefaultCCMProfile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCCMAsDefaultCertStore(IZ)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4327
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 4328
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in setCCMAsDefaultCertStore userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4330
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4331
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p2, :cond_1

    .line 4332
    const-string/jumbo v3, "enabled"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4336
    :goto_0
    const-string/jumbo v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4337
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CCMDefaultPolicy"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 4342
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_1
    return v2

    .line 4334
    .restart local v0    # "cv":Landroid/content/ContentValues;
    :cond_1
    const-string/jumbo v3, "enabled"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4339
    .end local v0    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 4340
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setCCMAsDefaultCertStore() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setCCMProfileDefaultForContainer(I)Z
    .locals 14
    .param p1, "containerId"    # I

    .prologue
    .line 1270
    const/4 v8, 0x1

    .line 1271
    .local v8, "ret":Z
    const-wide/16 v10, 0x0

    .line 1272
    .local v10, "slotId":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1273
    .local v1, "callerUID":I
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_0

    .line 1274
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "in setCCMProfileDefaultForContainer containerId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_0
    iget-boolean v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v9, :cond_2

    .line 1277
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_1

    .line 1278
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "setCCMProfileDefaultForContainer - TIMA version does not include CCM"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_1
    const/4 v8, 0x0

    .line 1362
    .end local v8    # "ret":Z
    :goto_0
    return v8

    .line 1284
    .restart local v8    # "ret":Z
    :cond_2
    new-instance v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ccm/CCMProfile;-><init>()V

    .line 1285
    .local v4, "defaultCCMProfile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    sget-object v9, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    iput-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 1286
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    .line 1289
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getMUMContainerOwnerUid(I)I

    move-result v7

    .line 1291
    .local v7, "mumContainerOwnerUid":I
    invoke-static {p1, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1293
    .local v0, "adminId":I
    iget-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->ordinal()I

    move-result v9

    const/4 v12, 0x0

    invoke-static {v1, p1, v9, v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v10

    .line 1296
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_3

    .line 1297
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setCCMProfileDefaultForContainer - slot Id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Owner Admin Id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_3
    const-wide v12, 0xffffffffL

    cmp-long v9, v12, v10

    if-nez v9, :cond_5

    .line 1301
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_4

    .line 1302
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "setCCMProfileDefaultForContainer - native create_slot failed"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 1309
    :cond_5
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1310
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1311
    const-string/jumbo v9, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1312
    const-string v9, "accessType"

    iget-object v12, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v12}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string/jumbo v9, "slotId"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1315
    const-string v9, "allowAllPkgs"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1317
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1318
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1319
    const-string/jumbo v9, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1321
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "ClientCertificateManagerTable"

    invoke-virtual {v9, v12, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1323
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_6

    .line 1324
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "setCCMProfileDefaultForContainer - DB operation failed"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_6
    invoke-static {v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 1327
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1331
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 1332
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 1333
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 1334
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1336
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    :cond_7
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v9, v1, p1, v12, v13}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 1340
    const/4 v6, -0x1

    .line 1342
    .local v6, "emailUid":I
    const-string v9, "com.samsung.android.email.provider"

    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v6

    .line 1343
    const/4 v9, -0x1

    if-eq v6, v9, :cond_9

    .line 1344
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v1, p1, v6, v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 1356
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v9

    iput v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 1358
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    .line 1360
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {p0, p1, v9, v12, v13}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    goto/16 :goto_0

    .line 1346
    :cond_9
    const-string v9, "com.samsung.android.email.sync"

    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v6

    .line 1347
    const/4 v9, -0x1

    if-eq v6, v9, :cond_a

    .line 1348
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v1, p1, v6, v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_1

    .line 1350
    :cond_a
    const-string v9, "com.android.exchange"

    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v6

    .line 1351
    const/4 v9, -0x1

    if-eq v6, v9, :cond_8

    .line 1352
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v1, p1, v6, v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_1
.end method

.method private setupIntentFilters()V
    .locals 3

    .prologue
    .line 3339
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3340
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in setupIntentFilters"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3342
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3343
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3344
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3345
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3346
    const-string v1, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3347
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3348
    return-void
.end method

.method private unloadTui()Z
    .locals 3

    .prologue
    .line 3373
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3374
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unloadTUI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->unloadTui()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3382
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 3379
    :catch_0
    move-exception v0

    .line 3380
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterPersonaObserver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3660
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;

    .line 3662
    .local v0, "observer":Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
    if-eqz v0, :cond_0

    .line 3663
    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->unregisterPersonaObserver()V

    .line 3664
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3666
    :cond_0
    return-void
.end method

.method private updateEnterpriseDBForDefaultCCMProfile()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 977
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-eqz v10, :cond_2

    .line 978
    const/16 v2, 0x3e8

    .line 980
    .local v2, "callerUID":I
    const/4 v6, 0x0

    .line 981
    .local v6, "existSystemAdmin":Z
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 983
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v1, :cond_1

    .line 984
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 985
    .local v0, "adminId":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 986
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "default admin uid already exist"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v6, 0x1

    .line 993
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    if-nez v6, :cond_4

    .line 994
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 995
    .local v3, "cvUid":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 996
    const-string v10, "adminName"

    const-string v11, "CCM-System"

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v10, "canRemove"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 999
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1000
    .local v4, "cvUidWhere":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1003
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ADMIN_INFO"

    invoke-virtual {v10, v11, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v10

    if-eq v9, v10, :cond_3

    .line 1005
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "insert admin info table - DB operation failed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    .end local v1    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v2    # "callerUID":I
    .end local v3    # "cvUid":Landroid/content/ContentValues;
    .end local v4    # "cvUidWhere":Landroid/content/ContentValues;
    .end local v6    # "existSystemAdmin":Z
    :cond_2
    :goto_0
    return v8

    .line 1009
    .restart local v1    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v2    # "callerUID":I
    .restart local v3    # "cvUid":Landroid/content/ContentValues;
    .restart local v4    # "cvUidWhere":Landroid/content/ContentValues;
    .restart local v6    # "existSystemAdmin":Z
    :cond_3
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "success default admin uid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "cvUid":Landroid/content/ContentValues;
    .end local v4    # "cvUidWhere":Landroid/content/ContentValues;
    :cond_4
    move v8, v9

    .line 1015
    goto :goto_0

    .line 1011
    .end local v1    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_0
    move-exception v5

    .line 1012
    .local v5, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to update default admin uid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateLockStatus(IZZZ)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "isContainerClbk"    # Z
    .param p3, "lock"    # Z
    .param p4, "regForDefCert"    # Z

    .prologue
    const/4 v8, 0x0

    .line 3737
    const/4 v2, 0x0

    .line 3738
    .local v2, "isLocked":Z
    const/4 v4, 0x0

    .line 3740
    .local v4, "rowCount":I
    iget-boolean v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v9, :cond_1

    .line 3741
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_0

    .line 3742
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateLockStatus - TIMA version does not include CCM"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    :cond_0
    :goto_0
    return v8

    .line 3750
    :cond_1
    if-nez p4, :cond_2

    .line 3751
    :try_start_0
    iget v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    if-lez v9, :cond_0

    .line 3757
    :cond_2
    if-eqz p2, :cond_4

    .line 3762
    const/4 v8, 0x0

    invoke-static {v8, p1, p3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_update_lock_status(IIZ)J

    .line 3798
    :cond_3
    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    .line 3765
    :cond_4
    const/4 v7, 0x0

    .line 3766
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 3767
    .local v6, "userManager":Landroid/os/UserManager;
    if-eqz v6, :cond_5

    .line 3768
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 3772
    :cond_5
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 3774
    .local v3, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    .line 3781
    if-eqz v7, :cond_6

    .line 3783
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 3784
    .local v5, "user":Landroid/content/pm/UserInfo;
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateLockStatus, user.id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3785
    const/4 v8, 0x0

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_update_lock_status(IIZ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3795
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "km":Landroid/app/KeyguardManager;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "userManager":Landroid/os/UserManager;
    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    .line 3796
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3790
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "km":Landroid/app/KeyguardManager;
    .restart local v6    # "userManager":Landroid/os/UserManager;
    .restart local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    :try_start_1
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "updateLockStatus, users null, so falling back to just userId"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
    const/4 v8, 0x0

    invoke-static {v8, p1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_update_lock_status(IIZ)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private validateCallerContainer(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v8, 0x1

    .line 4092
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4093
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4095
    .local v0, "appId":I
    const/16 v5, 0x3e8

    if-eq v0, v5, :cond_1

    .line 4096
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4098
    .local v2, "currentUserId":I
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 4099
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateCallerContainer - UserId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currentUserId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", appId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", callingUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    :cond_0
    if-eq v2, p2, :cond_1

    .line 4105
    const/16 v5, 0x64

    if-ge v2, v5, :cond_2

    if-le v2, v8, :cond_2

    .line 4106
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 4107
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 4108
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "ClientCertificateManager.validateCallerContainer() callingUid is owner of the profile"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4134
    .end local v2    # "currentUserId":I
    :cond_1
    return v8

    .line 4113
    .restart local v2    # "currentUserId":I
    :cond_2
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 4114
    .local v3, "mumContainerOwnerUid":I
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerOwnerUid(I)I

    move-result v4

    .line 4116
    .local v4, "ownerUid":I
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_3

    .line 4117
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateCallerContainer - mumContainerOwnerUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ownerUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", callerUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", containerId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    :cond_3
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v3, v5, :cond_1

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v4, v5, :cond_1

    if-eq v3, v1, :cond_1

    .line 4129
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Caller does not belong to the container"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private validatePackageExemption(IILjava/lang/String;)Z
    .locals 12
    .param p1, "userId"    # I
    .param p2, "callerUid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 4156
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_0

    .line 4157
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "in validatePackageExemption"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    :cond_0
    const/4 v6, 0x0

    .line 4161
    .local v6, "rowCount":I
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 4164
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 4165
    .local v0, "adminId":Ljava/lang/Long;
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_1

    .line 4166
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AdminId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " UserId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4169
    .local v2, "cvW":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4170
    const-string/jumbo v9, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4171
    const-string v9, "allowAllPkgs"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4173
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ClientCertificateManagerTable"

    invoke-virtual {v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v9

    add-int/2addr v6, v9

    .line 4175
    goto :goto_0

    .line 4177
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v2    # "cvW":Landroid/content/ContentValues;
    :cond_2
    if-lez v6, :cond_4

    .line 4178
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_3

    .line 4179
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v10, "All packages are allowed access to CCM token"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4205
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    return v8

    .line 4184
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4185
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4186
    const-string/jumbo v9, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4187
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ClientCertificateManagerTable"

    const-string/jumbo v11, "pkgName"

    invoke-virtual {v9, v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 4194
    .local v7, "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_5

    invoke-interface {v7, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eq v8, v9, :cond_3

    .line 4205
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    .line 4199
    :catch_0
    move-exception v4

    .line 4200
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_5

    .line 4201
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validatePackageExemption - Exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private validatePackageList(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    .prologue
    .line 1757
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_0

    .line 1758
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "in validatePackageList"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 1763
    .local v8, "userId":I
    const/4 v6, 0x0

    .line 1766
    .local v6, "rowCount":I
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1769
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1770
    .local v0, "adminId":Ljava/lang/Long;
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_1

    .line 1771
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AdminId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " UserId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1774
    .local v2, "cvW":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1775
    const-string/jumbo v9, "uid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1776
    const-string v9, "allowAllPkgs"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1778
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ClientCertificateManagerTable"

    invoke-virtual {v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    add-int/2addr v6, v9

    .line 1780
    goto :goto_0

    .line 1781
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v1    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v2    # "cvW":Landroid/content/ContentValues;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 1782
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_2

    .line 1783
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "validatePackageList adminId - Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    if-lez v6, :cond_4

    .line 1789
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_3

    .line 1790
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v10, "All packages are allowed access to CCM token"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_3
    const/4 v9, 0x1

    .line 1832
    :goto_1
    return v9

    .line 1795
    :cond_4
    iget-boolean v9, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    if-eqz v9, :cond_6

    .line 1796
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_5

    .line 1797
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v10, "CCM profile does not allow all packages"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 1802
    :cond_6
    iget-object v9, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v9, :cond_7

    iget-object v9, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1803
    :cond_7
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_8

    .line 1804
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v10, "Invalid package list"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    .line 1810
    :cond_9
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1811
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1812
    const-string/jumbo v9, "uid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1813
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ClientCertificateManagerTable"

    const-string/jumbo v11, "pkgName"

    invoke-virtual {v9, v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 1821
    .local v7, "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_a

    iget-object v9, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    if-eqz v9, :cond_a

    .line 1823
    const/4 v9, 0x1

    goto :goto_1

    .line 1825
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v7    # "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v4

    .line 1826
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_a

    .line 1827
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "validatePackageList tokenPkgList - Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private verifyCertChain([B)[B
    .locals 4
    .param p1, "hashedPin"    # [B

    .prologue
    .line 3386
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 3387
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "verifyCertChain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    :cond_0
    const/4 v1, 0x0

    .line 3392
    .local v1, "pin":[B
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v2, p1}, Landroid/service/tima/ITimaService;->verifyCertChain([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3397
    :goto_0
    return-object v1

    .line 3393
    :catch_0
    move-exception v0

    .line 3394
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "verifyCertChain - failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private verifyCertificateInstaller(IIILjava/lang/String;Z)Z
    .locals 10
    .param p1, "callerUid"    # I
    .param p2, "adminId"    # I
    .param p3, "userId"    # I
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "isCsrRecord"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4011
    :try_start_0
    invoke-static {p3, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 4013
    .local v4, "uid":I
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 4014
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdminId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", UserId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CallerUid - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Alias - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isCsrRecord - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    :cond_0
    if-ne v4, p2, :cond_2

    .line 4048
    .end local v4    # "uid":I
    :cond_1
    :goto_0
    return v5

    .line 4023
    .restart local v4    # "uid":I
    :cond_2
    if-eqz p5, :cond_4

    move v0, v5

    .line 4025
    .local v0, "csrRecordIntValue":I
    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4026
    .local v1, "cvW":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4027
    const-string/jumbo v7, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4028
    const-string/jumbo v7, "installerId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4029
    const-string v7, "alias"

    invoke-virtual {v1, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4030
    const-string/jumbo v7, "csr"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4032
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CCMCertTable"

    invoke-virtual {v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    .line 4035
    .local v3, "rowCount":I
    if-lez v3, :cond_3

    .line 4036
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 4037
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "verifyCertificateInstaller - Caller is certificate installer"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4041
    .end local v0    # "csrRecordIntValue":I
    .end local v1    # "cvW":Landroid/content/ContentValues;
    .end local v3    # "rowCount":I
    .end local v4    # "uid":I
    :catch_0
    move-exception v2

    .line 4042
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_3

    .line 4043
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "verifyCertificateInstaller - Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    move v5, v6

    .line 4048
    goto :goto_0

    .restart local v4    # "uid":I
    :cond_4
    move v0, v6

    .line 4023
    goto :goto_1
.end method


# virtual methods
.method public SetTokenTUIPasswd(II)I
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "minTUIPinLen"    # I

    .prologue
    .line 3432
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3433
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetTokenTUIPasswd - slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "minTUIPinLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->CCM_SetTokenTUIPasswd(II)I

    move-result v0

    .line 3439
    .local v0, "ret":I
    return v0
.end method

.method public addPackageToExemptList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3151
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3153
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 3154
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "in addPackageToExemptList for cxtInfo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3158
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 3159
    :cond_1
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3160
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "addPackageToExemptList - Invalid input"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    :cond_2
    :goto_0
    return v2

    .line 3164
    :cond_3
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 3165
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPackageToExemptList packageName - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3169
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_5

    .line 3170
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3171
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "addPackageToExemptList - TIMA version does not include CCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3176
    :cond_5
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3177
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3178
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "addPackageToExemptList - CCM is not enabled by admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3183
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3185
    .local v1, "userId":I
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v4, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->validatePackageExemption(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3187
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3188
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPackageToExemptList - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not whitelisted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3193
    :cond_7
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v0

    .line 3195
    .local v0, "uid":I
    const/4 v4, -0x1

    if-eq v4, v0, :cond_2

    .line 3196
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3, v4, v1, v0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    move v2, v3

    .line 3201
    goto/16 :goto_0
.end method

.method public deleteCCMProfile(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 858
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 859
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in deleteCCMProfile"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 863
    if-nez p1, :cond_2

    .line 864
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 865
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteCCMProfile - null cxtInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_1
    :goto_0
    return v1

    .line 869
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 871
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v3, :cond_3

    .line 872
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 873
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteCCMProfile - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 878
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 880
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 881
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_4

    .line 882
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCCMProfile - CCM is set default for userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_4
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    .line 885
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfile(I)Z

    .line 886
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfile(I)Z

    .line 887
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMDefaultPolicyRecord(I)Z

    move v1, v2

    .line 888
    goto :goto_0

    .line 891
    :cond_5
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 892
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 893
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteCCMProfile - CCM is not enabled by admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 897
    :cond_6
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    move-result v3

    if-eq v2, v3, :cond_7

    .line 898
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_7

    .line 899
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in deleteCCMProfile - deleteCSRProfileUsingAdminId failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_7
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfileUsingAdminId(IIZ)Z

    move-result v3

    if-eq v2, v3, :cond_8

    .line 905
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 906
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in deleteCCMProfile - failed to delete certificates"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 911
    :cond_8
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfileUsingAdminId(IIZ)Z

    move-result v3

    if-eq v2, v3, :cond_9

    .line 913
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 914
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in deleteCCMProfile - failed to delete profile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 918
    :cond_9
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    move v1, v2

    .line 920
    goto/16 :goto_0
.end method

.method public deleteCSRProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "templateName"    # Ljava/lang/String;

    .prologue
    .line 2944
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 2945
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in deleteCSRProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2949
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 2950
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 2951
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    :cond_1
    const/4 v0, 0x0

    .line 3008
    :goto_0
    return v0

    .line 2956
    :cond_2
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 2958
    :cond_3
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    .line 2959
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 2963
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2964
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    .line 2965
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - CCM is not enabled for caller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 2969
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2971
    .local v3, "userId":I
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 2972
    .local v2, "adminId":I
    const/4 v0, -0x1

    if-ne v0, v2, :cond_9

    .line 2973
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_8

    .line 2974
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 2978
    :cond_9
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2980
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_a

    .line 2981
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - verifyCertificateInstaller returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    :cond_a
    const/4 v0, 0x0

    goto :goto_0

    .line 2986
    :cond_b
    const-wide/16 v0, 0x0

    invoke-static {v2, v3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_csr_profile(IILjava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_d

    .line 2988
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_c

    .line 2989
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - native ccm_delete_csr_profile failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    :cond_c
    const/4 v0, 0x0

    goto :goto_0

    .line 2995
    :cond_d
    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "uid"

    aput-object v1, v7, v0

    const/4 v0, 0x2

    const-string v1, "alias"

    aput-object v1, v7, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "installerId"

    aput-object v1, v7, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "csr"

    aput-object v1, v7, v0

    .line 2998
    .local v7, "sColumns":[Ljava/lang/String;
    const/4 v0, 0x5

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object p2, v8, v0

    const/4 v0, 0x3

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 3002
    .local v8, "sValues":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "CCMCertTable"

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3008
    :cond_e
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3004
    :catch_0
    move-exception v6

    .line 3005
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_e

    .line 3006
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCSRProfile - Exception"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public deleteCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1596
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 1597
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in deleteCertificate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1601
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1603
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1604
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 1605
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_2
    :goto_0
    return v5

    .line 1609
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_4

    .line 1610
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 1611
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1616
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1618
    .local v3, "userId":I
    const/16 v2, 0x3e8

    .line 1621
    .local v2, "adminId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1622
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 1623
    const/4 v0, -0x1

    if-ne v0, v2, :cond_5

    .line 1624
    const/16 v2, 0x3e8

    .line 1625
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_5

    .line 1626
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_5
    invoke-direct {p0, v2, v3, p2, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1631
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 1632
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCertificate - alias doesn\'t exist: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1636
    :cond_6
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1638
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 1639
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - verifyCertificateInstaller failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1644
    :cond_7
    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateUsingAdminId(IILjava/lang/String;)Z

    move-result v0

    if-eq v6, v0, :cond_8

    .line 1645
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 1646
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - failed to delete certificate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v5, v6

    .line 1650
    goto/16 :goto_0
.end method

.method public generateCSR(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "UID"    # I
    .param p3, "tokenName"    # Ljava/lang/String;
    .param p4, "tokenPassword"    # Ljava/lang/String;
    .param p5, "objectAlias"    # Ljava/lang/String;
    .param p6, "isTrustedBootRequired"    # Z

    .prologue
    const/4 v2, 0x0

    .line 362
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 363
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in generateCSR"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 367
    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 370
    :cond_1
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 371
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "generateCSR - Invalid Arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2
    :goto_0
    return-object v2

    .line 375
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 377
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v3, :cond_4

    .line 378
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 379
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "generateCSR - TIMA version does not include CCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 385
    .local v1, "userId":I
    const/16 v0, 0x3e8

    .line 388
    .local v0, "adminId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 389
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v0

    .line 390
    const/4 v2, -0x1

    if-ne v2, v0, :cond_5

    .line 391
    const/16 v0, 0x3e8

    .line 392
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_5

    .line 393
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in generateCSR - failed to get admin Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_5
    invoke-static {v0, v1, p5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_generate_csr(IILjava/lang/String;)[B

    move-result-object v2

    goto :goto_0
.end method

.method public generateCSRUsingTemplate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "templateName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "challengePassword"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 3014
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_0

    .line 3015
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "in generateCSRUsingTemplate"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3020
    iget-boolean v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v8, :cond_2

    .line 3021
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 3022
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - TIMA version does not include CCM"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    :cond_1
    :goto_0
    return-object v7

    .line 3027
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x40

    if-le v8, v9, :cond_4

    .line 3033
    :cond_3
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 3034
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - Invalid Arguments"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3038
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3039
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 3040
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - CCM is not enabled for caller"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3045
    :cond_5
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_6

    .line 3046
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "generateCSRUsingTemplate - challengePassword is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    :cond_6
    const/4 v3, 0x0

    .line 3050
    .local v3, "challPwdBytes":[B
    const/4 v2, 0x0

    .line 3052
    .local v2, "buf":[B
    if-eqz p4, :cond_7

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 3054
    :try_start_0
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 3055
    .local v6, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v8, p4}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 3057
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    sget-object v8, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_challengePassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v9, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v8, v9}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 3060
    .local v1, "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getEncoded()[B

    move-result-object v3

    .line 3062
    array-length v8, v3

    const/16 v9, 0x7f

    if-le v8, v9, :cond_8

    .line 3064
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 3065
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - challenge password too long"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3082
    .end local v1    # "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    .end local v6    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :catch_0
    move-exception v4

    .line 3083
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_7

    .line 3084
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "generateCSRUsingTemplate - Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3091
    .local v5, "userId":I
    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v0

    .line 3092
    .local v0, "adminId":I
    const/4 v8, -0x1

    if-ne v8, v0, :cond_a

    .line 3093
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 3094
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - failed to get admin Id"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3068
    .end local v0    # "adminId":I
    .end local v5    # "userId":I
    .restart local v1    # "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    .restart local v6    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_8
    :try_start_1
    array-length v8, v3

    if-gtz v8, :cond_9

    .line 3069
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 3070
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - challenge password length equal or less than 0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3074
    :cond_9
    array-length v8, v3

    add-int/lit8 v8, v8, 0x2

    new-array v2, v8, [B

    .line 3075
    const/4 v8, 0x0

    const/4 v9, 0x2

    array-length v10, v3

    invoke-static {v3, v8, v2, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3079
    const/4 v8, 0x0

    const/16 v9, -0x60

    aput-byte v9, v2, v8

    .line 3080
    const/4 v8, 0x1

    array-length v9, v3

    int-to-byte v9, v9

    aput-byte v9, v2, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3098
    .end local v1    # "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    .end local v6    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v0    # "adminId":I
    .restart local v5    # "userId":I
    :cond_a
    invoke-static {v0, v5, p2, p3, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_gen_csr_using_template(IILjava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v7

    goto/16 :goto_0
.end method

.method public getAliasesForCaller(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3877
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 3878
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in getAliasesForCaller"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3882
    if-nez p1, :cond_2

    .line 3883
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 3884
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getAliasesForCaller - null cxtInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    :cond_1
    :goto_0
    return-object v0

    .line 3888
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v4, :cond_3

    .line 3889
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 3890
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getAliasesForCaller - Invalid Context"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3894
    :cond_3
    const/4 v0, 0x0

    .line 3898
    .local v0, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 3899
    .local v3, "userId":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3900
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "uid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3901
    const-string/jumbo v4, "installerId"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3902
    const-string/jumbo v4, "csr"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3903
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    const-string v6, "alias"

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3906
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "userId":I
    :catch_0
    move-exception v2

    .line 3907
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 3908
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAliasesForPackage - aliasesList1 Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAliasesForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3930
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 3931
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "in getAliasesForPackage"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3933
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3935
    if-eqz p2, :cond_1

    if-nez p1, :cond_3

    .line 3936
    :cond_1
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_2

    .line 3937
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getAliasesForPackage - Invalid input parameters"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    :cond_2
    :goto_0
    return-object v4

    .line 3941
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v6, :cond_4

    .line 3942
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_2

    .line 3943
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getAliasesForPackage - TIMA version does not include CCM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3948
    :cond_4
    const/4 v0, 0x0

    .line 3949
    .local v0, "aliasesList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3950
    .local v1, "aliasesList2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3952
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3953
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_2

    .line 3954
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v7, " getAliasesForPackage - token access is not permitted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3959
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3961
    .local v5, "userId":I
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_6

    .line 3962
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " UserId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Package - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    :cond_6
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3967
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "uid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3968
    const-string/jumbo v6, "pkgName"

    invoke-virtual {v2, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3969
    const-string/jumbo v6, "csr"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3970
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertTable"

    const-string v8, "alias"

    invoke-virtual {v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3982
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    :cond_7
    :goto_1
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3983
    .restart local v2    # "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "uid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3984
    const-string v6, "allowAllPkgs"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3985
    const-string/jumbo v6, "csr"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3986
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertTable"

    const-string v8, "alias"

    invoke-virtual {v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 3996
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    :cond_8
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3997
    .local v4, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_9

    .line 3998
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4000
    :cond_9
    if-eqz v1, :cond_2

    .line 4001
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 3973
    .end local v4    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 3974
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_7

    .line 3975
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAliasesForPackage - aliasesList1 Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3989
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 3990
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_8

    .line 3991
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAliasesForPackage - aliasesList2 Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getAliasesForWiFi()Ljava/util/List;
    .locals 8
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
    const/4 v4, 0x0

    .line 4244
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 4245
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "in getAliasesForWiFi"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4247
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v5, :cond_3

    .line 4248
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 4249
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getAliasesForWiFi - TIMA version does not include CCM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v4

    .line 4277
    :cond_2
    :goto_0
    return-object v0

    .line 4254
    :cond_3
    const/4 v0, 0x0

    .line 4258
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4259
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v5, "allowWiFi"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4260
    const-string v5, "allowRawSigning"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4261
    const-string/jumbo v5, "csr"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4262
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMCertTable"

    const-string v7, "alias"

    invoke-virtual {v5, v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 4265
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 4266
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4267
    .local v3, "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4268
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4269
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4271
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 4272
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_4

    .line 4273
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAliasesForWiFi - Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, v4

    .line 4274
    goto :goto_0
.end method

.method public getCCMProfile(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/ccm/CCMProfile;
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v10, 0x0

    .line 773
    new-instance v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;

    invoke-direct {v5}, Lcom/sec/enterprise/knox/ccm/CCMProfile;-><init>()V

    .line 774
    .local v5, "profile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_0

    .line 775
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "in getCCMProfile"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 779
    if-nez p1, :cond_2

    .line 780
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_1

    .line 781
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "getCCMProfile - null cxtInfo"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_1
    :goto_0
    return-object v10

    .line 785
    :cond_2
    iget-boolean v11, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v11, :cond_3

    .line 786
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_1

    .line 787
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "getCCMProfile - TIMA version does not include CCM"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 792
    :cond_3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 793
    .local v9, "userId":I
    const/4 v11, 0x0

    invoke-direct {p0, p1, v9, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v1

    .line 795
    .local v1, "adminId":I
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_4

    .line 796
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AdminId - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " UserId - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_4
    const/4 v11, -0x1

    if-ne v11, v1, :cond_6

    .line 799
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_1

    .line 800
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "getCCMProfile - admin not found"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 848
    .end local v1    # "adminId":I
    .end local v9    # "userId":I
    :catch_0
    move-exception v4

    .line 849
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 850
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_5

    .line 851
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getCCMProfile - Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    move-object v10, v5

    .line 853
    goto :goto_0

    .line 804
    .restart local v1    # "adminId":I
    .restart local v9    # "userId":I
    :cond_6
    const/4 v10, 0x2

    :try_start_1
    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "uid"

    aput-object v11, v6, v10

    .line 806
    .local v6, "sColumns":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    .line 809
    .local v8, "sValues":[Ljava/lang/String;
    const/4 v10, 0x4

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "accessType"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string v11, "allowAllPkgs"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "loginRetry"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "loginExpiration"

    aput-object v11, v7, v10

    .line 814
    .local v7, "sReturnColumns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v6, v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 817
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 818
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string v11, "accessType"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, "accessCntrlMethd":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->valueOf(Ljava/lang/String;)Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    move-result-object v10

    iput-object v10, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 822
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string v11, "allowAllPkgs"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    .line 825
    sget-object v10, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    iget-object v11, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v10, v11, :cond_7

    .line 826
    new-instance v10, Lcom/sec/enterprise/knox/ccm/TUIProperty;

    invoke-direct {v10}, Lcom/sec/enterprise/knox/ccm/TUIProperty;-><init>()V

    iput-object v10, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    .line 827
    iget-object v11, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v12, "loginRetry"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v11, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    .line 830
    iget-object v11, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v12, "loginExpiration"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v11, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    .line 835
    :cond_7
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 836
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 837
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 838
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    const-string/jumbo v12, "pkgName"

    invoke-virtual {v10, v11, v12, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    .line 842
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_5

    .line 843
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PackageList - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public getCCMVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3263
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 3264
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getCCMVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 3267
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 3268
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCCMVersion - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    :cond_1
    const/4 v0, 0x0

    .line 3272
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->get_ccm_version()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCertificateAliases(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4492
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 4493
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "in getCertificateAliases"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4495
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4497
    if-nez p1, :cond_3

    .line 4498
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1

    .line 4499
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getCertificateAliases - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v5

    .line 4533
    :cond_2
    :goto_0
    return-object v0

    .line 4503
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v6, :cond_5

    .line 4504
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_4

    .line 4505
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getCertificateAliases - TIMA version does not include CCM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, v5

    .line 4507
    goto :goto_0

    .line 4510
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 4511
    .local v4, "userId":I
    const/4 v0, 0x0

    .line 4515
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4516
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "uid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4517
    const-string/jumbo v6, "csr"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4518
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertTable"

    const-string v8, "alias"

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 4521
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 4522
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4523
    .local v3, "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4524
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4525
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4527
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 4528
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_6

    .line 4529
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCertificateAliases - Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v0, v5

    .line 4530
    goto :goto_0
.end method

.method public getCertificateAliasesHavingPrivateKey(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 4543
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 4544
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "in getCertificateAliasesHavingPrivateKey"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4546
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4548
    if-nez p1, :cond_3

    .line 4549
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 4550
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getCertificateAliasesHavingPrivateKey - Invalid Arguments"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, v6

    .line 4593
    :cond_2
    :goto_0
    return-object v1

    .line 4555
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v7, :cond_5

    .line 4556
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_4

    .line 4557
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getCertificateAliasesHavingPrivateKey - TIMA version does not include CCM"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v1, v6

    .line 4559
    goto :goto_0

    .line 4562
    :cond_5
    const/4 v0, 0x0

    .line 4563
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4564
    .local v5, "userId":I
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_6

    .line 4565
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCertificateAliasesHavingPrivateKey - userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4569
    :cond_6
    :try_start_0
    invoke-static {v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_get_aliases_having_private_key(I)[Ljava/lang/String;

    move-result-object v3

    .line 4571
    .local v3, "tzAliases":[Ljava/lang/String;
    if-eqz v3, :cond_7

    array-length v7, v3

    if-nez v7, :cond_9

    .line 4572
    :cond_7
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_8

    .line 4573
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getCertificateAliasesHavingPrivateKey - native ccm_get_aliases_having_private_key returnd null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v1, v6

    .line 4575
    goto :goto_0

    .line 4578
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4579
    .end local v0    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 4580
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 4581
    .local v4, "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4582
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4583
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4585
    .end local v4    # "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 4586
    .end local v1    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "tzAliases":[Ljava/lang/String;
    .restart local v0    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_a

    .line 4587
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCertificateAliasesHavingPrivateKey - Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4589
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v6

    .line 4590
    goto/16 :goto_0

    .line 4585
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getDefaultCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3277
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 3278
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getDefaultCertificateAlias"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 3281
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 3282
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getDefaultCertificateAlias - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    :cond_1
    const/4 v0, 0x0

    .line 3289
    :goto_0
    return-object v0

    .line 3287
    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->get_default_cert_alias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    .line 3289
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    goto :goto_0
.end method

.method public getKeyChainMarkedAliases(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4445
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 4446
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in getKeyChainMarkedAliases"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4448
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4450
    if-nez p1, :cond_2

    .line 4451
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 4452
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getKeyChainMarkedAliases - Invalid Arguments"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4483
    :cond_1
    :goto_0
    return-object v0

    .line 4456
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_3

    .line 4457
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 4458
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getKeyChainMarkedAliases - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4463
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 4464
    .local v3, "userId":I
    const/4 v0, 0x0

    .line 4467
    .local v0, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4468
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "uid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4469
    const-string/jumbo v4, "pkgName"

    const-string/jumbo v5, "keystorekeychain"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4471
    const-string/jumbo v4, "csr"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4472
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    const-string v6, "alias"

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 4475
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 4476
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getKeyChainMarkedAliases - Alias list empty or null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4482
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :cond_4
    :goto_1
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getKeyChainMarkedAliases - Alias list :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4478
    :catch_0
    move-exception v2

    .line 4479
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 4480
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getKeyChainMarkedAliases - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSlotIdForCaller(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 2573
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_0

    .line 2574
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "in getSlotIdForCaller"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2578
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    move/from16 v21, v0

    if-gtz v21, :cond_3

    .line 2580
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_1

    .line 2581
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "getSlotIdForCaller - CCM profile is not set"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    :cond_1
    const-wide/16 v18, -0x1

    .line 2686
    :cond_2
    :goto_0
    return-wide v18

    .line 2585
    :cond_3
    if-nez p1, :cond_5

    .line 2586
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_4

    .line 2587
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "getSlotIdForCaller - null cxtInfo"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    :cond_4
    const-wide/16 v18, -0x1

    goto :goto_0

    .line 2591
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    .line 2592
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "getSlotIdForCaller - Invalid Context "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    const-wide/16 v18, -0x1

    goto :goto_0

    .line 2596
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2598
    const-wide/16 v18, -0x1

    .line 2604
    .local v18, "slotId":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 2606
    .local v5, "callingUid":I
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_7

    .line 2607
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getSlotIdForCaller callingUid - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    :cond_7
    const/16 v21, 0x3e8

    move/from16 v0, v21

    if-ne v5, v0, :cond_10

    .line 2610
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v20

    .line 2611
    .local v20, "userId":I
    const/4 v14, 0x0

    .line 2613
    .local v14, "rowCount":I
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_8

    .line 2614
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getSlotIdForCaller UserId - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", alias - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    :cond_8
    const/4 v10, 0x0

    .line 2621
    .local v10, "isDefaultCertificateAlias":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 2622
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDefaultCertificateAlias()Ljava/lang/String;

    .line 2625
    :cond_9
    if-eqz p2, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    const-string v21, "Digital Signature"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 2628
    :cond_a
    const/4 v10, 0x1

    .line 2631
    :cond_b
    if-nez v10, :cond_d

    .line 2633
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2634
    .local v7, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v21, "uid"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2635
    const-string/jumbo v21, "csr"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2638
    if-eqz p2, :cond_c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_c

    .line 2639
    const-string v21, "alias"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2642
    :cond_c
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    const-string v22, "CCMCertTable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    add-int v14, v14, v21

    .line 2652
    .end local v7    # "cvWhere":Landroid/content/ContentValues;
    :cond_d
    :goto_1
    if-nez v10, :cond_e

    if-gtz v14, :cond_e

    if-eqz p2, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_2

    .line 2654
    :cond_e
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v15, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string/jumbo v22, "uid"

    aput-object v22, v15, v21

    .line 2655
    .local v15, "sColumns":[Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v17, v21

    .line 2657
    .local v17, "sValues":[Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "slotId"

    aput-object v22, v16, v21

    .line 2658
    .local v16, "sReturnColumns":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2660
    .local v6, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    const-string v22, "ClientCertificateManagerTable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 2669
    :cond_f
    :goto_2
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_2

    .line 2670
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    const-string/jumbo v22, "slotId"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto/16 :goto_0

    .line 2644
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v15    # "sColumns":[Ljava/lang/String;
    .end local v16    # "sReturnColumns":[Ljava/lang/String;
    .end local v17    # "sValues":[Ljava/lang/String;
    .restart local v7    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 2645
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_d

    .line 2646
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getSlotIdForCaller - slotId Exception"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2663
    .end local v7    # "cvWhere":Landroid/content/ContentValues;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v15    # "sColumns":[Ljava/lang/String;
    .restart local v16    # "sReturnColumns":[Ljava/lang/String;
    .restart local v17    # "sValues":[Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 2664
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_f

    .line 2665
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getSlotIdForCaller - retrieving slot Id Exception"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2678
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "isDefaultCertificateAlias":Z
    .end local v14    # "rowCount":I
    .end local v15    # "sColumns":[Ljava/lang/String;
    .end local v16    # "sReturnColumns":[Ljava/lang/String;
    .end local v17    # "sValues":[Ljava/lang/String;
    .end local v20    # "userId":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 2680
    .local v13, "pkgNames":[Ljava/lang/String;
    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v11, :cond_2

    aget-object v12, v4, v9

    .line 2681
    .local v12, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v12, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotIdForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v18

    .line 2682
    const-wide/16 v22, 0x0

    cmp-long v21, v18, v22

    if-gez v21, :cond_2

    .line 2680
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public getSlotIdForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 2692
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_0

    .line 2693
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "in getSlotIdForPackage"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2697
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    if-gtz v14, :cond_3

    .line 2699
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_1

    .line 2700
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "getSlotIdForPackage - CCM profile is not set"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    :cond_1
    const-wide/16 v12, -0x1

    .line 2838
    :cond_2
    :goto_0
    return-wide v12

    .line 2704
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v14, :cond_5

    .line 2705
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_4

    .line 2706
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "getSlotIdForPackage - TIMA version does not include CCM"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    :cond_4
    const-wide/16 v12, -0x1

    goto :goto_0

    .line 2711
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2713
    if-eqz p2, :cond_6

    if-nez p1, :cond_7

    .line 2714
    :cond_6
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "getSlotIdForPackage failed - Invalid arguments"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    const-wide/16 v12, -0x1

    goto :goto_0

    .line 2718
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 2720
    .local v11, "userId":I
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 2721
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_8

    .line 2722
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v15, " getSlotIdForPackage - token access is not permitted"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    :cond_8
    const-wide/16 v12, -0x1

    goto :goto_0

    .line 2728
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    if-nez v14, :cond_a

    .line 2729
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDefaultCertificateAlias()Ljava/lang/String;

    .line 2733
    :cond_a
    const/4 v6, 0x0

    .line 2734
    .local v6, "isDefaultCertificateAlias":Z
    if-eqz p3, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string v14, "Digital Signature"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 2738
    :cond_b
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v14

    if-nez v14, :cond_c

    .line 2739
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 2741
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const-string/jumbo v17, "knox_ccm_policy"

    const-string/jumbo v18, "getSlotIdForPackage"

    invoke-static/range {v14 .. v18}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_d

    .line 2744
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Security Exception Occurred while pid["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] with uid["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] trying to access methodName ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "getSlotIdForPackage"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] in ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "knox_ccm_policy"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] service"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 2751
    .local v5, "e":Ljava/lang/SecurityException;
    throw v5

    .line 2756
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_d
    const/4 v6, 0x1

    .line 2759
    :cond_e
    const/4 v7, 0x0

    .line 2760
    .local v7, "rowCount":I
    const-wide/16 v12, -0x1

    .line 2762
    .local v12, "slotId":J
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_f

    .line 2763
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UserId - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " packageName - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " alias - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    :cond_f
    if-nez v6, :cond_14

    .line 2768
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2769
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v14, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2770
    const-string/jumbo v14, "pkgName"

    move-object/from16 v0, p2

    invoke-virtual {v4, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    const-string/jumbo v14, "csr"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2774
    if-eqz p3, :cond_10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_10

    .line 2775
    const-string v14, "alias"

    move-object/from16 v0, p3

    invoke-virtual {v4, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    :cond_10
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "CCMCertTable"

    invoke-virtual {v14, v15, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    add-int/2addr v7, v14

    .line 2788
    :cond_11
    :goto_1
    if-nez v7, :cond_14

    .line 2789
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2790
    .local v3, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v14, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2791
    const-string v14, "allowAllPkgs"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2792
    const-string/jumbo v14, "csr"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2795
    if-eqz p3, :cond_12

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_12

    .line 2796
    const-string v14, "alias"

    move-object/from16 v0, p3

    invoke-virtual {v3, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    :cond_12
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "CCMCertTable"

    invoke-virtual {v14, v15, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    add-int/2addr v7, v14

    .line 2807
    :cond_13
    :goto_2
    if-lez v7, :cond_14

    .line 2808
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_14

    .line 2809
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "in getSlotIdForPackage - all packages are allowed access"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    .end local v3    # "cvW":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :cond_14
    if-nez v6, :cond_15

    if-gtz v7, :cond_15

    if-eqz p3, :cond_15

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2

    .line 2818
    :cond_15
    const/4 v14, 0x1

    new-array v8, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "uid"

    aput-object v15, v8, v14

    .line 2819
    .local v8, "sColumns":[Ljava/lang/String;
    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    .line 2821
    .local v10, "sValues":[Ljava/lang/String;
    const/4 v14, 0x1

    new-array v9, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "slotId"

    aput-object v15, v9, v14

    .line 2822
    .local v9, "sReturnColumns":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2824
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "ClientCertificateManagerTable"

    invoke-virtual {v14, v15, v8, v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 2833
    :cond_16
    :goto_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 2834
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    const-string/jumbo v15, "slotId"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto/16 :goto_0

    .line 2780
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "sColumns":[Ljava/lang/String;
    .end local v9    # "sReturnColumns":[Ljava/lang/String;
    .end local v10    # "sValues":[Ljava/lang/String;
    .restart local v4    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 2781
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_11

    .line 2782
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getSlotIdForPackage - slotId Exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2801
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "cvW":Landroid/content/ContentValues;
    :catch_1
    move-exception v5

    .line 2802
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_13

    .line 2803
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getSlotIdForPackage - allPackages Exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2827
    .end local v3    # "cvW":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v8    # "sColumns":[Ljava/lang/String;
    .restart local v9    # "sReturnColumns":[Ljava/lang/String;
    .restart local v10    # "sValues":[Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 2828
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_16

    .line 2829
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getSlotIdForPackage - retrieving slot Id Exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public insertOrUpdateCCMProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CCMProfile;

    .prologue
    .line 1838
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 1839
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in insertOrUpdateCCMProfile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotIdForCaller(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0

    .line 1844
    .local v0, "slotId":J
    const-wide v2, 0xffffffffL

    cmp-long v2, v2, v0

    if-nez v2, :cond_2

    .line 1845
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 1846
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "insertOrUpdateCCMProfile - getSlotIdForCaller failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_1
    const/4 v2, 0x0

    .line 1854
    :goto_0
    return v2

    .line 1850
    :cond_2
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_3

    .line 1851
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertOrUpdateCCMProfile - slot Id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCCMProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;J)Z

    move-result v2

    goto :goto_0
.end method

.method public insertOrUpdateCertificateProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    .prologue
    const/4 v5, 0x0

    .line 2056
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 2057
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in insertOrUpdateCertificateProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2061
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 2063
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 2064
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    :cond_2
    :goto_0
    return v5

    .line 2068
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_4

    .line 2069
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 2070
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2074
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2075
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 2076
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - CCM is not enabled for caller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2081
    :cond_5
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2083
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2084
    .local v7, "pkg":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2085
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 2086
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - Invalid packageList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2092
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2094
    .local v4, "userId":I
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-direct {p0, p1, v4, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v3

    .line 2095
    .local v3, "adminId":I
    const/4 v0, -0x1

    if-ne v0, v3, :cond_8

    .line 2096
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 2097
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in insertOrUpdateCertificateProfile - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2101
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z

    move-result v5

    goto :goto_0
.end method

.method public installCertificate(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;[BLjava/lang/String;)Z
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .param p3, "certBytes"    # [B
    .param p4, "privateKeyPassword"    # Ljava/lang/String;

    .prologue
    .line 1439
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 1440
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in installCertificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1444
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1446
    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_2

    .line 1447
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - Invalid Arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_2
    const/4 v2, 0x0

    .line 1590
    :goto_0
    return v2

    .line 1451
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_5

    .line 1452
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_4

    .line 1453
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1458
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1459
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_6

    .line 1460
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - CCM is not enabled for caller"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 1465
    :cond_7
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v2, :cond_a

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1467
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1468
    .local v18, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1469
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_9

    .line 1470
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - Invalid packageList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_9
    const/4 v2, 0x0

    goto :goto_0

    .line 1476
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v18    # "pkg":Ljava/lang/String;
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1479
    .local v5, "userId":I
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v4

    .line 1481
    .local v4, "adminId":I
    const/4 v2, -0x1

    if-ne v2, v4, :cond_c

    .line 1482
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_b

    .line 1483
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in installCertificate - failed to get admin Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1488
    :cond_c
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1489
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1491
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_d

    .line 1492
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - verifyCertificateInstaller returned false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1517
    :cond_e
    :try_start_0
    new-instance v13, Lcom/android/server/enterprise/ccm/CertificateHandler;

    invoke-direct {v13}, Lcom/android/server/enterprise/ccm/CertificateHandler;-><init>()V

    .line 1518
    .local v13, "certHandler":Lcom/android/server/enterprise/ccm/CertificateHandler;
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v13, v0, v1}, Lcom/android/server/enterprise/ccm/CertificateHandler;->extractPkcs12([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1519
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_f

    .line 1520
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - pkcs12 certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_f
    invoke-virtual {v13}, Lcom/android/server/enterprise/ccm/CertificateHandler;->isPrivateKeyExists()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1524
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_10

    .line 1525
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - certificate does not contain private key"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1532
    :cond_11
    invoke-virtual {v13}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getKeyAlgorithm()Ljava/lang/String;

    move-result-object v16

    .line 1533
    .local v16, "keyAlg":Ljava/lang/String;
    if-eqz v16, :cond_12

    const-string v2, "RSA"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "EC"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1534
    :cond_12
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_13

    .line 1535
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installCertificate - certificate does not support key algorithm: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1541
    :cond_14
    invoke-virtual {v13}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getPemCertificateChain()[B

    move-result-object v17

    .line 1542
    .local v17, "pemBytes":[B
    if-nez v17, :cond_16

    .line 1543
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_15

    .line 1544
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - failed to get certificate chain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1550
    :cond_16
    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-virtual {v13}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getFormattedPrivateKey()[B

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    invoke-static/range {v4 .. v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-eqz v2, :cond_18

    .line 1554
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_17

    .line 1555
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - native ccm_install_object failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1560
    :cond_18
    move-object/from16 p3, v17

    .line 1561
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1562
    const/16 p4, 0x0

    .line 1576
    .end local v16    # "keyAlg":Ljava/lang/String;
    :goto_1
    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    move-object/from16 v0, p2

    iget-boolean v7, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v4 .. v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_certificate(IIZZZLjava/lang/String;[BLjava/lang/String;)J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1c

    .line 1579
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_19

    .line 1580
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - native ccm_install_certificate failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1565
    .end local v17    # "pemBytes":[B
    :cond_1a
    :try_start_1
    invoke-virtual {v13}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getPemCertificateChain()[B

    move-result-object v17

    .line 1566
    .restart local v17    # "pemBytes":[B
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v12

    .line 1567
    .local v12, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v12, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1569
    .end local v12    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v13    # "certHandler":Lcom/android/server/enterprise/ccm/CertificateHandler;
    .end local v17    # "pemBytes":[B
    :catch_0
    move-exception v14

    .line 1570
    .local v14, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1b

    .line 1571
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installCertificate - Exception"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1586
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v13    # "certHandler":Lcom/android/server/enterprise/ccm/CertificateHandler;
    .restart local v17    # "pemBytes":[B
    :cond_1c
    const/4 v2, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move v9, v4

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z

    move-result v3

    if-eq v2, v3, :cond_1d

    .line 1588
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1590
    :cond_1d
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public installKeyPair(Landroid/app/enterprise/ContextInfo;[B[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "privateKey"    # [B
    .param p3, "certBytes"    # [B
    .param p4, "pKeyAlias"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1368
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 1369
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "installKeyPair() for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/sec/generic/util/CCMKeyCertUtils;->doesCCMSupportKeyAlgorithm([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1373
    const/4 v2, 0x0

    .line 1432
    :goto_0
    return v2

    .line 1376
    :cond_1
    move-object/from16 v14, p2

    .line 1377
    .local v14, "pKeyBytes":[B
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installKeyPair()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    .line 1384
    :try_start_0
    const-string v2, "USRPKEY_"

    const-string v3, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1385
    .local v8, "alias":Ljava/lang/String;
    new-instance v4, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 1386
    .local v4, "profile":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    .line 1387
    iput-object v8, v4, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 1388
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    .local v11, "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "keystorekeychain"

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1390
    if-eqz p5, :cond_2

    .line 1391
    move-object/from16 v0, p5

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1393
    :cond_2
    iput-object v11, v4, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    .line 1394
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 1396
    if-eqz v14, :cond_5

    .line 1397
    invoke-static {v14}, Lcom/sec/generic/util/CCMKeyCertUtils;->getPrivateKeyFromBytes([B)Ljava/security/PrivateKey;

    move-result-object v13

    .line 1398
    .local v13, "pKey":Ljava/security/PrivateKey;
    invoke-static/range {p3 .. p3}, Lcom/sec/generic/util/CCMKeyCertUtils;->getCertificateFromBytes([B)Ljava/security/cert/Certificate;

    move-result-object v9

    .line 1399
    .local v9, "cert":Ljava/security/cert/Certificate;
    if-nez v9, :cond_3

    .line 1400
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "cert is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const/4 v2, 0x0

    goto :goto_0

    .line 1403
    :cond_3
    const/4 v15, 0x0

    .line 1404
    .local v15, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_4

    .line 1405
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1406
    .restart local v15    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p5

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1408
    :cond_4
    const/4 v5, 0x3

    invoke-virtual {v9}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/sec/generic/util/CCMKeyCertUtils;->getFormattedPrivateKey(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installObjectWithProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;I[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1415
    const/4 v2, 0x0

    goto :goto_0

    .line 1419
    .end local v9    # "cert":Ljava/security/cert/Certificate;
    .end local v13    # "pKey":Ljava/security/PrivateKey;
    .end local v15    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1420
    .local v12, "outputStream":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1422
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    .line 1423
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installCertificate(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;[BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_6

    .line 1425
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1427
    .end local v4    # "profile":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .end local v8    # "alias":Ljava/lang/String;
    .end local v11    # "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v10

    .line 1428
    .local v10, "ex":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1429
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1432
    .end local v10    # "ex":Ljava/lang/Exception;
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public installObject(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "UID"    # I
    .param p3, "tokenName"    # Ljava/lang/String;
    .param p4, "tokenPassword"    # Ljava/lang/String;
    .param p5, "objectAlias"    # Ljava/lang/String;
    .param p6, "objectType"    # I
    .param p7, "objectData"    # [B
    .param p8, "objectPassword"    # Ljava/lang/String;
    .param p9, "isTrustedBootRequired"    # Z

    .prologue
    .line 407
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 408
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObject"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 412
    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    if-nez p7, :cond_3

    .line 413
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 414
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - invalid input parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_2
    const/4 v0, -0x1

    .line 473
    :goto_0
    return v0

    .line 418
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 420
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_5

    .line 421
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    .line 422
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    .line 426
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 429
    .local v3, "userId":I
    const/16 v2, 0x3e8

    .line 432
    .local v2, "adminId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 433
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 434
    const/4 v0, -0x1

    if-ne v0, v2, :cond_6

    .line 435
    const/16 v2, 0x3e8

    .line 436
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    .line 437
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, p5, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 443
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 445
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_7

    .line 446
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - verifyCertificateInstaller returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_7
    const/4 v0, -0x1

    goto :goto_0

    .line 452
    :cond_8
    const-wide/16 v0, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v2 .. v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    .line 454
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_9

    .line 455
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - native ccm_install_object failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_9
    const/4 v0, -0x1

    goto :goto_0

    .line 460
    :cond_a
    new-instance v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct {v6}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 461
    .local v6, "profile":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    iput-object p5, v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    .line 466
    const/4 v0, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v7, v2

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z

    move-result v1

    if-eq v0, v1, :cond_c

    .line 468
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_b

    .line 469
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - failed to add DB entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_b
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0, v3, p5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    .line 471
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 473
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public installObjectWithProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;I[BLjava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .param p3, "objectType"    # I
    .param p4, "objectData"    # [B
    .param p5, "objectPassword"    # Ljava/lang/String;

    .prologue
    .line 1668
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 1669
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1673
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1675
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 1676
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_2
    const/4 v0, 0x0

    .line 1748
    :goto_0
    return v0

    .line 1680
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_5

    .line 1681
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    .line 1682
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1687
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1688
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    .line 1689
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - CCM is not enabled for caller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 1695
    :cond_7
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1697
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1698
    .local v11, "pkg":Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1699
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_9

    .line 1700
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - Invalid packageList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    .line 1707
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1709
    .local v3, "userId":I
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 1711
    .local v2, "adminId":I
    const/4 v0, -0x1

    if-ne v0, v2, :cond_c

    .line 1712
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_b

    .line 1713
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_b
    const/4 v0, 0x0

    goto :goto_0

    .line 1719
    :cond_c
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1720
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget-object v4, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1722
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_d

    .line 1723
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - verifyCertificateInstaller returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1729
    :cond_e
    const-wide/16 v0, 0x0

    iget-object v4, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    iget-boolean v8, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    iget-boolean v9, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    move v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_10

    .line 1732
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_f

    .line 1733
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile - native ccm_install_object failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1739
    :cond_10
    const/4 v0, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, v2

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z

    move-result v1

    if-eq v0, v1, :cond_12

    .line 1741
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_11

    .line 1742
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile - failed to add DB entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_11
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget-object v1, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    .line 1745
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1748
    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public installObjectWithType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I[BLjava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "objectAlias"    # Ljava/lang/String;
    .param p3, "objectType"    # I
    .param p4, "objectData"    # [B
    .param p5, "objectPassword"    # Ljava/lang/String;

    .prologue
    .line 1656
    const/4 v0, 0x0

    return v0
.end method

.method public isAccessControlMethodPassword(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x0

    .line 4215
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 4216
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in isAccessControlMethodPassword"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    :cond_0
    if-nez p1, :cond_2

    .line 4219
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 4220
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isAccessControlMethodPassword - null cxtInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4235
    :cond_1
    :goto_0
    return v1

    .line 4225
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCCMProfile(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/ccm/CCMProfile;

    move-result-object v0

    .line 4227
    .local v0, "profile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    if-eqz v0, :cond_1

    .line 4228
    sget-object v2, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    iget-object v3, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v2, v3, :cond_1

    .line 4229
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_3

    .line 4230
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAccessControlMethodPassword return - true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4231
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCCMEmptyForKeyChain(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4434
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getKeyChainMarkedAliases(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 4435
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCCMPolicyEnabledByAdmin(I)Z
    .locals 7
    .param p1, "adminId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3107
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 3108
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in isCCMPolicyEnabledByAdmin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_2

    .line 3111
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 3112
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isCCMPolicyEnabledByAdmin - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    :cond_1
    :goto_0
    return v3

    .line 3117
    :cond_2
    const/4 v2, 0x0

    .line 3119
    .local v2, "rowCount":I
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_3

    .line 3120
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCCMPolicyEnabledByAdmin - AdminId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3123
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3126
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ClientCertificateManagerTable"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3135
    :cond_4
    :goto_1
    if-lez v2, :cond_1

    .line 3136
    const/4 v3, 0x1

    goto :goto_0

    .line 3128
    :catch_0
    move-exception v1

    .line 3129
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 3130
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCCMPolicyEnabledByAdmin - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x0

    .line 2392
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 2393
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "in isCCMPolicyEnabledForCaller"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2397
    iget v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    if-gtz v7, :cond_2

    .line 2399
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 2400
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isCCMPolicyEnabledForCaller - CCM profile is not set"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :cond_1
    :goto_0
    return v6

    .line 2405
    :cond_2
    if-nez p1, :cond_3

    .line 2406
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 2407
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isCCMPolicyEnabledForCaller - null cxtInfo"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2411
    :cond_3
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v7, :cond_4

    .line 2412
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isCCMPolicyEnabledForCaller - Invalid Context "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2416
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2418
    .local v1, "callingUid":I
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_5

    .line 2419
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCCMPolicyEnabledForCaller callingUid - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    :cond_5
    const/16 v7, 0x3e8

    if-ne v1, v7, :cond_6

    .line 2422
    const/4 v6, 0x1

    goto :goto_0

    .line 2425
    :cond_6
    const/4 v6, 0x0

    .line 2426
    .local v6, "ret":Z
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 2428
    .local v5, "pkgNames":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 2429
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v6

    .line 2430
    if-eqz v6, :cond_8

    .line 2435
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_7
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 2436
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCCMPolicyEnabledForCaller returned - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2428
    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2444
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_0

    .line 2445
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "in isCCMPolicyEnabledForPackage. packageName is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    :cond_0
    if-nez p1, :cond_1

    .line 2448
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage failed - Invalid arguments"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    const/4 v10, 0x0

    .line 2568
    :goto_0
    return v10

    .line 2453
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2455
    const-string v10, "SecurityPolicy"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2456
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_2

    .line 2457
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "security policy must not be allowed to access CCM"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 2463
    :cond_3
    if-eqz p2, :cond_5

    const-string v10, "com.android.exchange"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.android.email"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.samsung.android.email"

    invoke-virtual {p2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2466
    :cond_4
    new-instance v6, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;

    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, p1, v10}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;-><init>(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)V

    .line 2468
    .local v6, "emailPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->isAuthenticationEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2469
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v11, "SmartCardEmailPolicy is enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    const/4 v10, 0x0

    goto :goto_0

    .line 2473
    .end local v6    # "emailPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;
    :cond_5
    if-eqz p2, :cond_7

    const-string v10, "com.android.browser"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "com.sec.android.app.sbrowser"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "com.chrome.deviceextras.samsung"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "com.sec.android.providers.downloads"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "com.android.providers.downloads"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2481
    :cond_6
    new-instance v2, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;

    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p1, v10}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;-><init>(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)V

    .line 2483
    .local v2, "browserPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->isAuthenticationEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2485
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v11, "SmartCardBrowserPolicy is enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2490
    .end local v2    # "browserPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;
    :cond_7
    iget v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    if-gtz v10, :cond_9

    .line 2492
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_8

    .line 2493
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage - CCM profile is not set"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2497
    :cond_9
    iget-boolean v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v10, :cond_b

    .line 2498
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_a

    .line 2499
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage - TIMA version does not include CCM"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2504
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 2506
    .local v9, "userId":I
    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->validateCallerContainer(Landroid/app/enterprise/ContextInfo;I)Z

    .line 2508
    const/4 v8, 0x0

    .line 2509
    .local v8, "rowCount":I
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2513
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2514
    .local v0, "adminId":Ljava/lang/Long;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2515
    .local v3, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2516
    const-string v10, "adminUid"

    invoke-virtual {v3, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2517
    const-string v10, "allowAllPkgs"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2520
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    add-int/2addr v8, v10

    .line 2528
    :cond_d
    :goto_2
    if-lez v8, :cond_c

    .line 2529
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_c

    .line 2530
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage - all packages are allowed access"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2522
    :catch_0
    move-exception v5

    .line 2523
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_d

    .line 2524
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isCCMPolicyEnabledForPackage - allPackages Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2535
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v3    # "cvW":Landroid/content/ContentValues;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_e
    if-nez v8, :cond_12

    .line 2536
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2537
    if-nez p2, :cond_f

    .line 2538
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage failed - Invalid arguments"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2543
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_10
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2544
    .restart local v0    # "adminId":Ljava/lang/Long;
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_11

    .line 2545
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AdminId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " UserId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " packageName - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    :cond_11
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2549
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2550
    const-string v10, "adminUid"

    invoke-virtual {v4, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2551
    const-string/jumbo v10, "pkgName"

    invoke-virtual {v4, v10, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    add-int/2addr v8, v10

    goto :goto_3

    .line 2556
    :catch_1
    move-exception v5

    .line 2557
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_10

    .line 2558
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isCCMPolicyEnabledForPackage - adminId Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2564
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_12
    if-lez v8, :cond_13

    .line 2565
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2568
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public keychainMarkedReset(Landroid/app/enterprise/ContextInfo;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    .line 4367
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_0

    .line 4368
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "in keychainMarkedReset"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_3

    .line 4373
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 4374
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "keychainMarkedReset - Cannot clear credentials, not a system app"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v3, v7

    .line 4423
    :cond_2
    :goto_0
    return v3

    .line 4378
    :cond_3
    if-nez p1, :cond_5

    .line 4379
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_4

    .line 4380
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "keychainMarkedReset - Invalid Arguments"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v3, v7

    .line 4381
    goto :goto_0

    .line 4384
    :cond_5
    iget-boolean v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v8, :cond_7

    .line 4385
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_6

    .line 4386
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "keychainMarkedReset - TIMA version does not include CCM"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v3, v7

    .line 4388
    goto :goto_0

    .line 4391
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 4392
    .local v6, "userId":I
    const/4 v3, 0x1

    .line 4393
    .local v3, "ret":Z
    const/4 v1, 0x0

    .line 4397
    .local v1, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getKeyChainMarkedAliases(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v1

    .line 4398
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 4399
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 4402
    .local v0, "aliases":[Ljava/lang/String;
    const-wide/16 v8, 0x0

    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_alias_list(I[Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    .line 4403
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_8

    .line 4404
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "keychainMarkedReset - native ccm_delete_alias_list failed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v3, v7

    .line 4406
    goto :goto_0

    .line 4410
    :cond_9
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "uid"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "pkgName"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "csr"

    aput-object v8, v4, v7

    .line 4412
    .local v4, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x3

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "keystorekeychain"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 4414
    .local v5, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CCMCertTable"

    invoke-virtual {v7, v8, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4417
    .end local v0    # "aliases":[Ljava/lang/String;
    .end local v4    # "sColumns":[Ljava/lang/String;
    .end local v5    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 4418
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_a

    .line 4419
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "keychainMarkedReset - Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 3588
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 3589
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdminAdded - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    :cond_0
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 3604
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 3605
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAdminRemoved - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3608
    .local v1, "userId":I
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfileUsingAdminId(IIZ)Z

    .line 3609
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfileUsingAdminId(IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3614
    :cond_1
    :goto_0
    return-void

    .line 3610
    :catch_0
    move-exception v0

    .line 3611
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 3612
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAdminRemoved - Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreAdminRemoval(I)V
    .locals 4
    .param p1, "adminId"    # I

    .prologue
    .line 3595
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3596
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreAdminRemoval - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3599
    .local v0, "userId":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    .line 3600
    return-void
.end method

.method public registerForDefaultCertificate(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "UID"    # I
    .param p3, "registrationPassword"    # Ljava/lang/String;
    .param p4, "oldPassword"    # Ljava/lang/String;
    .param p5, "isTrustedBootRequired"    # Z

    .prologue
    const/4 v3, -0x1

    .line 482
    const/4 v2, -0x1

    .line 483
    .local v2, "ret":I
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 484
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in registerForDefaultCertificate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 488
    if-eqz p1, :cond_1

    if-nez p3, :cond_3

    .line 489
    :cond_1
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_2

    .line 490
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "registerForDefaultCertificate - invalid input parameters"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_2
    :goto_0
    return v3

    .line 495
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 497
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_4

    .line 498
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_2

    .line 499
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "registerForDefaultCertificate - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_4
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_5

    .line 505
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in registerForDefaultCertificate - calling UID is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_5
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    .line 510
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v3, :cond_7

    .line 512
    :try_start_0
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_6

    .line 513
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "Called TIMA service registerForDefaultCertificate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_6
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3, p2, p3, p4, p5}, Landroid/service/tima/ITimaService;->ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    .line 518
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 520
    .local v0, "currentUserId":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "currentUserId":I
    :cond_7
    :goto_1
    move v3, v2

    .line 526
    goto :goto_0

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public removePackageFromExemptList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3206
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 3207
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in removePackageFromExemptList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3211
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3213
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 3214
    :cond_1
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3215
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removePackageFromExemptList - Invalid input"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    :cond_2
    :goto_0
    return v2

    .line 3219
    :cond_3
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_4

    .line 3220
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePackageFromExemptList packageName - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3225
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v3, :cond_5

    .line 3226
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3227
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removePackageFromExemptList - TIMA version does not include CCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3232
    :cond_5
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3233
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3234
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removePackageFromExemptList - CCM is not enabled by admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3239
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3241
    .local v1, "userId":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->validatePackageExemption(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3243
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3244
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePackageFromExemptList - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not whitelisted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3249
    :cond_7
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v0

    .line 3251
    .local v0, "uid":I
    const/4 v3, -0x1

    if-eq v3, v0, :cond_2

    .line 3252
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2, v3, v1, v0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 3258
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public setCCMProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;)Z
    .locals 33
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CCMProfile;

    .prologue
    .line 551
    const/16 v24, 0x1

    .line 552
    .local v24, "ret":Z
    const-wide/16 v26, 0x0

    .line 553
    .local v26, "slotId":J
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 554
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "in setCCMProfile cxtInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 558
    if-eqz p1, :cond_1

    if-nez p2, :cond_4

    .line 559
    :cond_1
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_2

    .line 560
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_2
    const/16 v24, 0x0

    .line 768
    .end local v24    # "ret":Z
    :cond_3
    :goto_0
    return v24

    .line 564
    .restart local v24    # "ret":Z
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 566
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v6, :cond_6

    .line 567
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_5

    .line 568
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - TIMA version does not include CCM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_5
    const/16 v24, 0x0

    goto :goto_0

    .line 572
    :cond_6
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 573
    .local v12, "accessControlMethod":Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;
    const/16 v19, 0x0

    .line 575
    .local v19, "password":Ljava/lang/String;
    sget-object v6, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v6, v12, :cond_8

    .line 576
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 577
    if-nez v19, :cond_8

    .line 578
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_7

    .line 579
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid Password Access Control arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_7
    const/16 v24, 0x0

    goto :goto_0

    .line 585
    :cond_8
    sget-object v6, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v6, v12, :cond_10

    .line 587
    const/16 v30, 0x0

    .line 588
    .local v30, "tuiVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v6, :cond_9

    .line 590
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->getTuiVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v30

    .line 596
    :cond_9
    :goto_1
    if-nez v30, :cond_b

    .line 597
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_a

    .line 598
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - TUI is not supported"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "TUI is not supported"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 591
    :catch_0
    move-exception v14

    .line 592
    .local v14, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 603
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_b
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    if-nez v6, :cond_d

    .line 604
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_c

    .line 605
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 610
    :cond_d
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v6, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    if-ltz v6, :cond_e

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget-object v6, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->pin:[B

    if-nez v6, :cond_10

    .line 612
    :cond_e
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_f

    .line 613
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_f
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 621
    .end local v30    # "tuiVersion":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    if-eqz v6, :cond_13

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13

    .line 623
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 624
    .local v21, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_11

    .line 625
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_12

    .line 626
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid packageList"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 632
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v21    # "pkg":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    if-nez v6, :cond_16

    .line 637
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    if-nez v6, :cond_15

    .line 638
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_14

    .line 639
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - null packageList"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iput-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    .line 644
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v23

    .line 647
    .local v23, "pkgNames":[Ljava/lang/String;
    move-object/from16 v13, v23

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_16

    aget-object v22, v13, v15

    .line 648
    .local v22, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 647
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 650
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .end local v22    # "pkgName":Ljava/lang/String;
    .end local v23    # "pkgNames":[Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 651
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 655
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_16
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v31

    .line 657
    .local v31, "userId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->ordinal()I

    move-result v7

    move/from16 v0, v31

    move-object/from16 v1, v19

    invoke-static {v6, v0, v7, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v26

    .line 660
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_17

    .line 661
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCCMProfile - slot Id is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_17
    const-wide v6, 0xffffffffL

    cmp-long v6, v6, v26

    if-nez v6, :cond_19

    .line 664
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_18

    .line 665
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - native create_slot failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_18
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 669
    :cond_19
    sget-object v6, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v6, v12, :cond_20

    .line 671
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget-object v6, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->pin:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertChain([B)[B

    move-result-object v11

    .line 672
    .local v11, "wrappedPin":[B
    if-nez v11, :cond_1b

    .line 673
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1a

    .line 674
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_1a
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v0, v31

    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 678
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 679
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 681
    :cond_1b
    const/4 v10, 0x0

    .line 683
    .local v10, "imageId":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget-object v6, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->secretImage:[B

    if-eqz v6, :cond_1e

    .line 685
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget-object v7, v7, Lcom/sec/enterprise/knox/ccm/TUIProperty;->secretImage:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v6, v7, v8, v9, v0}, Landroid/service/tima/ITimaService;->tuiInitSecret([BIILjava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1d

    .line 688
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1c

    .line 689
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_1c
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v0, v31

    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 693
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 694
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 696
    :cond_1d
    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 697
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "tuiInitSecret success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 708
    :cond_1e
    :goto_3
    move-wide/from16 v0, v26

    long-to-int v7, v0

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v8, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginExpirationPeriod:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v9, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setTokenTUIProperty(IIILjava/lang/String;[B)I

    move-result v25

    .line 711
    .local v25, "tuiRet":I
    if-eqz v25, :cond_20

    .line 712
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1f

    .line 713
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - setTokenTUIProperty() returns an error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_1f
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v0, v31

    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 717
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 718
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 699
    .end local v25    # "tuiRet":I
    :catch_2
    move-exception v14

    .line 700
    .local v14, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "exception - tuiInitSecret failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 722
    .end local v10    # "imageId":Ljava/lang/String;
    .end local v11    # "wrappedPin":[B
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_20
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCCMProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;J)Z

    move-result v7

    if-eq v6, v7, :cond_21

    .line 723
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v0, v31

    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 724
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 725
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 728
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 730
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    .line 733
    const/16 v17, 0x0

    .line 734
    .local v17, "isPersona":Z
    const/16 v16, 0x1

    .line 735
    .local v16, "isLocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 737
    .local v28, "token":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    if-eqz v6, :cond_22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 738
    const/16 v17, 0x1

    .line 739
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v20

    .line 740
    .local v20, "persInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v20, :cond_22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-eqz v6, :cond_22

    .line 742
    const/16 v16, 0x0

    .line 750
    .end local v20    # "persInfo":Landroid/content/pm/PersonaInfo;
    :cond_22
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    :goto_4
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_23

    .line 754
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCCMProfile - isPersona: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isLocked: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_23
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    .line 761
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v0, v31

    invoke-static {v6, v7, v0, v8, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 763
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMAsDefaultCertStore(IZ)Z

    .line 764
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_3

    .line 765
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCCMDefaultCertStore says: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 745
    :catch_3
    move-exception v14

    .line 746
    .local v14, "e":Ljava/lang/Exception;
    :try_start_4
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_24

    .line 747
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 750
    :cond_24
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setCSRProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CSRProfile;)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CSRProfile;

    .prologue
    .line 2843
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 2844
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in setCSRProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2848
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 2851
    :cond_1
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_2

    .line 2852
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCSRProfile - Invalid Arguments"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    :cond_2
    const/4 v4, 0x0

    .line 2939
    :goto_0
    return v4

    .line 2856
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_5

    .line 2857
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 2858
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCSRProfile - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 2862
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2863
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_6

    .line 2864
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCSRProfile - CCM is not enabled for caller"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 2868
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2869
    .local v3, "userId":I
    const/4 v6, 0x0

    .line 2871
    .local v6, "subj":[B
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2872
    .local v16, "str":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->commonName:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 2873
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->commonName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2875
    :cond_8
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->domainComponent:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 2876
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DC="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->domainComponent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2878
    :cond_9
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->organization:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2879
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "O="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->organization:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2881
    :cond_a
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->locality:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 2882
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->locality:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2884
    :cond_b
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->state:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 2885
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ST="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->state:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2887
    :cond_c
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->country:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 2888
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->country:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2890
    :cond_d
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->emailAddress:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 2891
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "emailAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->emailAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    .line 2895
    .local v14, "length":I
    const/4 v4, 0x2

    if-le v14, v4, :cond_f

    .line 2896
    add-int/lit8 v4, v14, -0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2900
    :try_start_0
    new-instance v15, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    .line 2901
    .local v15, "prncpal":Lcom/android/org/bouncycastle/jce/X509Principal;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/X509Principal;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2910
    .end local v15    # "prncpal":Lcom/android/org/bouncycastle/jce/X509Principal;
    :cond_f
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 2911
    .local v2, "adminId":I
    const/4 v4, -0x1

    if-ne v4, v2, :cond_11

    .line 2912
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_10

    .line 2913
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in setCSRProfile - failed to get admin Id"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2903
    .end local v2    # "adminId":I
    :catch_0
    move-exception v13

    .line 2904
    .local v13, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_f

    .line 2905
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "in setCSRProfile - Exception "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2917
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v2    # "adminId":I
    :cond_11
    const-wide/16 v10, 0x0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyLength:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->profileType:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->ordinal()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_set_csr_profile(IILjava/lang/String;I[BI)J

    move-result-wide v4

    cmp-long v4, v10, v4

    if-eqz v4, :cond_13

    .line 2920
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_12

    .line 2921
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in setCSRProfile - native ccm_set_csr_profile failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2927
    :cond_13
    new-instance v9, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct {v9}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 2928
    .local v9, "certProf":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    iput-object v4, v9, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 2929
    const/4 v4, 0x0

    iput-boolean v4, v9, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 2930
    const/4 v4, 0x0

    iput-boolean v4, v9, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    .line 2931
    const/4 v4, 0x0

    iput-boolean v4, v9, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    .line 2934
    const/4 v4, 0x1

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v10, v2

    move v11, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z

    move-result v5

    if-eq v4, v5, :cond_14

    .line 2936
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2939
    :cond_14
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public setDefaultCCMProfile()Z
    .locals 15

    .prologue
    .line 1026
    const-wide v10, 0xffffffffL

    .line 1027
    .local v10, "slotId":J
    const/16 v1, 0x3e8

    .line 1028
    .local v1, "callerUID":I
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_0

    .line 1029
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "in setDefaultCCMProfile"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_0
    iget-boolean v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v9, :cond_2

    .line 1032
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_1

    .line 1033
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "setDefaultCCMProfile - TIMA version does not include CCM"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_1
    const/4 v9, 0x0

    .line 1113
    :goto_0
    return v9

    .line 1038
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateEnterpriseDBForDefaultCCMProfile()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1039
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "update db failed"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v9, 0x0

    goto :goto_0

    .line 1044
    :cond_3
    new-instance v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ccm/CCMProfile;-><init>()V

    .line 1045
    .local v4, "defaultCCMProfile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    sget-object v9, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    iput-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 1046
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    .line 1047
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_4

    .line 1048
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1049
    .local v0, "addPackageName":Ljava/lang/String;
    iget-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1053
    .end local v0    # "addPackageName":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    iget-object v12, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v12}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->ordinal()I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v1, v9, v12, v13}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v10

    .line 1056
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_5

    .line 1057
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setDefaultCCMProfile - slot Id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", caller Id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_5
    const-wide v12, 0xffffffffL

    cmp-long v9, v12, v10

    if-nez v9, :cond_7

    .line 1061
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_6

    .line 1062
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "setDefaultCCMProfile - native create_slot failed"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1069
    :cond_7
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1070
    .local v2, "cv":Landroid/content/ContentValues;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1072
    .local v3, "cvWhere":Landroid/content/ContentValues;
    iget-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1073
    .local v8, "pkg":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    .end local v2    # "cv":Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1074
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1075
    const-string/jumbo v9, "uid"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1076
    const-string v9, "accessType"

    iget-object v12, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v12}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string/jumbo v9, "loginRetry"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1079
    const-string/jumbo v9, "loginExpiration"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1080
    const-string/jumbo v9, "slotId"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1081
    const-string/jumbo v9, "pkgName"

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    new-instance v3, Landroid/content/ContentValues;

    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1084
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1085
    const-string/jumbo v9, "uid"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1086
    const-string/jumbo v9, "pkgName"

    invoke-virtual {v3, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const/4 v9, 0x1

    iget-object v12, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "ClientCertificateManagerTable"

    invoke-virtual {v12, v13, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v12

    if-eq v9, v12, :cond_8

    .line 1090
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_9

    .line 1091
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "setDefaultCCMProfile packages - DB operation failed"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_9
    const/4 v9, 0x0

    invoke-static {v1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 1094
    const/4 v9, 0x0

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1099
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1100
    .local v5, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    invoke-static {v1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 1101
    const/4 v9, 0x0

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 1102
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1105
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->addDefaultPackageToExemptList()V

    .line 1107
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v9

    iput v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 1109
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    .line 1111
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {p0, v9, v12, v13, v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    .line 1113
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public setTokenTUIProperty(IIILjava/lang/String;[B)I
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "loginExpirationTime"    # I
    .param p3, "loginRetry"    # I
    .param p4, "secretImageId"    # Ljava/lang/String;
    .param p5, "wrappedPin"    # [B

    .prologue
    .line 3420
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3421
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTokenTUIProperty - slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "loginExpirationTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTokenTUIProperty - loginRetry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    :cond_0
    invoke-static {p1, p4, p5, p3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->CCM_SetTokenTUIProperty(ILjava/lang/String;[BII)I

    move-result v0

    .line 3428
    .local v0, "ret":I
    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 3529
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->handleCCMBuildUpdate()V

    .line 3531
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkMPforCCM()V

    .line 3533
    return-void
.end method
