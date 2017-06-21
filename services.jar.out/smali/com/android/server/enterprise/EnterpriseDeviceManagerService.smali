.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.super Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;
.source "EnterpriseDeviceManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final ACTIVATE_DEVICE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS"

.field public static final AVRCP_RESTRICTION_INTENT:I = 0x3

.field private static final BBC_METADATA:Ljava/lang/String; = "com.samsung.android.knoxenabled"

.field private static final BULK_ENROLL_DATA_FILE:Ljava/lang/String; = "BulkEnrollmentProfile"

.field public static final CAMERA_RESTRICTION_INTENT:I = 0x1

.field private static final CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EAS_PKG_NAME:Ljava/lang/String; = "com.android.exchange"

.field public static final EMAIL_PKG_NAME:Ljava/lang/String; = "com.android.email"

.field private static final EXCLUDED_ADMINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KLMS_PKG_NAME:Ljava/lang/String; = "com.samsung.klmsagent"

.field public static final MIC_RESTRICTION_INTENT:I = 0x2

.field private static final MIN_PERSONA_ID:I = 0x64

.field private static final MY_PID:I

.field public static final NEW_EMAIL_PKG_NAME:Ljava/lang/String; = "com.samsung.android.email.provider"

.field private static final NON_MDM_ADMINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROXY_ADMIN_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

.field private static final SELF_UPDATE_ADMIN_APK_FILE_DIR:Ljava/lang/String; = "/data/app/selfUpdateApks"

.field private static final SELF_UPDATE_ADMIN_APK_FILE_PATH:Ljava/lang/String; = "/data/app/selfUpdateApks/"

.field private static final SELF_UPDATE_ADMIN_COMPONENT_KEY:Ljava/lang/String; = "self_update_admin_component"

.field private static final SELF_UPDATE_ADMIN_CONF_FILE_PATH:Ljava/lang/String; = "/data/system/selfUpdateAdmin.conf"

.field private static final SELF_UPDATE_ADMIN_SEPARATOR:Ljava/lang/String; = ";"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "android.uid.system:1000"

.field private static final SILENT_ACTIVATION_PERMISION:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SILENT_ACTIVATION"

.field private static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "EnterpriseDeviceManagerService"

.field private static final UMC_DATA_PATH:Ljava/lang/String; = "/efs/umc"

.field public static final UMC_PACKAGENAME:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field private static mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

.field private static mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

.field private static mInternalHandler:Landroid/os/Handler;

.field private static mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private static mPolicyServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/EnterpriseServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelfUpdateAdminComponent:Landroid/content/ComponentName;

.field private static mServiceAdditionCondition:Landroid/os/ConditionVariable;

.field private static mServicesAdded:Z


# instance fields
.field private final KNOXVPN_CONTAINER_ENABLED:I

.field private KNOXVPN_FEATURE:I

.field private final KNOXVPN_MDM_ENABLED:I

.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mDPM:Landroid/app/admin/DevicePolicyManager;

.field final mDPMS:Landroid/app/admin/IDevicePolicyManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFirstInitializedPolicyServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLMS:Lcom/android/server/enterprise/log/LogManagerService;

.field final mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

.field final mPMS:Landroid/content/pm/IPackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    .line 277
    const-string v0, "com.samsung.android.email.provider"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.samsung.android.email.provider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :goto_0
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string/jumbo v1, "com.sec.esdk.elm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.samsung.android.email.provider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.android.email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string v1, "com.android.exchange"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string/jumbo v1, "com.sec.enterprise.knox.express"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    const-string/jumbo v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    .line 307
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    .line 316
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    .line 332
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    .line 341
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    const-string v1, "android.permission.sec.MDM_WIFI"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    return-void

    .line 281
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.android.email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.android.exchange"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pms"    # Landroid/content/pm/IPackageManager;
    .param p3, "dpm"    # Landroid/app/admin/IDevicePolicyManager;

    .prologue
    .line 2041
    invoke-direct {p0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;-><init>()V

    .line 317
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    .line 330
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    .line 331
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    .line 347
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->KNOXVPN_FEATURE:I

    .line 348
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->KNOXVPN_MDM_ENABLED:I

    .line 349
    const/4 v11, 0x2

    iput v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->KNOXVPN_CONTAINER_ENABLED:I

    .line 485
    new-instance v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;

    invoke-direct {v11, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2042
    sput-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 2043
    new-instance v11, Lcom/android/server/enterprise/log/LogManagerService;

    move-object/from16 v0, p1

    invoke-direct {v11, v0, p0}, Lcom/android/server/enterprise/log/LogManagerService;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mLMS:Lcom/android/server/enterprise/log/LogManagerService;

    .line 2044
    const-string/jumbo v11, "log_manager_service"

    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mLMS:Lcom/android/server/enterprise/log/LogManagerService;

    invoke-static {v11, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2045
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 2046
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    .line 2047
    const-string/jumbo v11, "device_policy"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    iput-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 2048
    const-string/jumbo v11, "device_policy"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 2049
    new-instance v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    invoke-direct {v11, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    .line 2050
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    const/4 v12, 0x0

    new-instance v13, Landroid/os/UserHandle;

    const/4 v14, -0x1

    invoke-direct {v13, v14}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12, v13, v14}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 2051
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v11

    sput-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 2052
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->handleDowngrade()V

    .line 2054
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 2055
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2056
    const-string v11, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2057
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2059
    new-instance v11, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2062
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isFirmwareChanged()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2063
    const-string v11, "EnterpriseDeviceManagerService"

    const-string/jumbo v12, "handleUpgrade: Checking Upgrade..."

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->handleFirmwareUpgrade()V

    .line 2065
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 2068
    const-string/jumbo v11, "ro.build.fingerprint"

    const-string/jumbo v12, "unknown"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2069
    .local v9, "value":Ljava/lang/String;
    const-string/jumbo v11, "unknown"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 2070
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "PlatformSoftwareVersion"

    invoke-virtual {v11, v12, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->setDatabaseUpgradeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2074
    .end local v9    # "value":Ljava/lang/String;
    :cond_0
    new-instance v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-direct {v5, v11, v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V

    .line 2075
    .local v5, "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v12, "enterprise_license_policy"

    move-object v11, v5

    check-cast v11, Landroid/os/IBinder;

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2076
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "enterprise_license_policy"

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v12, "enterprise_license_policy"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2079
    new-instance v5, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;-><init>(Landroid/content/Context;)V

    .line 2080
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "application_policy"

    move-object v11, v5

    check-cast v11, Landroid/os/IBinder;

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2081
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "application_policy"

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string v12, "application_policy"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2084
    const-string v11, "application_policy"

    invoke-static {v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2087
    .local v1, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    new-instance v5, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 2088
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v12, "wifi_policy"

    move-object v11, v5

    check-cast v11, Landroid/os/IBinder;

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2089
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "wifi_policy"

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v12, "wifi_policy"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2092
    new-instance v5, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;-><init>(Landroid/content/Context;)V

    .line 2093
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v12, "phone_restriction_policy"

    move-object v11, v5

    check-cast v11, Landroid/os/IBinder;

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2094
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "phone_restriction_policy"

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v12, "phone_restriction_policy"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2097
    new-instance v5, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;-><init>(Landroid/content/Context;)V

    .line 2098
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v12, "remoteinjection"

    move-object v11, v5

    check-cast v11, Landroid/os/IBinder;

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2099
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "remoteinjection"

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2100
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v12, "remoteinjection"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2104
    new-instance v5, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;-><init>(Landroid/content/Context;)V

    .line 2105
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v12, "knox_ucsm_policy"

    move-object v11, v5

    check-cast v11, Landroid/os/IBinder;

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2106
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "knox_ucsm_policy"

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v12, "knox_ucsm_policy"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2116
    const-string/jumbo v11, "edm_proxy"

    new-instance v12, Lcom/android/server/enterprise/EDMProxyService;

    invoke-direct {v12}, Lcom/android/server/enterprise/EDMProxyService;-><init>()V

    invoke-static {v11, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2119
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v10

    .line 2120
    .local v10, "versionInfo":Landroid/os/Bundle;
    const-string v11, "2.0"

    const-string/jumbo v12, "version"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2121
    const/4 v2, 0x1

    .line 2122
    .local v2, "enabledContainer":Z
    const/4 v11, 0x1

    if-ne v11, v2, :cond_1

    .line 2123
    new-instance v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;-><init>(Landroid/content/Context;)V

    .line 2124
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v12, "mum_container_policy"

    move-object v11, v5

    check-cast v11, Landroid/os/IBinder;

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2125
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "mum_container_policy"

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v12, "mum_container_policy"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2133
    .end local v2    # "enabledContainer":Z
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2134
    const-string v11, "EnterpriseBillingPolicy"

    const-string v12, "Adding other services"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    const/4 v5, 0x0

    .line 2137
    :try_start_0
    const-string v11, "EnterpriseBillingPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adding yet : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    new-instance v6, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2139
    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .local v6, "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_1
    const-string/jumbo v12, "enterprise_billing_policy"

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2140
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "enterprise_billing_policy"

    invoke-interface {v11, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    const-string v11, "EnterpriseBillingPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Added successfully : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v5, v6

    .line 2149
    .end local v6    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/otp/OTPSecProdFeatureMonitor;->isOTPFeatureSupported()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2151
    :try_start_2
    new-instance v6, Lcom/android/server/enterprise/otp/OTPService;

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/android/server/enterprise/otp/OTPService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2152
    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v6    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_3
    const-string/jumbo v12, "otp_service"

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2153
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "otp_service"

    invoke-interface {v11, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OTP_SERVICE: Added successfully - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v5, v6

    .line 2165
    .end local v6    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :goto_1
    new-instance v5, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;-><init>(Landroid/content/Context;)V

    .line 2166
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v12, "enterprise_shared_device_policy"

    move-object v11, v5

    check-cast v11, Landroid/os/IBinder;

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2167
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "enterprise_shared_device_policy"

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2168
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDeviceVersion;->writeVersionInProperties(Landroid/content/Context;)V

    .line 2174
    const-string v11, "1"

    const-string/jumbo v12, "ro.config.tima"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 2175
    .local v7, "timaEnabled":Z
    if-eqz v7, :cond_3

    .line 2176
    new-instance v5, Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;-><init>(Landroid/content/Context;)V

    .line 2177
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v12, "knox_timakeystore_policy"

    move-object v11, v5

    check-cast v11, Landroid/os/IBinder;

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2178
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "knox_timakeystore_policy"

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    const-string v11, "3.0"

    const-string/jumbo v12, "ro.config.timaversion"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 2181
    .local v8, "timaversion":Z
    const/4 v11, 0x1

    if-ne v11, v8, :cond_3

    .line 2183
    new-instance v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;-><init>(Landroid/content/Context;)V

    .line 2184
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v12, "knox_ccm_policy"

    move-object v11, v5

    check-cast v11, Landroid/os/IBinder;

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2185
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "knox_ccm_policy"

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    .end local v8    # "timaversion":Z
    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKnoxVpnFeature()I

    move-result v11

    const/4 v12, 0x1

    if-lt v11, v12, :cond_4

    .line 2191
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnVersion;->writeVersionInProperties()V

    .line 2196
    :cond_4
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/enterprise/sso/SSOVersion;->writeVersionInProperties(Landroid/content/Context;)V

    .line 2200
    invoke-static {}, Lcom/android/server/enterprise/scep/CEPVersion;->writeVersionInProperties()V

    .line 2203
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/enterprise/utils/ConstrainedState;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object v11

    sput-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    .line 2204
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresentInternal()Z

    move-result v11

    if-nez v11, :cond_5

    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v11}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkConstrainedState()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 2205
    :cond_5
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addServices()V

    .line 2209
    :cond_6
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkKnoxCustomBootAnimEnabled()V

    .line 2212
    return-void

    .line 2142
    .end local v7    # "timaEnabled":Z
    :catch_0
    move-exception v3

    .line 2143
    .local v3, "exception":Ljava/lang/Exception;
    :goto_2
    const-string v11, "EnterpriseBillingPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2155
    .end local v3    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 2156
    .restart local v3    # "exception":Ljava/lang/Exception;
    :goto_3
    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OTP_SERVICE: Exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2159
    .end local v3    # "exception":Ljava/lang/Exception;
    :cond_7
    const-string v11, "EnterpriseDeviceManagerService"

    const-string v12, "OTP_SERVICE: Not added - OTP Sec Feature not enabled"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2155
    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v6    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :catch_2
    move-exception v3

    move-object v5, v6

    .end local v6    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    goto :goto_3

    .line 2142
    .end local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v6    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :catch_3
    move-exception v3

    move-object v5, v6

    .end local v6    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v5    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->cleanGenericTableOnUserRemoved(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->selfUpdate()V

    return-void
.end method

.method static synthetic access$500()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$502(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Landroid/content/ComponentName;

    .prologue
    .line 251
    sput-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addServices()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->initServices()V

    return-void
.end method

.method static synthetic access$800()Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private activateAdmin(Landroid/content/ComponentName;Z)V
    .locals 25
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z

    .prologue
    .line 1005
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    .line 1006
    .local v20, "userHandle":I
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Activating admin on user!!!!!! "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v7

    .line 1009
    .local v7, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v7, :cond_0

    .line 1010
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Bad admin: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1013
    :cond_0
    const-string/jumbo v21, "restriction_policy"

    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1014
    .local v16, "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v16, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkAdminActivationEnabled(ILjava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 1015
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Admin cannot be activated"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1018
    :cond_1
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v21

    if-eqz v21, :cond_2

    sget-object v21, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 1019
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V

    .line 1022
    :cond_2
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    .line 1023
    .local v19, "uid":I
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 1024
    .local v8, "compName":Landroid/content/ComponentName;
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Admin uid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", Component name: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1027
    .local v12, "ident":J
    const/16 v17, 0x1

    .line 1029
    .local v17, "ret":Z
    const/16 v18, 0x2

    .line 1030
    .local v18, "retry":I
    const/4 v6, 0x0

    .line 1033
    .local v6, "activationStatus":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1034
    if-nez p2, :cond_4

    :try_start_1
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v8, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v21

    if-eqz v21, :cond_4

    .line 1035
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Admin is already added"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1056
    :catchall_0
    move-exception v21

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v21
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1081
    :catch_0
    move-exception v9

    .line 1082
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1084
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1087
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1088
    .local v14, "intent":Landroid/content/Intent;
    const-string v21, "android.accessory.device.action.ACTIVE_MDM"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1090
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "send to Gear Manager ."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    if-eqz v6, :cond_3

    .line 1093
    const-string v21, "EnterpriseDeviceManagerService"

    const-string v22, "Calling MSG_POST_ADMIN_ACTIVATION after Admin activation..."

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    sget-object v21, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    const/16 v22, 0x1

    const/16 v23, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    .line 1097
    :cond_3
    return-void

    .line 1037
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_4
    if-nez p2, :cond_5

    .line 1038
    :try_start_4
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Adding admin "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to lists"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v17

    .line 1046
    :cond_5
    if-nez v17, :cond_6

    .line 1047
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Removing admin "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " from lists"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Unable to activate admin"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1053
    :cond_6
    sget-object v21, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1054
    .local v15, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_1

    .line 1056
    .end local v15    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_7
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1062
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_2
    move/from16 v0, v18

    if-gt v10, v0, :cond_8

    .line 1063
    :try_start_5
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Attempt "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to active admin in DPM"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1066
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Admin sucessfully activated in DPM for user "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const/4 v6, 0x1

    .line 1073
    :cond_8
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "EDM setActiveAdmin activationStatus -"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " for user - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    if-nez v6, :cond_a

    .line 1075
    const-string v21, "EnterpriseDeviceManagerService"

    const-string v22, "Started removing admin information..."

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    new-instance v21, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    .line 1077
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1078
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "EDM - Admin activation failed for user -"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1084
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v21

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21

    .line 1070
    .restart local v10    # "i":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_9
    :try_start_6
    const-string v21, "EnterpriseDeviceManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Admin activation failed for user "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1080
    :cond_a
    const-string v21, "EnterpriseDeviceManagerService"

    const-string v22, "Admin added to DPM!"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1084
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method private addServices()V
    .locals 16

    .prologue
    .line 2215
    const-string v13, "EnterpriseDeviceManagerService"

    const-string v14, "Adding Services..."

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    const/4 v5, 0x1

    .line 2218
    .local v5, "enabledMDM":Z
    const/4 v8, 0x0

    .line 2220
    .local v8, "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const/4 v13, 0x1

    if-ne v13, v5, :cond_0

    .line 2221
    :try_start_0
    const-string v13, "EnterpriseDeviceManagerService"

    const-string v14, "MDM is enabled"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    const/4 v6, 0x1

    .line 2223
    .local v6, "enabledSSO":Z
    const/4 v13, 0x1

    if-ne v13, v6, :cond_3

    .line 2225
    new-instance v9, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v13}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 2226
    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .local v9, "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_1
    const-string/jumbo v14, "enterprise_sso_policy"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2227
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "enterprise_sso_policy"

    invoke-interface {v13, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    new-instance v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2231
    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_2
    const-string/jumbo v14, "enterprise_user_space_sso_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2232
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "enterprise_user_space_sso_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    new-instance v9, Lcom/android/server/enterprise/sso/GenericSSOService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 2236
    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_3
    const-string/jumbo v14, "genericssoservice"

    move-object v0, v9

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2237
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "genericssoservice"

    invoke-interface {v13, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    const-string v13, "EnterpriseDeviceManagerService"

    const-string v14, "SSO is enabled"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    :goto_0
    const/4 v3, 0x1

    .line 2246
    .local v3, "enabledCEP":Z
    const/4 v13, 0x1

    if-ne v13, v3, :cond_4

    .line 2247
    new-instance v8, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2248
    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_4
    const-string/jumbo v14, "knox_scep_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2249
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "knox_scep_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2250
    const-string v13, "EnterpriseDeviceManagerService"

    const-string v14, "CEP is enabled"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-object v9, v8

    .line 2257
    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :goto_1
    :try_start_5
    new-instance v8, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 2258
    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_6
    const-string/jumbo v14, "enterprise_dlp_service"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2259
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "enterprise_dlp_service"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v14, "enterprise_dlp_service"

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2262
    const-string v13, "EnterpriseDeviceManagerService"

    const-string v14, "DLPManagerPolicyService service is added"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    move-object v9, v8

    .line 2272
    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :goto_2
    :try_start_7
    const-string v13, "application_policy"

    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2273
    .local v1, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    new-instance v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 2274
    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :try_start_8
    const-string/jumbo v14, "knoxcustom"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2275
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "knoxcustom"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2276
    const-string v13, "EnterpriseDeviceManagerService"

    const-string v14, "CSDK is enabled"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 2287
    .end local v1    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v3    # "enabledCEP":Z
    .end local v6    # "enabledSSO":Z
    :cond_0
    :goto_3
    const-string v13, "EnterpriseDeviceManagerService"

    const-string v14, "Adding Services..."

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    :try_start_9
    new-instance v8, Lcom/android/server/enterprise/device/DeviceInfo;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 2292
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "device_info"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2293
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "device_info"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    new-instance v8, Lcom/android/server/enterprise/license/LicenseLogService;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/license/LicenseLogService;-><init>(Landroid/content/Context;)V

    .line 2296
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "license_log_service"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2297
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "license_log_service"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    new-instance v8, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/auditlog/AuditLogService;-><init>(Landroid/content/Context;)V

    .line 2301
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v14, "auditlog"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2302
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v14, "auditlog"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2313
    new-instance v8, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 2314
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "eas_account_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2315
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "eas_account_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2317
    new-instance v8, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/email/EmailAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 2318
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "email_account_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2319
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "email_account_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2321
    new-instance v8, Lcom/android/server/enterprise/location/LocationPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/location/LocationPolicy;-><init>(Landroid/content/Context;)V

    .line 2322
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "location_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2323
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "location_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    new-instance v8, Lcom/android/server/enterprise/general/MiscPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/general/MiscPolicy;-><init>(Landroid/content/Context;)V

    .line 2326
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "misc_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2327
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "misc_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2329
    new-instance v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;-><init>(Landroid/content/Context;)V

    .line 2330
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "vpn_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2331
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "vpn_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2333
    new-instance v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;-><init>(Landroid/content/Context;)V

    .line 2334
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "enterprise_vpn_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2335
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "enterprise_vpn_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2337
    const-string v13, "application_policy"

    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2338
    .restart local v1    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    const-string/jumbo v13, "vpn_policy"

    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 2339
    .local v12, "vpnService":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    new-instance v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13, v1, v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/vpn/VpnInfoPolicy;)V

    .line 2340
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "restriction_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2341
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "restriction_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2343
    new-instance v8, Lcom/android/server/enterprise/security/PasswordPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/security/PasswordPolicy;-><init>(Landroid/content/Context;)V

    .line 2344
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "password_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2345
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "password_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    new-instance v8, Lcom/android/server/enterprise/security/SecurityPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/security/SecurityPolicy;-><init>(Landroid/content/Context;)V

    .line 2348
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "security_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2349
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "security_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    new-instance v8, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/restriction/RoamingPolicy;-><init>(Landroid/content/Context;)V

    .line 2352
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "roaming_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2353
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "roaming_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2355
    new-instance v8, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;-><init>(Landroid/content/Context;)V

    .line 2356
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v14, "bluetooth_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2357
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v14, "bluetooth_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2360
    new-instance v8, Lcom/android/server/enterprise/email/EmailPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/email/EmailPolicy;-><init>(Landroid/content/Context;)V

    .line 2361
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "email_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2362
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "email_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2365
    new-instance v8, Lcom/android/server/enterprise/firewall/Firewall;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/firewall/Firewall;-><init>(Landroid/content/Context;)V

    .line 2366
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "firewall"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2367
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "firewall"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2369
    new-instance v8, Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/firewall/FirewallPolicy;-><init>(Landroid/content/Context;)V

    .line 2370
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "firewall_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2371
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "firewall_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2374
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKnoxVpnFeature()I

    move-result v13

    const/4 v14, 0x1

    if-lt v13, v14, :cond_1

    .line 2375
    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;-><init>(Landroid/content/Context;)V

    .line 2376
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "enterprise_premium_vpn_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2377
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "enterprise_premium_vpn_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;-><init>(Landroid/content/Context;)V

    .line 2380
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "knox_vpn_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2381
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "knox_vpn_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2391
    :cond_1
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v11

    .line 2392
    .local v11, "versionInfo":Landroid/os/Bundle;
    const-string v13, "2.0"

    const-string/jumbo v14, "version"

    invoke-virtual {v11, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2393
    const/4 v4, 0x1

    .line 2394
    .local v4, "enabledContainer":Z
    const/4 v13, 0x1

    if-ne v13, v4, :cond_2

    .line 2395
    new-instance v8, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V

    .line 2396
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "mum_container_rcp_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2397
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "mum_container_rcp_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    .end local v4    # "enabledContainer":Z
    :cond_2
    new-instance v8, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/certificate/CertificatePolicy;-><init>(Landroid/content/Context;)V

    .line 2402
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v14, "certificate_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2403
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v14, "certificate_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2406
    new-instance v8, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;-><init>(Landroid/content/Context;)V

    .line 2407
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v14, "apn_settings_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2408
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v14, "apn_settings_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    new-instance v8, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/browser/BrowserPolicy;-><init>(Landroid/content/Context;)V

    .line 2411
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v14, "browser_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2412
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v14, "browser_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2417
    new-instance v8, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/datetime/DateTimePolicy;-><init>(Landroid/content/Context;)V

    .line 2418
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "date_time_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2419
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "date_time_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2421
    new-instance v8, Lcom/android/server/enterprise/spd/SPDControlPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/spd/SPDControlPolicy;-><init>(Landroid/content/Context;)V

    .line 2422
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "spd_control_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2423
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "spd_control_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2425
    new-instance v8, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 2426
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "kioskmode"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2427
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "kioskmode"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2429
    new-instance v8, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;-><init>(Landroid/content/Context;)V

    .line 2430
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v14, "apppermission_control_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2431
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v14, "apppermission_control_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    new-instance v8, Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 2435
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "ldap_account_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2436
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "ldap_account_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2438
    new-instance v8, Lcom/android/server/enterprise/lso/LSOService;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/lso/LSOService;-><init>(Landroid/content/Context;)V

    .line 2439
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    invoke-static {}, Lcom/android/server/enterprise/lso/LSOService;->getServiceName()Ljava/lang/String;

    move-result-object v14

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2440
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-static {}, Lcom/android/server/enterprise/lso/LSOService;->getServiceName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2442
    new-instance v8, Lcom/android/server/enterprise/geofencing/GeofenceService;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/geofencing/GeofenceService;-><init>(Landroid/content/Context;)V

    .line 2443
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "geofencing"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2444
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "geofencing"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2446
    new-instance v8, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 2447
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "device_account_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2448
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "device_account_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    new-instance v8, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;-><init>(Landroid/content/Context;)V

    .line 2451
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "dualsim_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2452
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "dualsim_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2456
    new-instance v8, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;-><init>(Landroid/content/Context;)V

    .line 2457
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "smartcard_email_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2458
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "smartcard_email_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2460
    new-instance v8, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;-><init>(Landroid/content/Context;)V

    .line 2461
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "smartcard_vpn_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2462
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "smartcard_vpn_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    new-instance v8, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;-><init>(Landroid/content/Context;)V

    .line 2465
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "smartcard_browser_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2466
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "smartcard_browser_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2468
    new-instance v8, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;-><init>(Landroid/content/Context;)V

    .line 2469
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "smartcard_lockscreen_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2470
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "smartcard_lockscreen_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2472
    new-instance v8, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;-><init>(Landroid/content/Context;)V

    .line 2473
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "smartcard_access_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2474
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "smartcard_access_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2477
    new-instance v8, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;-><init>(Landroid/content/Context;)V

    .line 2478
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v14, "bluetooth_secure_mode_policy"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2479
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v14, "bluetooth_secure_mode_policy"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2482
    new-instance v8, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;-><init>(Landroid/content/Context;)V

    .line 2483
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "knox_pinpad_service"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2484
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "knox_pinpad_service"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2488
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_4
    const/4 v13, 0x3

    if-gt v7, v13, :cond_5

    .line 2489
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sec.clipboard"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2490
    .local v10, "sn":Ljava/lang/String;
    new-instance v13, Lcom/android/server/clipboard/ClipboardService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2492
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sec.clipboardEx"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object v10

    .line 2488
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2242
    .end local v1    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v7    # "i":I
    .end local v10    # "sn":Ljava/lang/String;
    .end local v11    # "versionInfo":Landroid/os/Bundle;
    .end local v12    # "vpnService":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    .restart local v6    # "enabledSSO":Z
    :cond_3
    :try_start_a
    const-string v13, "EnterpriseDeviceManagerService"

    const-string v14, "MDM is enabled, but SSO is not enabled"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    move-object v9, v8

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    goto/16 :goto_0

    .line 2252
    .restart local v3    # "enabledCEP":Z
    :cond_4
    :try_start_b
    const-string v13, "EnterpriseDeviceManagerService"

    const-string v14, "MDM is enabled, but CEP is not enabled"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_1

    .line 2283
    .end local v3    # "enabledCEP":Z
    :catch_0
    move-exception v2

    move-object v8, v9

    .line 2284
    .end local v6    # "enabledSSO":Z
    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .local v2, "e":Ljava/lang/Throwable;
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :goto_5
    const-string v13, "EnterpriseDeviceManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failure creating Policy services"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 2263
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v3    # "enabledCEP":Z
    .restart local v6    # "enabledSSO":Z
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :catch_1
    move-exception v2

    move-object v8, v9

    .line 2264
    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :goto_6
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    move-object v9, v8

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    goto/16 :goto_2

    .line 2498
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "enabledCEP":Z
    .end local v6    # "enabledSSO":Z
    .end local v9    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v1    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .restart local v7    # "i":I
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v11    # "versionInfo":Landroid/os/Bundle;
    .restart local v12    # "vpnService":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    :cond_5
    :try_start_d
    new-instance v8, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v13}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;-><init>(Landroid/content/Context;)V

    .line 2499
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v14, "multi_user_manager_service"

    move-object v0, v8

    check-cast v0, Landroid/os/IBinder;

    move-object v13, v0

    invoke-static {v14, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2500
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v14, "multi_user_manager_service"

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    .line 2507
    .end local v1    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v7    # "i":I
    .end local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .end local v11    # "versionInfo":Landroid/os/Bundle;
    .end local v12    # "vpnService":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    :goto_7
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServicesAdded:Z

    .line 2508
    return-void

    .line 2502
    :catch_2
    move-exception v2

    .line 2503
    .local v2, "e":Ljava/lang/Throwable;
    const-string v13, "EnterpriseDeviceManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failure creating Policy services"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 2283
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v8    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    :catch_3
    move-exception v2

    goto :goto_5

    .line 2263
    .restart local v3    # "enabledCEP":Z
    .restart local v6    # "enabledSSO":Z
    :catch_4
    move-exception v2

    goto :goto_6
.end method

.method private checkAdminExistsInELMDB(Ljava/lang/String;)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1988
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1990
    .local v4, "ident":J
    :try_start_0
    const-string/jumbo v9, "enterprise_license_policy"

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 1991
    .local v8, "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    if-eqz v8, :cond_1

    .line 1992
    invoke-virtual {v8}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v7

    .line 1993
    .local v7, "list":[Landroid/app/enterprise/license/LicenseInfo;
    if-eqz v7, :cond_1

    .line 1994
    move-object v0, v7

    .local v0, "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v3, v0, v2

    .line 1995
    .local v3, "info":Landroid/app/enterprise/license/LicenseInfo;
    invoke-virtual {v3}, Landroid/app/enterprise/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_0

    .line 1996
    const/4 v9, 0x1

    .line 2004
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2007
    .end local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v2    # "i$":I
    .end local v3    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .end local v6    # "len$":I
    .end local v7    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v8    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :goto_1
    return v9

    .line 1994
    .restart local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v2    # "i$":I
    .restart local v3    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "len$":I
    .restart local v7    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v8    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2004
    .end local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v2    # "i$":I
    .end local v3    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .end local v6    # "len$":I
    .end local v7    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2007
    .end local v8    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    .line 2001
    :catch_0
    move-exception v1

    .line 2002
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkAdminExistsInELMDB Ex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2004
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method private checkCallerIsUMC()Z
    .locals 6

    .prologue
    .line 3149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3151
    .local v1, "uid":I
    const/4 v2, -0x1

    .line 3153
    .local v2, "umcuid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3158
    :goto_0
    if-ne v1, v2, :cond_0

    .line 3160
    const/4 v3, 0x1

    .line 3163
    :goto_1
    return v3

    .line 3154
    :catch_0
    move-exception v0

    .line 3155
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 3163
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private checkContainerOwnerShip(Landroid/app/enterprise/ContextInfo;)V
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/16 v5, 0x64

    .line 798
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 800
    .local v3, "userId":I
    if-ge v3, v5, :cond_1

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-ge v4, v5, :cond_1

    .line 816
    :cond_0
    return-void

    .line 804
    :cond_1
    move v0, v3

    .line 806
    .local v0, "containerId":I
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-lt v4, v5, :cond_2

    .line 807
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 810
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 811
    .local v2, "uid":I
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 813
    .local v1, "ownerUid":I
    if-eq v1, v2, :cond_0

    .line 814
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin doesn\'t own container uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ContextInfo.uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private checkContainerOwnerShipForUMC(Landroid/app/enterprise/ContextInfo;)V
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/16 v4, 0x64

    .line 819
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 821
    .local v2, "userId":I
    if-ge v2, v4, :cond_1

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-ge v3, v4, :cond_1

    .line 836
    :cond_0
    return-void

    .line 825
    :cond_1
    move v0, v2

    .line 827
    .local v0, "containerId":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-lt v3, v4, :cond_2

    .line 828
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 831
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 833
    .local v1, "ownerUid":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v1, v3, :cond_0

    .line 834
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin doesn\'t own container id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ContextInfo.uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private checkKnoxCustomBootAnimEnabled()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3733
    new-instance v1, Ljava/io/File;

    const-string v3, "/efs/knoxcustom"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3734
    .local v1, "knoxCustomBootEnableDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/knoxcustom/KnoxCustomBootEnable.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3735
    .local v2, "knoxCustomBootEnableProperty":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3736
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "KnoxCustom Boot Property exists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3737
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/b2b/BootFileInfo.txt"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3738
    .local v0, "KnoxCustomBootingContents":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3739
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "KnoxCustom BootFileInfo does not exists. B2C"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3740
    invoke-virtual {v1, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 3741
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3748
    .end local v0    # "KnoxCustomBootingContents":Ljava/io/File;
    :goto_0
    return-void

    .line 3743
    .restart local v0    # "KnoxCustomBootingContents":Ljava/io/File;
    :cond_0
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "KnoxCustom BootFileInfo exists. B2B"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3746
    .end local v0    # "KnoxCustomBootingContents":Ljava/io/File;
    :cond_1
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "KnoxCustom Boot Property does not exists. B2C"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkProxyAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3182
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v7, "permissions"

    aput-object v7, v0, v9

    .line 3185
    .local v0, "columns":[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3186
    .local v4, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v7, "proxyUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3187
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "PROXY_ADMIN_INFO"

    invoke-virtual {v7, v10, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 3188
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3189
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string/jumbo v10, "permissions"

    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3190
    .local v5, "serializedPerms":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3191
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3192
    .local v3, "perms":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3193
    .local v2, "grantedPermissions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    .line 3205
    .end local v2    # "grantedPermissions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "perms":[Ljava/lang/String;
    .end local v5    # "serializedPerms":Ljava/lang/String;
    :goto_0
    return v7

    .line 3199
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-interface {v7, p2, v10}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    move v7, v8

    .line 3200
    goto :goto_0

    .line 3201
    :catch_0
    move-exception v1

    .line 3202
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "EnterpriseDeviceManagerService"

    const-string/jumbo v8, "could not check calling permission"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v7, v9

    .line 3205
    goto :goto_0
.end method

.method private cleanGenericTableOnUserRemoved(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 504
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v2, "userID"

    aput-object v2, v0, v3

    .line 507
    .local v0, "sColumns":[Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 510
    .local v1, "sValues":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "generic"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 512
    return-void
.end method

.method public static comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1964
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 1965
    :cond_0
    const-string v8, "EnterpriseDeviceManagerService"

    const-string v9, "Invalid arguments"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    :cond_1
    :goto_0
    return v7

    .line 1968
    :cond_2
    const/4 v4, 0x0

    .line 1970
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1975
    :goto_1
    if-eqz v4, :cond_1

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_1

    .line 1976
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1977
    .local v6, "signs":[Landroid/content/pm/Signature;
    move-object v0, v6

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 1978
    .local v5, "sign":Landroid/content/pm/Signature;
    if-eqz v5, :cond_3

    .line 1979
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1980
    const/4 v7, 0x1

    goto :goto_0

    .line 1971
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "sign":Landroid/content/pm/Signature;
    .end local v6    # "signs":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 1972
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1977
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "sign":Landroid/content/pm/Signature;
    .restart local v6    # "signs":[Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1928
    const/4 v4, 0x0

    .line 1930
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android"

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1935
    if-nez v4, :cond_0

    .line 1936
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Could not Read package info"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    :cond_0
    if-eqz v4, :cond_1

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_1

    if-eqz p1, :cond_1

    .line 1939
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1940
    .local v5, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v7, v0, v2

    .line 1941
    .local v7, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1940
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1931
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v7    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 1932
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1954
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_1
    return v8

    .line 1943
    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1944
    .local v6, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v7, v0, v2

    .line 1945
    .restart local v7    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1944
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1948
    .end local v7    # "sig":Landroid/content/pm/Signature;
    :cond_3
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1949
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public static createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 2806
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating context as user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    const/4 v0, 0x0

    .line 2809
    .local v0, "contextAsUser":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2811
    .local v2, "token":J
    :try_start_0
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2816
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2818
    :goto_0
    return-object v0

    .line 2813
    :catch_0
    move-exception v1

    .line 2814
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be found! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2816
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private deactivateProxyAdminsForOwnerAdmin(Landroid/content/ComponentName;I)V
    .locals 13
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerUid"    # I

    .prologue
    .line 3069
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3070
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    const/16 v10, 0x9

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v1, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "proxyUid"

    aput-object v11, v1, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "proxyType"

    aput-object v11, v1, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "componentName"

    aput-object v11, v1, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "proxyComponentName"

    aput-object v11, v1, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "label"

    aput-object v11, v1, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "icon"

    aput-object v11, v1, v10

    const/4 v10, 0x7

    const-string/jumbo v11, "description"

    aput-object v11, v1, v10

    const/16 v10, 0x8

    const-string/jumbo v11, "permissions"

    aput-object v11, v1, v10

    .line 3077
    .local v1, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "PROXY_ADMIN_INFO"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v1, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 3081
    .local v9, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3082
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "proxyUid"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3083
    .local v7, "proxyUid":I
    const-string v10, "adminUid"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3084
    .local v8, "uid":I
    const-string/jumbo v10, "componentName"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3085
    .local v0, "adminName":Ljava/lang/String;
    const-string/jumbo v10, "proxyComponentName"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3086
    .local v6, "proxyName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-ne v8, p2, :cond_0

    .line 3088
    :try_start_0
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3090
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeProxyAdmin(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3091
    :catch_0
    move-exception v3

    .line 3092
    .local v3, "e":Landroid/os/RemoteException;
    const-string v10, "EnterpriseDeviceManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "deactivateAdminForUser:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3096
    .end local v0    # "adminName":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "proxyName":Ljava/lang/String;
    .end local v7    # "proxyUid":I
    .end local v8    # "uid":I
    :cond_1
    return-void
.end method

.method private enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .param p3, "userPolicy"    # Z
    .param p4, "checkActiveAdmin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 672
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 673
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 675
    .local v6, "pid":I
    if-nez p1, :cond_0

    .line 677
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p1, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 681
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 684
    .local v3, "contextUid":I
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, "caller":Ljava/lang/String;
    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_1

    sget v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    if-eq v6, v8, :cond_2

    :cond_1
    if-eqz v2, :cond_4

    const-string v8, "android.uid.system:1000"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 687
    :cond_2
    if-eqz p3, :cond_3

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v9, 0x64

    if-lt v8, v9, :cond_3

    .line 688
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p1, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 794
    :cond_3
    :goto_0
    return-object p1

    .line 694
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_4
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 695
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Operation not supported on profile"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 699
    :cond_5
    if-eqz p4, :cond_6

    .line 700
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 702
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_6

    .line 703
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No active admin owned by uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 708
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_6
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 710
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceUMCSignature()V

    .line 713
    if-eqz p3, :cond_7

    .line 714
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkContainerOwnerShipForUMC(Landroid/app/enterprise/ContextInfo;)V

    .line 717
    :cond_7
    if-eqz p2, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkProxyAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 719
    if-eqz p3, :cond_3

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v9, 0x64

    if-lt v8, v9, :cond_3

    .line 720
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p1, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    goto :goto_0

    .line 727
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_8
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v8, v7, :cond_a

    .line 728
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAuthorizedAdminUid(I)I

    move-result v1

    .line 729
    .local v1, "adminUid":I
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v8, v1, :cond_a

    .line 731
    if-eqz p3, :cond_9

    .line 732
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkContainerOwnerShipForUMC(Landroid/app/enterprise/ContextInfo;)V

    .line 735
    :cond_9
    if-eqz p2, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkProxyAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 737
    if-eqz p3, :cond_3

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v9, 0x64

    if-lt v8, v9, :cond_3

    .line 738
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p1, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    goto/16 :goto_0

    .line 746
    .end local v1    # "adminUid":I
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_a
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v8, v7, :cond_b

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v8

    if-eq v7, v8, :cond_b

    .line 747
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ContextInfo UID voilation info is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but caller is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 752
    :cond_b
    if-eqz p3, :cond_c

    .line 753
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkContainerOwnerShip(Landroid/app/enterprise/ContextInfo;)V

    .line 756
    :cond_c
    const/4 v5, 0x0

    .line 759
    .local v5, "permissionGranted":Z
    if-eqz p2, :cond_d

    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, p2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_d

    .line 761
    or-int/lit8 v5, v5, 0x1

    .line 763
    .end local v5    # "permissionGranted":Z
    :cond_d
    const-string v8, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "is permission granted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_1
    if-nez v5, :cond_e

    .line 779
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin  does not have "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 773
    :catch_0
    move-exception v4

    .line 775
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "EnterpriseDeviceManagerService"

    const-string/jumbo v9, "could not check calling permission"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 788
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_e
    if-eqz p3, :cond_f

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v9, 0x64

    if-lt v8, v9, :cond_f

    .line 789
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p1, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    goto/16 :goto_0

    .line 792
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_f
    const-string v8, "EnterpriseDeviceManagerService"

    const-string/jumbo v9, "enforceActiveAdminDualPermission >>>"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private enforceOwnerOnlyAndActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Landroid/app/enterprise/ContextInfo;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .param p3, "checkActiveAdmin"    # Z

    .prologue
    const/4 v3, 0x0

    .line 643
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 645
    .local v1, "userId":I
    if-nez p1, :cond_0

    .line 647
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 650
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    .line 652
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 654
    .local v0, "proxyAdminUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->verifyActivePermissions(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 655
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Operation not supported, Device permission not present"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 659
    :cond_1
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    .line 660
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 667
    .end local v0    # "proxyAdminUid":I
    :goto_0
    return-object v2

    .line 661
    :cond_2
    if-nez v1, :cond_3

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-lez v2, :cond_4

    .line 664
    :cond_3
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Operation supported only on owner space"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 667
    :cond_4
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    move-result-object v2

    goto :goto_0
.end method

.method private enforceUMCSignature()V
    .locals 6

    .prologue
    .line 3168
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.enterprise.knox.cloudmdm.smdms"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3170
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v2

    .line 3171
    .local v2, "signatureVerified":Z
    if-nez v2, :cond_0

    .line 3173
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Caller is not real UMC. Signature Verification failed."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3175
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "signatureVerified":Z
    :catch_0
    move-exception v0

    .line 3176
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "package not found"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3178
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .locals 12
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1227
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1228
    .local v5, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1230
    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, v5, v9, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 1232
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1233
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_3

    .line 1235
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v4

    .line 1236
    .local v4, "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1237
    .local v3, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v3}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1239
    :try_start_0
    new-instance v8, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1258
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v4    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :goto_0
    return-object v8

    .line 1240
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v4    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v8, v10

    .line 1242
    goto :goto_0

    .line 1243
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v8, v10

    .line 1245
    goto :goto_0

    .line 1249
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1252
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :cond_3
    :try_start_1
    new-instance v9, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-direct {v9, v11, v8}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v8, v9

    goto :goto_0

    .line 1253
    :catch_2
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v8, v10

    .line 1255
    goto :goto_0

    .line 1256
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v8, v10

    .line 1258
    goto :goto_0
.end method

.method private getActiveAdminLocked(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .locals 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 948
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 949
    .local v0, "auxAdm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 950
    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    .end local v0    # "auxAdm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .locals 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 958
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 959
    .local v0, "auxAdm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 961
    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin found on user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    .end local v0    # "auxAdm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAdminNameForUserId(I)Landroid/content/ComponentName;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 3385
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 3387
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3388
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3389
    .local v0, "uid":J
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 3392
    .end local v0    # "uid":J
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getAuthorizedAdminUid(I)I
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 3616
    const-string v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "getAuthorizedAdminUid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3617
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3618
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string v2, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3619
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v4, "adminUid"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3620
    .local v0, "result":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 3621
    const-string v2, "adminUid"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3623
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I
    .locals 5
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 839
    if-nez p0, :cond_0

    .line 840
    new-instance p0, Landroid/app/enterprise/ContextInfo;

    .end local p0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 843
    .restart local p0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    iget v2, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    .line 844
    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCallingOrCurrentUserId(): move: cxtInfo.mContainerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget v2, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 858
    :goto_0
    return v2

    .line 848
    :cond_1
    sget v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 849
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 851
    .local v0, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 853
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 858
    .end local v0    # "token":J
    :cond_2
    iget v2, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    goto :goto_0
.end method

.method public static getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I
    .locals 2
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 863
    if-nez p0, :cond_0

    .line 864
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 871
    :goto_0
    return v0

    .line 867
    :cond_0
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 868
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v1, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    goto :goto_0

    .line 871
    :cond_1
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .locals 1

    .prologue
    .line 2035
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    return-object v0
.end method

.method public static getKioskOrOwnerUserId()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 934
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 936
    .local v2, "token":J
    :try_start_0
    const-string/jumbo v4, "persona"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 938
    .local v0, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 939
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PersonaInfo;

    iget v1, v1, Landroid/content/pm/PersonaInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 944
    :goto_0
    return v1

    .line 942
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private getKnoxVpnFeature()I
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->KNOXVPN_FEATURE:I

    .line 355
    iget v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->KNOXVPN_FEATURE:I

    return v0
.end method

.method public static final getPolicyService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "policyService"    # Ljava/lang/String;

    .prologue
    .line 335
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I
    .locals 6
    .param p0, "edmStorageProvider"    # Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .param p1, "proxyUid"    # I

    .prologue
    const/4 v5, 0x0

    .line 3328
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v0, v5

    .line 3331
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3332
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "proxyUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3333
    const-string v3, "PROXY_ADMIN_INFO"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 3336
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3337
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "adminUid"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3340
    .end local p1    # "proxyUid":I
    :cond_0
    return p1
.end method

.method private handleDowngrade()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2011
    const-string v4, "EnterpriseDeviceManagerService"

    const-string/jumbo v5, "handleDowngrade: Checking Downgrade..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    const/4 v1, 0x0

    .line 2013
    .local v1, "edmDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "enterprise.db"

    .line 2015
    .local v2, "edmDBPath":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2022
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 2023
    .local v3, "oldVersion":I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2025
    const/4 v4, 0x7

    if-le v3, v4, :cond_0

    .line 2026
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Current Platform Version is older than the previous DB version"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Deleting EDM Databases - enterprise.db and dmapprmgr.db"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/enterprise.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2029
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/dmappmgr.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2030
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 2032
    :cond_0
    return-void

    .line 2017
    .end local v3    # "oldVersion":I
    :catch_0
    move-exception v0

    .line 2019
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "could not open or create databse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initServices()V
    .locals 4

    .prologue
    .line 2511
    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2514
    .local v1, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2515
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v2}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V

    goto :goto_0

    .line 2518
    .end local v1    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_1
    return-void
.end method

.method private isFirmwareChanged()Z
    .locals 4

    .prologue
    .line 2603
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PlatformSoftwareVersion"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2604
    .local v0, "swVer":Ljava/lang/String;
    const-string/jumbo v2, "ro.build.fingerprint"

    const-string/jumbo v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2605
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 2606
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2607
    :cond_1
    const/4 v2, 0x1

    .line 2609
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 907
    if-nez p0, :cond_0

    .line 909
    new-instance p0, Landroid/app/enterprise/ContextInfo;

    .end local p0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 912
    .restart local p0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    iget v4, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 913
    .local v1, "userId":I
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isKioskOrOwnerUserId(): userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 917
    .local v2, "token":J
    :try_start_0
    const-string/jumbo v4, "persona"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 919
    .local v0, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 921
    :cond_1
    const/4 v4, 0x1

    .line 924
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 926
    :goto_0
    return v4

    .line 924
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 926
    const/4 v4, 0x0

    goto :goto_0

    .line 924
    .end local v0    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public static isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, 0x0

    .line 879
    if-nez p1, :cond_0

    .line 881
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p1, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 884
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 885
    .local v3, "userId":I
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isManagedProfileUser(): userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 889
    .local v0, "ident":J
    :try_start_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 890
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 891
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_2

    .line 892
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 899
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v5

    .line 894
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 899
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "um":Landroid/os/UserManager;
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private isMdmAdminPresentInternal()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 2712
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v5

    .line 2713
    .local v5, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2714
    .local v4, "storedUid":I
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2715
    .local v0, "compName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    sget-object v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2719
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2721
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v8, "MDM Admin Found"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2741
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "storedUid":I
    .end local v5    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return v6

    .line 2725
    .restart local v0    # "compName":Landroid/content/ComponentName;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "storedUid":I
    .restart local v5    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2728
    .local v3, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 2729
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v8, "MDM Admin Found"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2730
    goto :goto_0

    .line 2733
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v3    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "storedUid":I
    :cond_2
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v8, "MDM Admin Not Found"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2734
    const/4 v6, 0x0

    goto :goto_0

    .line 2736
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 2737
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isMdmAdminPresentInternal EX"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2741
    goto :goto_0
.end method

.method private static isPackageInstalled(Ljava/lang/String;I)Z
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3711
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 3712
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3713
    .local v4, "token":J
    if-eqz v2, :cond_0

    .line 3715
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v2, p0, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3716
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    .line 3717
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isPackageInstalled() : package present. application : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3718
    const/4 v3, 0x1

    .line 3726
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3729
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v3

    .line 3720
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :try_start_1
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isPackageInstalled() : package is not present. application : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3726
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3723
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 3724
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v7, "Exception in isPackageInstalled()"

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3726
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isPermissionGranted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3294
    const-string v4, "apppermission_control_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    .line 3296
    .local v1, "policy":Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3298
    .local v2, "token":J
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v4, p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getApplicationGrantedPermissions(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3300
    .local v0, "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 3301
    const/4 v4, 0x1

    .line 3306
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3308
    .end local v0    # "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v4

    .line 3306
    .restart local v0    # "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3308
    .end local v0    # "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 3303
    :catch_0
    move-exception v4

    .line 3306
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public static isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1903
    if-nez p1, :cond_0

    move v2, v3

    .line 1924
    :goto_0
    return v2

    .line 1906
    :cond_0
    const/4 v1, 0x0

    .line 1908
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1912
    :goto_1
    if-nez v1, :cond_1

    .line 1913
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldnt get Package Info for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1914
    goto :goto_0

    .line 1909
    :catch_0
    move-exception v0

    .line 1910
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1917
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v2, 0x0

    .line 1919
    .local v2, "ret":Z
    :try_start_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 1920
    :catch_1
    move-exception v0

    .line 1921
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v3

    .line 1922
    goto :goto_0
.end method

.method private loadActiveAdmins()V
    .locals 26

    .prologue
    .line 1309
    monitor-enter p0

    .line 1310
    :try_start_0
    const-string v22, "EnterpriseDeviceManagerService"

    const-string/jumbo v23, "loadActiveAdmins"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v19

    .line 1312
    .local v19, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1313
    .local v16, "storedUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1314
    .local v7, "compName":Landroid/content/ComponentName;
    if-eqz v7, :cond_0

    .line 1319
    :try_start_1
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 1320
    .local v5, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v5, :cond_3

    .line 1321
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1322
    .local v8, "currentUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1324
    move/from16 v0, v16

    if-ne v8, v0, :cond_1

    .line 1326
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v22, v0

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v22

    if-nez v22, :cond_0

    .line 1328
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    .line 1329
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1331
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Admin invalid on DPM, removing from EDM:   "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", uid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1335
    :catch_0
    move-exception v10

    .line 1336
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1378
    .end local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v8    # "currentUid":I
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 1379
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception occured while loading active admins "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1434
    .end local v7    # "compName":Landroid/content/ComponentName;
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "storedUid":I
    .end local v19    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v22

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v22

    .line 1339
    .restart local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v7    # "compName":Landroid/content/ComponentName;
    .restart local v8    # "currentUid":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v16    # "storedUid":I
    .restart local v19    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "ADMIN_INFO"

    const-string v24, "adminUid"

    move-object/from16 v0, v22

    move/from16 v1, v16

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1342
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Admin "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", updated with new currentUid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", old storedUid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1346
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v22, v0

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v22

    if-nez v22, :cond_0

    .line 1349
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    .line 1350
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1351
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Admin invalid on DPM, removing from EDM: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", uid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1355
    :catch_2
    move-exception v10

    .line 1356
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_7
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1359
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1361
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    .line 1362
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1364
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed updating uid, removed: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", uid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1371
    .end local v8    # "currentUid":I
    :cond_3
    new-instance v22, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    .line 1372
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1374
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Admin loaded null, removed: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", uid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1384
    .end local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v7    # "compName":Landroid/content/ComponentName;
    .end local v16    # "storedUid":I
    :cond_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "user"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    .line 1385
    .local v20, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v21

    .line 1386
    .local v21, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/UserInfo;

    .line 1387
    .local v17, "uf":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminsInfo(I)Ljava/util/List;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v11

    .line 1389
    .local v11, "edmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    const/4 v9, 0x0

    .line 1391
    .local v9, "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v9

    .line 1396
    :goto_1
    if-eqz v9, :cond_5

    .line 1397
    if-eqz v11, :cond_6

    :try_start_a
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1398
    :cond_6
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Adding all admins from DPM for user : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1400
    .local v6, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 1401
    .restart local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v5, :cond_7

    .line 1402
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Adding missing admin to EDM : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    .line 1404
    .local v18, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v18

    move-object/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addAdmin(ILjava/lang/String;ZI)Z

    goto :goto_2

    .line 1392
    .end local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v18    # "uid":I
    :catch_3
    move-exception v10

    .line 1393
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to get active admins from dpm "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1411
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_8
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_9
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1412
    .restart local v6    # "cn":Landroid/content/ComponentName;
    const/4 v12, 0x0

    .line 1413
    .local v12, "found":Z
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 1414
    .restart local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1415
    const/4 v12, 0x1

    .line 1419
    .end local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_b
    if-nez v12, :cond_9

    .line 1420
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 1421
    .restart local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v5, :cond_9

    .line 1422
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Adding missing admin to EDM : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    .line 1424
    .restart local v18    # "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v18

    move-object/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addAdmin(ILjava/lang/String;ZI)Z

    goto/16 :goto_3

    .line 1434
    .end local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v9    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v11    # "edmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .end local v12    # "found":Z
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "uf":Landroid/content/pm/UserInfo;
    .end local v18    # "uid":I
    :cond_c
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1435
    return-void
.end method

.method private migrateEcppDatabse(Landroid/content/ComponentName;IJ)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "newContainerId"    # I
    .param p3, "newContainerAdminUid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3407
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "Migrating ECPP Database data on Device after FOTA update"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EcppMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EcppMigrationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/EcppMigrationManager;->migrateEcppDB(Landroid/content/ComponentName;IJ)Z

    move-result v0

    return v0
.end method

.method private migrateEnterpriseDatabase(IZ)J
    .locals 2
    .param p1, "newContainerId"    # I
    .param p2, "isB2B"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3423
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "Migrating Enterprise data on Device after FOTA update"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrateEnterpriseDB(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private removeActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1105
    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1114
    :goto_0
    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "Admin removed from DPM!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    return-void

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to remove action admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1111
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 1112
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to remove action admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeActiveAdminDelayed(Landroid/content/ComponentName;I)V
    .locals 21
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1125
    monitor-enter p0

    .line 1126
    :try_start_0
    const-string v18, "EnterpriseDeviceManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "removeActiveAdminDelayed - adminReceiver: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", userId: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v4

    .line 1129
    .local v4, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v4, :cond_0

    .line 1130
    monitor-exit p0

    .line 1223
    :goto_0
    return-void

    .line 1132
    :cond_0
    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    .line 1133
    .local v17, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1134
    .local v5, "callingUid":I
    const-string v18, "EnterpriseDeviceManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Admin uid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", calling uid: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    move/from16 v0, v17

    if-eq v0, v5, :cond_1

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "android.permission.BIND_DEVICE_ADMIN"

    const-string v20, "Only system or itself can remove an EDM admin"

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v6

    .line 1146
    .local v6, "canRemove":Z
    if-nez v6, :cond_2

    .line 1147
    const-string v18, "EnterpriseDeviceManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Admin "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cannot be removed!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    monitor-exit p0

    goto/16 :goto_0

    .line 1222
    .end local v4    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v5    # "callingUid":I
    .end local v6    # "canRemove":Z
    .end local v17    # "uid":I
    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 1151
    .restart local v4    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v5    # "callingUid":I
    .restart local v6    # "canRemove":Z
    .restart local v17    # "uid":I
    :cond_2
    :try_start_1
    sget-object v18, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->cleanUpConstrainedState(I)V

    .line 1154
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1157
    .local v10, "ident":J
    sget-object v18, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1159
    .local v15, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :try_start_2
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onPreAdminRemoval(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1161
    :catch_0
    move-exception v8

    .line 1162
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v18, "EnterpriseDeviceManagerService"

    const-string/jumbo v19, "removeActiveAdminDelayed Ex1:"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1167
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v15    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    const-string v19, "MyKNOXAdmin"

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1168
    .local v14, "myKNOXAdminPkg":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    const-string v19, "MyKNOXAdmin"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1175
    :cond_4
    :try_start_4
    const-string v18, "EnterpriseDeviceManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Removing Admin with uid"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeAdminFromDatabase(I)Z

    .line 1181
    const-string/jumbo v18, "restriction_policy"

    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1182
    .local v16, "restriction":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v16, :cond_5

    .line 1183
    new-instance v7, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1184
    .local v7, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Landroid/app/enterprise/ContextInfo;)Z

    .line 1185
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    .line 1188
    .end local v7    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_5
    const-string/jumbo v18, "knoxcustom"

    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1189
    .local v13, "knoxcustom":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-eqz v13, :cond_6

    .line 1190
    invoke-virtual {v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getForceAutoStartUpState()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 1191
    invoke-virtual {v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getForceAutoStartUpStateFromDB()Z

    move-result v18

    if-nez v18, :cond_6

    .line 1193
    const-string v18, "EnterpriseDeviceManagerService"

    const-string/jumbo v19, "getForceAutoStartUpStateFromDB is false, so removing param data"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setForceAutoStartUpState(I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1204
    .end local v13    # "knoxcustom":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .end local v16    # "restriction":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    :cond_6
    :goto_2
    :try_start_5
    sget-object v18, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1206
    .restart local v15    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :try_start_6
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 1208
    :catch_1
    move-exception v8

    .line 1209
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v18, "EnterpriseDeviceManagerService"

    const-string/jumbo v19, "removeActiveAdminDelayed Ex2:"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1199
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v15    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :catch_2
    move-exception v8

    .line 1200
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v18, "EnterpriseDeviceManagerService"

    const-string v19, "FATAL: Admin failed to remove lets try during next boot up"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1213
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v18, "EnterpriseDeviceManagerService"

    const-string/jumbo v19, "delete admin, Send intent to Gear for deregister"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1215
    .local v12, "intent":Landroid/content/Intent;
    const-string v18, "android.accessory.device.action.DEACTIVE_MDM"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1218
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1219
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForOwnerAdmin(Landroid/content/ComponentName;I)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ADMIN_REMOVED"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1222
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method private runAdminUpdate()V
    .locals 2

    .prologue
    .line 1748
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1749
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1756
    :cond_0
    return-void
.end method

.method private selfUpdate()V
    .locals 18

    .prologue
    .line 1761
    const/4 v4, 0x0

    .line 1762
    .local v4, "adminsTemp":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1763
    .local v2, "activeComponent":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 1765
    .local v6, "apkFileTemp":Ljava/io/File;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1766
    :try_start_1
    sget-object v14, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    if-eqz v14, :cond_0

    .line 1767
    const-string v14, "EnterpriseDeviceManagerService"

    const-string/jumbo v15, "selfUpdate in progress"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    monitor-exit p0

    .line 1900
    :goto_0
    return-void

    .line 1771
    :cond_0
    const-string/jumbo v14, "self_update_admin_component"

    const-string v15, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1774
    .local v9, "cNames":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 1775
    const-string v14, "EnterpriseDeviceManagerService"

    const-string/jumbo v15, "nothing to selfUpdate"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    new-instance v14, Ljava/io/File;

    const-string v15, "/data/app/selfUpdateApks"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 1778
    monitor-exit p0

    goto :goto_0

    .line 1803
    .end local v9    # "cNames":Ljava/lang/String;
    :catchall_0
    move-exception v14

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1896
    :catch_0
    move-exception v12

    .line 1897
    .local v12, "e":Ljava/lang/Exception;
    :goto_2
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "Upgrade Admin Ex: "

    invoke-static {v14, v15, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1898
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1781
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v9    # "cNames":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v14, ";"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1783
    const/4 v14, 0x0

    aget-object v10, v4, v14

    .line 1785
    .local v10, "component":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 1786
    monitor-exit p0

    goto :goto_0

    .line 1788
    :cond_2
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1790
    if-nez v2, :cond_3

    .line 1791
    monitor-exit p0

    goto :goto_0

    .line 1793
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/data/app/selfUpdateApks/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".apk"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1796
    .local v11, "destFilePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1797
    .end local v6    # "apkFileTemp":Ljava/io/File;
    .local v7, "apkFileTemp":Ljava/io/File;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v14

    if-nez v14, :cond_5

    .line 1798
    :cond_4
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "Cannot read or is not a file : /data/app/selfUpdateApks/"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    monitor-exit p0

    move-object v6, v7

    .end local v7    # "apkFileTemp":Ljava/io/File;
    .restart local v6    # "apkFileTemp":Ljava/io/File;
    goto :goto_0

    .line 1802
    .end local v6    # "apkFileTemp":Ljava/io/File;
    .restart local v7    # "apkFileTemp":Ljava/io/File;
    :cond_5
    sput-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    .line 1803
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1804
    move-object v3, v4

    .line 1805
    .local v3, "admins":[Ljava/lang/String;
    move-object v5, v7

    .line 1809
    .local v5, "apkFile":Ljava/io/File;
    const/4 v14, 0x0

    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1814
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    const/4 v15, 0x0

    invoke-interface {v14, v2, v15}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1815
    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1817
    :try_start_7
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "Waiting..."

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    const-wide/16 v14, 0x1388

    invoke-virtual {v2, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1822
    :goto_4
    :try_start_8
    monitor-exit v2

    goto :goto_3

    :catchall_1
    move-exception v14

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v14
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 1896
    :catch_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "apkFileTemp":Ljava/io/File;
    .restart local v6    # "apkFileTemp":Ljava/io/File;
    goto/16 :goto_2

    .line 1819
    .end local v6    # "apkFileTemp":Ljava/io/File;
    .restart local v7    # "apkFileTemp":Ljava/io/File;
    :catch_2
    move-exception v12

    .line 1820
    .local v12, "e":Ljava/lang/InterruptedException;
    :try_start_a
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    .line 1824
    .end local v12    # "e":Ljava/lang/InterruptedException;
    :cond_6
    :try_start_b
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "Finished Waiting."

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    const-string v14, "application_policy"

    invoke-static {v14}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1832
    .local v8, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "Uninstall of old apk"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    const/4 v14, -0x1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplicationBySystem(ILjava/lang/String;Z)Z

    .line 1836
    const-string v14, "EnterpriseDeviceManagerService"

    const-string v15, "Install of new apk"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1838
    .local v13, "pm":Landroid/content/pm/PackageManager;
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    new-instance v15, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;[Ljava/lang/String;Ljava/io/File;)V

    const/16 v16, 0x10

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move-object v6, v7

    .line 1899
    .end local v7    # "apkFileTemp":Ljava/io/File;
    .restart local v6    # "apkFileTemp":Ljava/io/File;
    goto/16 :goto_0

    .line 1810
    .end local v6    # "apkFileTemp":Ljava/io/File;
    .end local v8    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "apkFileTemp":Ljava/io/File;
    :catch_3
    move-exception v14

    goto :goto_3

    .line 1811
    :catch_4
    move-exception v14

    goto :goto_3

    .line 1803
    .end local v3    # "admins":[Ljava/lang/String;
    .end local v5    # "apkFile":Ljava/io/File;
    :catchall_2
    move-exception v14

    move-object v6, v7

    .end local v7    # "apkFileTemp":Ljava/io/File;
    .restart local v6    # "apkFileTemp":Ljava/io/File;
    goto/16 :goto_1
.end method

.method private sendMigrationIntent(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 2574
    return-void
.end method

.method private verifyActivePermissions(ILjava/lang/String;)Z
    .locals 4
    .param p1, "proxyAdminUid"    # I
    .param p2, "requirePermission"    # Ljava/lang/String;

    .prologue
    .line 3314
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 3315
    .local v0, "adminInfo":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->isProxy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3317
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    .line 3319
    .local v1, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3320
    const/4 v2, 0x1

    .line 3323
    .end local v1    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public activateAdminForUser(Landroid/content/ComponentName;ZI)V
    .locals 20
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 2982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string/jumbo v17, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Activating proxy admin on user "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2985
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 2986
    .local v5, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v5, :cond_0

    .line 2987
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Bad admin: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 2990
    :cond_0
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v16

    if-eqz v16, :cond_1

    sget-object v16, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 2991
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V

    .line 2994
    :cond_1
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2995
    .local v15, "uid":I
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 2996
    .local v6, "compName":Landroid/content/ComponentName;
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Admin uid: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", Component name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2998
    const/4 v14, 0x2

    .line 2999
    .local v14, "retry":I
    const/4 v4, 0x0

    .line 3000
    .local v4, "activationStatus":Z
    monitor-enter p0

    .line 3001
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v10

    .line 3002
    .local v10, "ident":J
    const/4 v13, 0x1

    .line 3004
    .local v13, "ret":Z
    if-nez p2, :cond_3

    :try_start_1
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 3005
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Admin is already added"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3051
    :catch_0
    move-exception v7

    .line 3052
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3055
    :try_start_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3058
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v4, :cond_2

    .line 3059
    const-string v16, "EnterpriseDeviceManagerService"

    const-string v17, "Calling MSG_POST_ADMIN_ACTIVATION after Admin activation..."

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3060
    sget-object v16, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v16, :cond_2

    .line 3061
    sget-object v16, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    const/16 v17, 0x1

    const/16 v18, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v15, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    .line 3065
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3066
    return-void

    .line 3008
    :cond_3
    if-nez p2, :cond_4

    .line 3009
    :try_start_4
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Adding admin "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " to lists"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v16, v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v13

    .line 3017
    :cond_4
    if-nez v13, :cond_5

    .line 3018
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Removing admin "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " from lists"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3021
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Unable to activate admin"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3055
    :catchall_0
    move-exception v16

    :try_start_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16

    .line 3065
    .end local v10    # "ident":J
    .end local v13    # "ret":Z
    :catchall_1
    move-exception v16

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v16

    .line 3024
    .restart local v10    # "ident":J
    .restart local v13    # "ret":Z
    :cond_5
    :try_start_6
    sget-object v16, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 3025
    .local v12, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_1

    .line 3032
    .end local v12    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_6
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_2
    if-gt v8, v14, :cond_7

    .line 3033
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Attempt "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " to active admin in DPM"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 3035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 3036
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Admin sucessfully activated in DPM for user "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    const/4 v4, 0x1

    .line 3043
    :cond_7
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "EDM setActiveAdmin activationStatus -"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " for user - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    if-nez v4, :cond_9

    .line 3045
    const-string v16, "EnterpriseDeviceManagerService"

    const-string v17, "Started removing admin information..."

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    new-instance v16, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    .line 3047
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 3048
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "EDM - Admin activation failed for user -"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 3040
    :cond_8
    const-string v16, "EnterpriseDeviceManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Admin activation failed for user "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 3050
    :cond_9
    const-string v16, "EnterpriseDeviceManagerService"

    const-string v17, "Admin added to DPM!"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3055
    :try_start_7
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0
.end method

.method public activateDevicePermissions(Ljava/util/List;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3224
    .local p1, "devicePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    const-string/jumbo v12, "com.sec.enterprise.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS"

    invoke-virtual {p0, v9, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3228
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 3234
    .local v8, "proxyAdminUid":I
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3235
    new-instance v9, Ljava/lang/SecurityException;

    const-string v12, "Admin already present and active"

    invoke-direct {v9, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3238
    :cond_0
    const/4 v0, 0x0

    .line 3239
    .local v0, "adminInfo":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "adminInfo":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .restart local v0    # "adminInfo":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_7

    .line 3240
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 3241
    .local v3, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3243
    .local v5, "packageName":Ljava/lang/String;
    const-string v9, "application_policy"

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 3245
    .local v1, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v1, v5, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3246
    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed due to application is installed in device as user:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3247
    const/4 v9, 0x0

    .line 3283
    :goto_0
    return v9

    .line 3251
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3252
    .local v7, "permission":Ljava/lang/String;
    invoke-direct {p0, v7, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isPermissionGranted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 3253
    const/4 v9, 0x0

    goto :goto_0

    .line 3256
    :cond_3
    sget-object v9, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->CONTAINER_ALLOWED_DEVICE_PERMISSION_LIST:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3257
    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This permission cannot be set on device level from the container: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3258
    const/4 v9, 0x0

    goto :goto_0

    .line 3262
    .end local v7    # "permission":Ljava/lang/String;
    :cond_4
    const-string v9, "android.permission.sec.MDM_SECURITY"

    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3264
    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3265
    const-string/jumbo v9, "encrypted-storage"

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3266
    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add device permission: encrypted-storage, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x7

    invoke-virtual {v0, v13}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3269
    :cond_5
    const/16 v9, 0x14

    invoke-virtual {v0, v9}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3270
    const-string/jumbo v9, "require-storagecard-encryption"

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3271
    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add device permission: require-storagecard-encryption, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x14

    invoke-virtual {v0, v13}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3276
    :cond_6
    new-instance v6, Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v9

    invoke-direct {v6, v9, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 3279
    .local v6, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3280
    .local v10, "token":J
    invoke-virtual {p0, v6, v8, v3, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    .line 3281
    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v3, v9, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    .line 3282
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3283
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 3287
    .end local v1    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v10    # "token":J
    :cond_7
    new-instance v9, Ljava/lang/SecurityException;

    const-string v12, "No active admin"

    invoke-direct {v9, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public addAuthorizedUid(II)Z
    .locals 3
    .param p1, "authorizedUid"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 3561
    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "addAuthorizedUid"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3562
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3563
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceUMCSignature()V

    .line 3564
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3565
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3566
    const-string v1, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3567
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ADMIN_UID_AUTHORIZATION_INFO"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    .line 3569
    .end local v0    # "values":Landroid/content/ContentValues;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    .locals 6
    .param p1, "proxyAdmin"    # Landroid/app/admin/ProxyDeviceAdminInfo;
    .param p2, "proxyUid"    # I
    .param p3, "adminComponentName"    # Landroid/content/ComponentName;
    .param p4, "adminUid"    # I

    .prologue
    const/4 v5, 0x0

    .line 2830
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2832
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2833
    const-string/jumbo v3, "componentName"

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    const-string/jumbo v3, "proxyUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2835
    const-string/jumbo v3, "proxyComponentName"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2836
    const-string/jumbo v3, "proxyType"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2837
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2838
    .local v1, "serializedPerms":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2839
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2840
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2839
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2842
    :cond_0
    const-string/jumbo v3, "permissions"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2845
    const-string/jumbo v3, "label"

    invoke-virtual {p1, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2846
    const-string/jumbo v3, "icon"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2847
    const-string/jumbo v3, "description"

    invoke-virtual {p1, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PROXY_ADMIN_INFO"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 2851
    return-void
.end method

.method public checkServices()V
    .locals 2

    .prologue
    .line 2749
    sget-boolean v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServicesAdded:Z

    if-nez v0, :cond_0

    .line 2750
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2751
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2761
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 2764
    :cond_0
    return-void
.end method

.method public configureContainerAdminForMigration(Z)Z
    .locals 3
    .param p1, "blockAdminConnection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3470
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configure the MDM admin before and after migration on Device after FOTA update : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->blockAdminToReceivePolicy(Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deactivateAdminForUser(Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 3127
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3129
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3133
    :goto_0
    return-void

    .line 3130
    :catch_0
    move-exception v0

    .line 3131
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deactivateAdminForUser:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deactivateProxyAdminsForUser(I)V
    .locals 11
    .param p1, "userHandle"    # I

    .prologue
    const/4 v10, 0x0

    .line 3099
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3100
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3101
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    const/16 v8, 0x9

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "adminUid"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "proxyUid"

    aput-object v9, v1, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "proxyType"

    aput-object v9, v1, v8

    const/4 v8, 0x3

    const-string/jumbo v9, "componentName"

    aput-object v9, v1, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "proxyComponentName"

    aput-object v9, v1, v8

    const/4 v8, 0x5

    const-string/jumbo v9, "label"

    aput-object v9, v1, v8

    const/4 v8, 0x6

    const-string/jumbo v9, "icon"

    aput-object v9, v1, v8

    const/4 v8, 0x7

    const-string/jumbo v9, "description"

    aput-object v9, v1, v8

    const/16 v8, 0x8

    const-string/jumbo v9, "permissions"

    aput-object v9, v1, v8

    .line 3107
    .local v1, "columns":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "PROXY_ADMIN_INFO"

    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 3111
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 3112
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "proxyUid"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3113
    .local v6, "proxyUid":I
    const-string/jumbo v8, "proxyComponentName"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3114
    .local v0, "adminName":Ljava/lang/String;
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-ne v8, p1, :cond_0

    .line 3116
    :try_start_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-direct {p0, v8, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3118
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeProxyAdmin(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3119
    :catch_0
    move-exception v3

    .line 3120
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "deactivateAdminForUser:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3124
    .end local v0    # "adminName":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "proxyUid":I
    :cond_1
    return-void
.end method

.method public disableConstrainedState(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3509
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedState(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public enableConstrainedState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "TargetPkgName"    # Ljava/lang/String;
    .param p5, "TargetSignature"    # Ljava/lang/String;
    .param p6, "PolicyBitMask"    # I

    .prologue
    .line 3505
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->enableConstrainedState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public enforceActiveAdminPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 593
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    .line 595
    return-void
.end method

.method public enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 599
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 604
    .local v3, "versionInfo":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 605
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 606
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 608
    .local v1, "pid":I
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 609
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 612
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2, p1, p2}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 614
    .local v0, "isAuthorized":I
    if-eqz v0, :cond_1

    .line 615
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not authorized to be called!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 619
    .end local v0    # "isAuthorized":I
    .end local v1    # "pid":I
    .end local v2    # "uid":I
    :cond_1
    return-void
.end method

.method public enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 578
    if-eqz p2, :cond_0

    .line 579
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 580
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v2, v1, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 582
    .local v0, "callingCN":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 583
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component name violation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 587
    .end local v0    # "callingCN":Landroid/content/ComponentName;
    .end local v1    # "uid":I
    :cond_0
    return-void
.end method

.method public enforceContainerOwnerShipPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 626
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 636
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceOwnerOnlyAndActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceOwnerOnlyPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 631
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceOwnerOnlyAndActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceOwnerOnlySupportedOperation()V
    .locals 4

    .prologue
    .line 2784
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2785
    .local v0, "userId":I
    if-eqz v0, :cond_0

    .line 2786
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operation not supported on user id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", only allowed on owner."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2789
    :cond_0
    return-void
.end method

.method public enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 622
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveAdminComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 969
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 970
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 973
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .locals 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1446
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1447
    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, " getActiveAdmins calls from Profile return default value"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1462
    :goto_0
    return-object v2

    .line 1450
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    monitor-enter p0

    .line 1452
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1453
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1454
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1463
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1455
    .restart local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 1456
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    const/16 v3, -0x2710

    if-eq v3, p1, :cond_4

    const/4 v3, -0x1

    if-eq v3, p1, :cond_4

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_3

    .line 1459
    :cond_4
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1462
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getActiveAdminsInfo(I)Ljava/util/List;
    .locals 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1467
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    monitor-enter p0

    .line 1469
    const/16 v3, -0x2710

    if-ne p1, v3, :cond_0

    .line 1470
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    .line 1478
    :goto_0
    return-object v2

    .line 1472
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1473
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 1474
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 1475
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1480
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1478
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getActiveSamsungAuthorizedAdmin(I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2651
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 2652
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2655
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :goto_0
    return-object v0

    .restart local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdminRemovable(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v11, -0x1

    .line 1539
    const/4 v1, -0x1

    .line 1540
    .local v1, "callingUid":I
    if-nez p2, :cond_2

    .line 1541
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1568
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v8

    :cond_1
    :goto_1
    return v8

    .line 1544
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 1545
    .local v7, "userId":I
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v10

    invoke-virtual {v10, p2, v8, v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1547
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_5

    .line 1548
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1549
    .local v2, "callingIdentity":J
    invoke-virtual {p0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v6

    .line 1550
    .local v6, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1551
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1552
    .local v5, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1553
    invoke-virtual {v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1554
    invoke-virtual {v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v10

    if-eq v10, v9, :cond_1

    .line 1560
    .end local v5    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_4
    if-ne v1, v11, :cond_0

    move v8, v9

    .line 1561
    goto :goto_1

    .line 1564
    .end local v2    # "callingIdentity":J
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :cond_5
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0
.end method

.method public getAdminUidForAuthorizedUid(I)I
    .locals 5
    .param p1, "authorizedUid"    # I

    .prologue
    .line 3602
    const-string v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "getAdminUidForAuthorizedUid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3603
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3604
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceUMCSignature()V

    .line 3605
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3606
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string v2, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3607
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v4, "adminUid"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3608
    .local v0, "result":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 3609
    const-string v2, "adminUid"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3612
    .end local v0    # "result":Landroid/content/ContentValues;
    .end local v1    # "selectionValues":Landroid/content/ContentValues;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getAuthorizedUidForAdminUid(I)I
    .locals 5
    .param p1, "adminUid"    # I

    .prologue
    .line 3588
    const-string v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "getAuthorizedUidForAdminUid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3590
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceUMCSignature()V

    .line 3591
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3592
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3593
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN_UID_AUTHORIZATION_INFO"

    const-string v4, "authorizedUid"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3594
    .local v0, "result":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 3595
    const-string v2, "authorizedUid"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3598
    .end local v0    # "result":Landroid/content/ContentValues;
    .end local v1    # "selectionValues":Landroid/content/ContentValues;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getConstrainedState()I
    .locals 1

    .prologue
    .line 3517
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedState()I

    move-result v0

    return v0
.end method

.method public getEnterpriseDeviceAdministrators()Ljava/util/List;
    .locals 23
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
    .line 516
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v4, "adminPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v20, "persona"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    check-cast v19, Lcom/android/server/pm/PersonaManagerService;

    .line 527
    .local v19, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v19, :cond_1

    .line 528
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PersonaManagerService;->getPersonaIds()[I

    move-result-object v17

    .line 529
    .local v17, "personas":[I
    if-eqz v17, :cond_1

    .line 530
    move-object/from16 v5, v17

    .local v5, "arr$":[I
    array-length v12, v5

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v12, :cond_1

    aget v16, v5, v9

    .line 531
    .local v16, "personaId":I
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v14

    .line 532
    .local v14, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v14, :cond_0

    .line 533
    invoke-virtual {v14}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 539
    .end local v5    # "arr$":[I
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v16    # "personaId":I
    .end local v17    # "personas":[I
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v7

    .line 540
    .local v7, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v7, :cond_7

    .line 541
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 543
    .local v6, "cmpName":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "adminPkgName":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 547
    const/4 v10, 0x0

    .line 548
    .local v10, "isBBCApp":Z
    const/4 v11, 0x0

    .line 549
    .local v11, "isSystemApp":Z
    const/4 v13, 0x0

    .line 550
    .local v13, "metadata":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    move-object/from16 v20, v0

    const/16 v21, 0xc0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v3, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 551
    .local v18, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v18, :cond_3

    .line 552
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 554
    const/4 v11, 0x1

    .line 556
    :cond_3
    if-eqz v13, :cond_4

    const-string v20, "com.samsung.android.knoxenabled"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_4

    .line 557
    const/4 v10, 0x1

    .line 560
    :cond_4
    invoke-static {v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 561
    .local v15, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_5

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    if-gtz v20, :cond_6

    :cond_5
    if-eqz v11, :cond_2

    :cond_6
    if-nez v10, :cond_2

    sget-object v20, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->NON_MDM_ADMINS:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 563
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 565
    .end local v3    # "adminPkgName":Ljava/lang/String;
    .end local v10    # "isBBCApp":Z
    .end local v11    # "isSystemApp":Z
    .end local v13    # "metadata":Landroid/os/Bundle;
    .end local v15    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v8

    .line 566
    .local v8, "e":Ljava/lang/Exception;
    const-string v20, "EnterpriseDeviceManagerService"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 571
    .end local v6    # "cmpName":Landroid/content/ComponentName;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_7
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Enterprise Device Admins "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return-object v4
.end method

.method public getMyKnoxAdmin(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3557
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "MyKNOXAdmin"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyAdmins(I)Ljava/util/List;
    .locals 30
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/admin/ProxyDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2886
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v28, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2888
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    const/16 v8, 0x9

    new-array v13, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v28, "adminUid"

    aput-object v28, v13, v8

    const/4 v8, 0x1

    const-string/jumbo v28, "proxyUid"

    aput-object v28, v13, v8

    const/4 v8, 0x2

    const-string/jumbo v28, "proxyType"

    aput-object v28, v13, v8

    const/4 v8, 0x3

    const-string/jumbo v28, "componentName"

    aput-object v28, v13, v8

    const/4 v8, 0x4

    const-string/jumbo v28, "proxyComponentName"

    aput-object v28, v13, v8

    const/4 v8, 0x5

    const-string/jumbo v28, "label"

    aput-object v28, v13, v8

    const/4 v8, 0x6

    const-string/jumbo v28, "icon"

    aput-object v28, v13, v8

    const/4 v8, 0x7

    const-string/jumbo v28, "description"

    aput-object v28, v13, v8

    const/16 v8, 0x8

    const-string/jumbo v28, "permissions"

    aput-object v28, v13, v8

    .line 2895
    .local v13, "columns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v28, "PROXY_ADMIN_INFO"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v8, v0, v13, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v27

    .line 2899
    .local v27, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 2900
    .local v15, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "proxyUid"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 2901
    .local v23, "proxyUid":I
    const/4 v8, -0x1

    move/from16 v0, p1

    if-eq v8, v0, :cond_1

    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move/from16 v0, p1

    if-ne v8, v0, :cond_0

    .line 2906
    :cond_1
    const-string/jumbo v8, "proxyType"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 2908
    .local v26, "type":I
    const/4 v3, 0x0

    .line 2909
    .local v3, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    const/4 v8, 0x2

    move/from16 v0, v26

    if-ne v0, v8, :cond_2

    .line 2910
    const-string/jumbo v8, "label"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2911
    .local v5, "label":Ljava/lang/String;
    const-string/jumbo v8, "icon"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 2912
    .local v7, "icon":[B
    const-string/jumbo v8, "description"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2913
    .local v6, "description":Ljava/lang/String;
    const-string/jumbo v8, "permissions"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2914
    .local v25, "serializedPerms":Ljava/lang/String;
    const-string v8, ";"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 2916
    .local v21, "perms":[Ljava/lang/String;
    const-string/jumbo v8, "proxyComponentName"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2918
    .local v22, "proxyComponentName":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 2919
    .local v12, "cn":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2920
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v10, Landroid/content/pm/ActivityInfo;

    invoke-direct {v10}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 2921
    .local v10, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v11, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v11}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 2922
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v11, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 2923
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2924
    move/from16 v0, v23

    iput v0, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2925
    iput-object v11, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2926
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2927
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2928
    iput-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2930
    new-instance v3, Landroid/app/admin/ProxyDeviceAdminInfo;

    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)V

    .line 2968
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "description":Ljava/lang/String;
    .end local v7    # "icon":[B
    .end local v21    # "perms":[Ljava/lang/String;
    .end local v22    # "proxyComponentName":Ljava/lang/String;
    .restart local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :goto_1
    if-eqz v3, :cond_0

    .line 2969
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2933
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v10    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v25    # "serializedPerms":Ljava/lang/String;
    :cond_2
    const-string v8, "adminUid"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2934
    .local v9, "adminUid":I
    const-string/jumbo v8, "componentName"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2935
    .local v14, "componentName":Ljava/lang/String;
    const-string/jumbo v8, "permissions"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2936
    .restart local v25    # "serializedPerms":Ljava/lang/String;
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 2938
    .restart local v12    # "cn":Landroid/content/ComponentName;
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 2939
    .local v24, "resolveIntent":Landroid/content/Intent;
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2940
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v28, 0x80

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v18

    .line 2943
    .local v18, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 2948
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2949
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    new-instance v10, Landroid/content/pm/ActivityInfo;

    invoke-direct {v10}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 2950
    .restart local v10    # "ai":Landroid/content/pm/ActivityInfo;
    new-instance v11, Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v11, v8}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2951
    .restart local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move/from16 v0, v23

    iput v0, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2952
    iput-object v11, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2953
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2954
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2955
    iput-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2958
    if-nez v25, :cond_3

    .line 2959
    :try_start_0
    new-instance v20, Landroid/app/admin/ProxyDeviceAdminInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v8}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .local v20, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    move-object/from16 v3, v20

    .end local v20    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    goto/16 :goto_1

    .line 2961
    :cond_3
    new-instance v20, Landroid/app/admin/ProxyDeviceAdminInfo;

    const-string v8, ";"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v8}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v20    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    move-object/from16 v3, v20

    .end local v20    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    goto/16 :goto_1

    .line 2964
    :catch_0
    move-exception v16

    .line 2965
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 2971
    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "adminUid":I
    .end local v10    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v14    # "componentName":Ljava/lang/String;
    .end local v15    # "cv":Landroid/content/ContentValues;
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v18    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "proxyUid":I
    .end local v24    # "resolveIntent":Landroid/content/Intent;
    .end local v25    # "serializedPerms":Ljava/lang/String;
    .end local v26    # "type":I
    :cond_4
    return-object v19
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 1485
    return-void
.end method

.method public hasAnyActiveAdmin()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2524
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 2532
    :cond_0
    :goto_0
    return v0

    .line 2528
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2532
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 978
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .locals 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 982
    const/16 v1, 0x1b

    if-ge p2, v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v1

    .line 991
    :goto_0
    return v1

    .line 986
    :cond_0
    monitor-enter p0

    .line 987
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 988
    .local v0, "info":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_1

    .line 989
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 992
    .end local v0    # "info":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 991
    .restart local v0    # "info":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 1440
    monitor-enter p0

    .line 1441
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1442
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 2580
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAdminRemovable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isAdminRemovableInternal(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isAdminRemovableInternal(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2590
    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAdminRemovableInternal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2592
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 2593
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_0

    .line 2594
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2596
    :cond_0
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2597
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v1

    .line 2598
    .local v1, "ret":Z
    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAdminRemovableInternal : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    return v1
.end method

.method public isMdmAdminPresent()Z
    .locals 1

    .prologue
    .line 2745
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresentInternal()Z

    move-result v0

    return v0
.end method

.method public isMigrationStateNOK()Z
    .locals 5

    .prologue
    .line 3492
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "migrationState"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3493
    .local v1, "migrationState":Ljava/lang/String;
    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current migration state is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3494
    if-eqz v1, :cond_0

    const-string/jumbo v2, "nok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 3495
    const/4 v2, 0x1

    .line 3501
    .end local v1    # "migrationState":Ljava/lang/String;
    :goto_0
    return v2

    .line 3497
    :catch_0
    move-exception v0

    .line 3498
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseDeviceManagerService"

    const-string/jumbo v3, "error occured during getting migration state"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3501
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isRestrictedByConstrainedState(I)Z
    .locals 1
    .param p1, "bitMask"    # I

    .prologue
    .line 3513
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isRestrictedByConstrainedState(I)Z

    move-result v0

    return v0
.end method

.method public isUMCAdmin(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3209
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v2

    .line 3210
    .local v2, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 3211
    .local v1, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3213
    const/4 v3, 0x1

    .line 3217
    .end local v1    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public migrateApplicationDisablePolicy(I)Z
    .locals 2
    .param p1, "newContainerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3484
    const-string v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "migrate ContainerApplicationPolicy after instalation of 3rd party apps"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3486
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrateApplicationDisablePolicy(I)Z

    move-result v0

    return v0
.end method

.method public migrateEnterpriseContainer(IZ)Z
    .locals 7
    .param p1, "newContainerId"    # I
    .param p2, "isB2B"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3437
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Migrating Enterprise container data after FOTA update"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3438
    const/4 v1, 0x1

    .line 3440
    .local v1, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminNameForUserId(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 3441
    .local v0, "admin":Landroid/content/ComponentName;
    const-wide/16 v2, -0x1

    .line 3443
    .local v2, "adminUid":J
    const/16 v4, 0x64

    if-lt p1, v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3444
    :cond_0
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "No proper Admin owned by Container"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3447
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateEnterpriseDatabase(IZ)J

    move-result-wide v2

    .line 3449
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    if-eqz p2, :cond_2

    .line 3450
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateEcppDatabse(Landroid/content/ComponentName;IJ)Z

    move-result v1

    .line 3452
    :cond_2
    if-eqz v1, :cond_3

    .line 3453
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getEnterpriseMigrationResult()Z

    move-result v1

    .line 3455
    :cond_3
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "migrateEnterpriseContainer() return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3456
    return v1
.end method

.method public onContainerCreation(II)V
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2661
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnterpriseDeviceManagerService.onContainerCreation("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2663
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2664
    .local v3, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2665
    .local v0, "cb":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v5, :cond_0

    move-object v4, v0

    .line 2666
    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2668
    .local v4, "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_start_0
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerCreation(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2669
    :catch_0
    move-exception v1

    .line 2670
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Handled Exception in onContainerCreation"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2674
    .end local v0    # "cb":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v4    # "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :cond_1
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2695
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnterpriseDeviceManagerService.onContainerRemoved("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2697
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2698
    .local v3, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2699
    .local v0, "cb":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v5, :cond_0

    move-object v4, v0

    .line 2700
    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2702
    .local v4, "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_start_0
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerRemoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2703
    :catch_0
    move-exception v1

    .line 2704
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Handled Exception in onContainerRemoved"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2708
    .end local v0    # "cb":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v4    # "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :cond_1
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2678
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnterpriseDeviceManagerService.onPreContainerRemoval("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2680
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2681
    .local v3, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2682
    .local v0, "cb":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v5, :cond_0

    move-object v4, v0

    .line 2683
    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2685
    .local v4, "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_start_0
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onPreContainerRemoval(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2686
    :catch_0
    move-exception v1

    .line 2687
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Handled Exception in onPreContainerRemoval"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2691
    .end local v0    # "cb":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v4    # "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :cond_1
    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2538
    monitor-enter p0

    .line 2539
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2541
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2542
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2543
    const/4 v2, 0x1

    monitor-exit p0

    .line 2546
    :goto_1
    return v2

    .line 2541
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2546
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_1

    .line 2547
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public packageHasActiveAdminsAsUser(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userID"    # I

    .prologue
    .line 2553
    monitor-enter p0

    .line 2554
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2556
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2557
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2558
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 2559
    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " packageHasActiveAdminsAsUser "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " userID"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    const/4 v2, 0x1

    monitor-exit p0

    .line 2565
    :goto_1
    return v2

    .line 2556
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2565
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_1

    .line 2566
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public readUmcEnrollmentData(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    .line 3675
    const-string v8, "android.permission.sec.MDM_UMC_INTERNAL"

    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3678
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3707
    :cond_0
    :goto_0
    return-object v7

    .line 3681
    :cond_1
    const/4 v4, 0x0

    .line 3682
    .local v4, "io":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 3683
    .local v2, "inFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 3685
    .local v0, "buffer":[B
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v8, "/efs/umc"

    const-string v9, "BulkEnrollmentProfile"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3686
    .end local v2    # "inFile":Ljava/io/File;
    .local v3, "inFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 3701
    :cond_2
    if-eqz v4, :cond_0

    .line 3702
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3703
    :catch_0
    move-exception v1

    .line 3704
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3689
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [B

    .line 3690
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3691
    .end local v4    # "io":Ljava/io/FileInputStream;
    .local v5, "io":Ljava/io/FileInputStream;
    :try_start_4
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 3692
    .local v6, "readLen":I
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3693
    const/4 v4, 0x0

    .line 3695
    .end local v5    # "io":Ljava/io/FileInputStream;
    .restart local v4    # "io":Ljava/io/FileInputStream;
    if-lez v6, :cond_5

    .line 3696
    :try_start_5
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    array-length v10, v0

    invoke-direct {v8, v0, v9, v10}, Ljava/lang/String;-><init>([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3701
    if-eqz v4, :cond_4

    .line 3702
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_1
    move-object v7, v8

    .line 3705
    goto :goto_0

    .line 3703
    :catch_1
    move-exception v1

    .line 3704
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3701
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    if-eqz v4, :cond_6

    .line 3702
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    move-object v2, v3

    .line 3705
    .end local v3    # "inFile":Ljava/io/File;
    .restart local v2    # "inFile":Ljava/io/File;
    goto :goto_0

    .line 3703
    .end local v2    # "inFile":Ljava/io/File;
    .restart local v3    # "inFile":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 3704
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 3706
    .end local v3    # "inFile":Ljava/io/File;
    .restart local v2    # "inFile":Ljava/io/File;
    goto :goto_0

    .line 3697
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "readLen":I
    :catch_3
    move-exception v1

    .line 3698
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3701
    if-eqz v4, :cond_0

    .line 3702
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 3703
    :catch_4
    move-exception v1

    .line 3704
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3700
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 3701
    :goto_3
    if-eqz v4, :cond_7

    .line 3702
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 3705
    :cond_7
    :goto_4
    throw v7

    .line 3703
    :catch_5
    move-exception v1

    .line 3704
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 3700
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "inFile":Ljava/io/File;
    .restart local v3    # "inFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "inFile":Ljava/io/File;
    .restart local v2    # "inFile":Ljava/io/File;
    goto :goto_3

    .end local v2    # "inFile":Ljava/io/File;
    .end local v4    # "io":Ljava/io/FileInputStream;
    .restart local v3    # "inFile":Ljava/io/File;
    .restart local v5    # "io":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "inFile":Ljava/io/File;
    .restart local v2    # "inFile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "io":Ljava/io/FileInputStream;
    .restart local v4    # "io":Ljava/io/FileInputStream;
    goto :goto_3

    .line 3697
    .end local v2    # "inFile":Ljava/io/File;
    .restart local v3    # "inFile":Ljava/io/File;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "inFile":Ljava/io/File;
    .restart local v2    # "inFile":Ljava/io/File;
    goto :goto_2

    .end local v2    # "inFile":Ljava/io/File;
    .end local v4    # "io":Ljava/io/FileInputStream;
    .restart local v3    # "inFile":Ljava/io/File;
    .restart local v5    # "io":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "inFile":Ljava/io/File;
    .restart local v2    # "inFile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "io":Ljava/io/FileInputStream;
    .restart local v4    # "io":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public reconcileAdmin(Landroid/content/ComponentName;I)V
    .locals 10
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1265
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    sget v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    if-eq v6, v7, :cond_0

    .line 1266
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Need to be System Process"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1270
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 1272
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_1

    .line 1273
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1274
    .local v5, "uid":I
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1276
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v4

    .line 1281
    .local v4, "ret":Z
    if-nez v4, :cond_2

    .line 1282
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1283
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    monitor-exit p0

    .line 1302
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v4    # "ret":Z
    .end local v5    # "uid":I
    :cond_1
    :goto_0
    return-void

    .line 1290
    .restart local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v4    # "ret":Z
    .restart local v5    # "uid":I
    :cond_2
    sget-object v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1292
    .local v3, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v6, v5}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_1

    .line 1295
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v4    # "ret":Z
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1297
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v5    # "uid":I
    :catch_0
    move-exception v1

    .line 1298
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed reconcileAdmin for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "for user id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1295
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v5    # "uid":I
    :cond_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1101
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 1102
    return-void
.end method

.method public removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1118
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing admin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from DPM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 1122
    return-void
.end method

.method public removeAuthorizedUid(II)Z
    .locals 6
    .param p1, "authorizedUid"    # I
    .param p2, "adminUid"    # I

    .prologue
    const/4 v2, 0x1

    .line 3573
    const-string v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "removeAuthorizedUid"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3574
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3575
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceUMCSignature()V

    .line 3576
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3577
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3578
    const-string v3, "authorizedUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3579
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ADMIN_UID_AUTHORIZATION_INFO"

    invoke-virtual {v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 3580
    .local v0, "rows":I
    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeAuthorizedUid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3581
    if-le v0, v2, :cond_0

    .line 3584
    .end local v0    # "rows":I
    .end local v1    # "selectionValues":Landroid/content/ContentValues;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeProxyAdmin(I)V
    .locals 4
    .param p1, "proxyUid"    # I

    .prologue
    .line 2975
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2976
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2977
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "proxyUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2978
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PROXY_ADMIN_INFO"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 2979
    return-void
.end method

.method public restoreContainerAdminData(ILjava/lang/String;I)Z
    .locals 8
    .param p1, "creatorUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "containerId"    # I

    .prologue
    .line 3344
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    sget v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    if-eq v5, v6, :cond_0

    .line 3345
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Need to be System Process"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3348
    :cond_0
    const/4 v4, -0x2

    .line 3352
    .local v4, "ret":I
    const/4 v1, 0x0

    .line 3353
    .local v1, "dataDesc":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3354
    .local v2, "dataFile":Ljava/io/File;
    const/high16 v5, 0x3c000000    # 0.0078125f

    invoke-static {v2, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3357
    const-string v5, "application_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 3360
    .local v0, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v5, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->backupApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v4

    .line 3361
    if-nez v4, :cond_1

    .line 3362
    const/high16 v5, 0x18000000

    invoke-static {v2, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3364
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, p1, p3}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {v0, v5, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->restoreApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v4

    .line 3368
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3369
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3371
    :cond_2
    if-eqz v1, :cond_3

    .line 3372
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3378
    .end local v0    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v2    # "dataFile":Ljava/io/File;
    :cond_3
    :goto_0
    if-nez v4, :cond_4

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 3374
    :catch_0
    move-exception v3

    .line 3375
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreContainerAdminData:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3378
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public declared-synchronized selfUpdateAdmin(Ljava/lang/String;)I
    .locals 23
    .param p1, "apkFilePath"    # Ljava/lang/String;

    .prologue
    .line 1648
    monitor-enter p0

    :try_start_0
    const-string v19, "EnterpriseDeviceManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "apkFilePath : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    if-eqz v19, :cond_0

    .line 1652
    const/16 v19, -0x1

    .line 1744
    :goto_0
    monitor-exit p0

    return v19

    .line 1656
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminComponent()Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1657
    .local v4, "activeComponent":Landroid/content/ComponentName;
    if-nez v4, :cond_1

    .line 1658
    const/16 v19, -0x2

    goto :goto_0

    .line 1661
    :cond_1
    if-nez p1, :cond_3

    const/4 v6, 0x0

    .line 1666
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .local v6, "apkFilePath":Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1669
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "user"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 1670
    .local v15, "userManager":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v18

    .line 1671
    .local v18, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 1672
    .local v12, "info":Landroid/content/pm/UserInfo;
    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v19, v0

    if-eqz v19, :cond_2

    sget-object v19, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x80

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v19

    if-eqz v19, :cond_2

    .line 1676
    const/16 v19, -0x1

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto :goto_0

    .line 1661
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/UserInfo;
    .end local v15    # "userManager":Landroid/os/UserManager;
    .end local v16    # "token":J
    .end local v18    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v19

    if-lez v19, :cond_4

    move-object/from16 v6, p1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 1680
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v15    # "userManager":Landroid/os/UserManager;
    .restart local v16    # "token":J
    .restart local v18    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1682
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, ".apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 1683
    :cond_6
    const/16 v19, -0x3

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto :goto_0

    .line 1685
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :cond_7
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1686
    .local v5, "apkFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v19

    if-nez v19, :cond_9

    .line 1687
    :cond_8
    const-string v19, "EnterpriseDeviceManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot read or is not a file : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    const/16 v19, -0x3

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_0

    .line 1692
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :cond_9
    sget-object v19, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 1694
    .local v13, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v13, :cond_a

    .line 1695
    const/16 v19, -0x3

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_0

    .line 1698
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :cond_a
    iget-object v0, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 1699
    const/16 v19, -0x4

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_0

    .line 1704
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v13, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v19

    if-nez v19, :cond_c

    iget-object v0, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkAdminExistsInELMDB(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 1706
    const/16 v19, -0x5

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_0

    .line 1708
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :cond_c
    const-string/jumbo v19, "self_update_admin_component"

    const-string v20, "/data/system/selfUpdateAdmin.conf"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1710
    .local v7, "cNames":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1712
    .local v14, "storeString":Ljava/lang/String;
    if-nez v7, :cond_10

    .line 1713
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    .line 1722
    :cond_d
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/app/selfUpdateApks/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1724
    .local v9, "destFilePath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1726
    .local v8, "destFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_e

    .line 1727
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 1728
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1ed

    const/16 v21, -0x1

    const/16 v22, -0x1

    invoke-static/range {v19 .. v22}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1731
    :cond_e
    const-string/jumbo v19, "self_update_admin_component"

    const-string v20, "/data/system/selfUpdateAdmin.conf"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v14, v1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-static {v5, v8}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 1733
    :cond_f
    const/16 v19, -0x1

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_0

    .line 1716
    .end local v8    # "destFile":Ljava/io/File;
    .end local v9    # "destFilePath":Ljava/lang/String;
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :cond_10
    const-string v19, "EnterpriseDeviceManagerService"

    const-string v20, "Upgrade Admin Pending"

    invoke-static/range {v19 .. v20}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 1718
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 1735
    .restart local v8    # "destFile":Ljava/io/File;
    .restart local v9    # "destFilePath":Ljava/lang/String;
    :cond_11
    const/16 v19, 0x1a4

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v9, v0, v1, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1737
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1744
    const/16 v19, 0x0

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_0

    .line 1739
    .end local v5    # "apkFile":Ljava/io/File;
    .end local v7    # "cNames":Ljava/lang/String;
    .end local v8    # "destFile":Ljava/io/File;
    .end local v9    # "destFilePath":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v14    # "storeString":Ljava/lang/String;
    .end local v15    # "userManager":Landroid/os/UserManager;
    .end local v16    # "token":J
    .end local v18    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1740
    .local v10, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v19, "EnterpriseDeviceManagerService"

    const-string v20, "Upgrade Admin Ex: "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1741
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1742
    const/16 v19, -0x1

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_0

    .line 1648
    .end local v4    # "activeComponent":Landroid/content/ComponentName;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    :goto_3
    monitor-exit p0

    throw v19

    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v4    # "activeComponent":Landroid/content/ComponentName;
    .restart local v6    # "apkFilePath":Ljava/lang/String;
    :catchall_1
    move-exception v19

    move-object/from16 p1, v6

    .end local v6    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto :goto_3
.end method

.method public sendIntent(I)V
    .locals 1
    .param p1, "restriction"    # I

    .prologue
    .line 3527
    const/4 v0, -0x1

    .line 3528
    .local v0, "msgResId":I
    packed-switch p1, :pswitch_data_0

    .line 3542
    :goto_0
    return-void

    .line 3530
    :pswitch_0
    const v0, 0x1040bb2

    .line 3541
    :goto_1
    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_0

    .line 3533
    :pswitch_1
    const v0, 0x1040bb3

    .line 3534
    goto :goto_1

    .line 3536
    :pswitch_2
    const v0, 0x1040ba3

    .line 3537
    goto :goto_1

    .line 3528
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->activateAdmin(Landroid/content/ComponentName;Z)V

    .line 1002
    return-void
.end method

.method public setActiveAdminSilent(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sec.enterprise.mdm.permission.MDM_SILENT_ACTIVATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->activateAdmin(Landroid/content/ComponentName;Z)V

    .line 2824
    return-void
.end method

.method public setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "removable"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 1495
    const-string v7, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1497
    const/4 v1, -0x1

    .line 1498
    .local v1, "callingUid":I
    if-nez p3, :cond_2

    .line 1499
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1521
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6

    .line 1522
    const-string v7, "EnterpriseDeviceManagerService"

    const-string v8, "Admin is not active"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    :cond_1
    :goto_1
    return v5

    .line 1502
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1503
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v7

    invoke-virtual {v7, p3, v5, v6}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1506
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_5

    .line 1507
    const-string v7, "EnterpriseDeviceManagerService"

    const-string v8, "Can\'t found packageName"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v4

    .line 1509
    .local v4, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1510
    .local v3, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v3}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1511
    invoke-virtual {v3}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1515
    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_4
    if-eq v1, v9, :cond_1

    .line 1518
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :cond_5
    if-eqz v0, :cond_0

    .line 1519
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    .line 1526
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "userId":I
    :cond_6
    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setAdminRemovable : callingUid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ADMIN_INFO"

    const-string v9, "canRemove"

    invoke-virtual {v7, v1, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 1529
    .local v5, "result":Z
    goto :goto_1
.end method

.method public setB2BMode(Z)I
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2780
    const/4 v0, 0x0

    return v0
.end method

.method public setMyKnoxAdmin(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3548
    const-string v0, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3550
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "MyKNOXAdmin"

    invoke-virtual {v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3551
    const/4 v0, 0x1

    return v0
.end method

.method public setPermissions(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "adminUid"    # I
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 3136
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3137
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 3145
    :cond_0
    :goto_0
    return-void

    .line 3140
    :cond_1
    const/4 v2, 0x0

    aget-object v1, p2, v2

    .line 3141
    .local v1, "serializedPerms":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 3142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3144
    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PROXY_ADMIN_INFO"

    const-string/jumbo v4, "permissions"

    invoke-virtual {v2, p1, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 1580
    const-string v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "systemReady"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionToastManager;->init(Landroid/content/Context;)V

    .line 1584
    new-instance v3, Lcom/android/server/enterprise/email/AccountsReceiver;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/email/AccountsReceiver;-><init>(Landroid/content/Context;)V

    .line 1586
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "InternalHandlerThread"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1588
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1589
    new-instance v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/os/Looper;)V

    sput-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    .line 1592
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 1593
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1605
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->loadActiveAdmins()V

    .line 1608
    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1609
    .local v1, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v3}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V

    goto :goto_0

    .line 1612
    .end local v1    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_1
    const-string/jumbo v3, "sec_analytics"

    new-instance v4, Lcom/android/server/analytics/data/collection/DataCollectionService;

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/analytics/data/collection/DataCollectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1613
    return-void
.end method

.method public final updateAdminPermissions()V
    .locals 3

    .prologue
    .line 1616
    const-string v1, "EnterpriseDeviceManagerService"

    const-string/jumbo v2, "updateAdminPermissions"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    :goto_0
    return-void

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    .locals 7
    .param p1, "proxyAdmin"    # Landroid/app/admin/ProxyDeviceAdminInfo;
    .param p2, "proxyUid"    # I
    .param p3, "adminComponentName"    # Landroid/content/ComponentName;
    .param p4, "adminUid"    # I

    .prologue
    const/4 v6, 0x0

    .line 2858
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2860
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2861
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "proxyUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2863
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2864
    .local v3, "updateValues":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2865
    const-string/jumbo v4, "componentName"

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    const-string/jumbo v4, "proxyComponentName"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2867
    const-string/jumbo v4, "proxyType"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2868
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2869
    .local v2, "serializedPerms":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2870
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 2871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2870
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2873
    :cond_0
    const-string/jumbo v4, "permissions"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 2876
    const-string/jumbo v4, "label"

    invoke-virtual {p1, v6}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    const-string/jumbo v4, "icon"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2878
    const-string/jumbo v4, "description"

    invoke-virtual {p1, v6}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2881
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PROXY_ADMIN_INFO"

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 2882
    return-void
.end method

.method public writeUmcEnrollmentData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 3629
    const-string v9, "android.permission.sec.MDM_UMC_INTERNAL"

    invoke-virtual {p0, p1, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3632
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkCallerIsUMC()Z

    move-result v9

    if-nez v9, :cond_0

    .line 3671
    :goto_0
    return v8

    .line 3635
    :cond_0
    const/4 v2, 0x0

    .line 3636
    .local v2, "os":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 3638
    .local v4, "outFile":Ljava/io/File;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3640
    .local v6, "token":J
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v9, "/efs/umc"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3641
    .local v0, "dataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 3642
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3645
    :cond_1
    new-instance v5, Ljava/io/File;

    const-string v9, "/efs/umc"

    const-string v10, "BulkEnrollmentProfile"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3646
    .end local v4    # "outFile":Ljava/io/File;
    .local v5, "outFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3647
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 3650
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 3651
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3652
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 3653
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 3654
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3655
    const/4 v2, 0x0

    .line 3658
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :cond_3
    const/4 v8, 0x1

    .line 3663
    if-eqz v2, :cond_4

    .line 3664
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3669
    :cond_4
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3665
    :catch_0
    move-exception v1

    .line 3666
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3659
    .end local v0    # "dataDir":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "outFile":Ljava/io/File;
    .restart local v4    # "outFile":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 3660
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3663
    if-eqz v2, :cond_5

    .line 3664
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 3669
    :cond_5
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3665
    :catch_2
    move-exception v1

    .line 3666
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 3662
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 3663
    :goto_4
    if-eqz v2, :cond_6

    .line 3664
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 3669
    :cond_6
    :goto_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 3665
    :catch_3
    move-exception v1

    .line 3666
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 3662
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "outFile":Ljava/io/File;
    .restart local v0    # "dataDir":Ljava/io/File;
    .restart local v5    # "outFile":Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "outFile":Ljava/io/File;
    .restart local v4    # "outFile":Ljava/io/File;
    goto :goto_4

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "outFile":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "outFile":Ljava/io/File;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "outFile":Ljava/io/File;
    .restart local v4    # "outFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 3659
    .end local v4    # "outFile":Ljava/io/File;
    .restart local v5    # "outFile":Ljava/io/File;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "outFile":Ljava/io/File;
    .restart local v4    # "outFile":Ljava/io/File;
    goto :goto_2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "outFile":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "outFile":Ljava/io/File;
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5    # "outFile":Ljava/io/File;
    .restart local v4    # "outFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
