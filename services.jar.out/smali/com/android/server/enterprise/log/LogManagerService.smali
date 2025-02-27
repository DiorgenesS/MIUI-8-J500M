.class public Lcom/android/server/enterprise/log/LogManagerService;
.super Landroid/app/enterprise/ILogManager$Stub;
.source "LogManagerService.java"


# static fields
.field private static final DISABLED:Ljava/lang/String; = "0"

.field private static final ENABLED:Ljava/lang/String; = "1"

.field private static final LOGGER_NAMES:[Ljava/lang/String;

.field private static final LOGGER_TYPES:[I

.field private static final LOG_CONFIG_FILE:Ljava/lang/String; = "/data/system/enterprise/log.cfg"

.field private static final TAG:Ljava/lang/String; = "LogManagerService"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdms:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

.field private mLogReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 66
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ConsoleLogger"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "FileLogger"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    .line 69
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "edms"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/app/enterprise/ILogManager$Stub;-><init>()V

    .line 139
    new-instance v1, Lcom/android/server/enterprise/log/LogManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/log/LogManagerService$1;-><init>(Lcom/android/server/enterprise/log/LogManagerService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/log/LogManagerService;->mLogReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcom/android/server/enterprise/log/LogManagerService;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/server/enterprise/log/LogManagerService;->mEdms:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 89
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/log/LogManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/log/LogManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/android/server/enterprise/log/LogManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/log/LogManagerService;->mLogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->initLog()V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/log/LogManagerService;I)Lcom/android/server/enterprise/log/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/log/LogManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    return-object v0
.end method

.method private checkAdminExistsInELMDB(I)Z
    .locals 13
    .param p1, "uid"    # I

    .prologue
    .line 205
    sget-object v10, Lcom/android/server/enterprise/log/LogManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v8

    .line 206
    .local v8, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 208
    .local v4, "ident":J
    :try_start_0
    const-string/jumbo v10, "enterprise_license_policy"

    invoke-static {v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 209
    .local v9, "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    if-eqz v9, :cond_1

    .line 210
    invoke-virtual {v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v7

    .line 211
    .local v7, "list":[Landroid/app/enterprise/license/LicenseInfo;
    if-eqz v7, :cond_1

    .line 212
    move-object v0, v7

    .local v0, "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v3, v0, v2

    .line 213
    .local v3, "info":Landroid/app/enterprise/license/LicenseInfo;
    invoke-virtual {v3}, Landroid/app/enterprise/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    .line 214
    const/4 v10, 0x1

    .line 222
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    .end local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v2    # "i$":I
    .end local v3    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .end local v6    # "len$":I
    .end local v7    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v9    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :goto_1
    return v10

    .line 212
    .restart local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v2    # "i$":I
    .restart local v3    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "len$":I
    .restart local v7    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v9    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v2    # "i$":I
    .end local v3    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .end local v6    # "len$":I
    .end local v7    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    .end local v9    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :goto_2
    const/4 v10, 0x0

    goto :goto_1

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v10, "LogManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkAdminExistsInELMDB Ex: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method private checkCallingUidAccess()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 230
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 231
    .local v0, "uid":I
    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v1

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/log/LogManagerService;->mEdms:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveSamsungAuthorizedAdmin(I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/log/LogManagerService;->checkAdminExistsInELMDB(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static createLogger(I)Lcom/android/server/enterprise/log/Logger;
    .locals 4
    .param p0, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 123
    packed-switch p0, :pswitch_data_0

    .line 129
    const-string v0, "LogManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Logger Type Returning Console Logger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Lcom/android/server/enterprise/log/ConsoleLogger;

    sget-object v1, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/log/ConsoleLogger;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 125
    :pswitch_0
    new-instance v0, Lcom/android/server/enterprise/log/ConsoleLogger;

    sget-object v1, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/log/ConsoleLogger;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :pswitch_1
    new-instance v0, Lcom/android/server/enterprise/log/FileLogger;

    sget-object v1, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/log/FileLogger;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getLogger(I)Lcom/android/server/enterprise/log/Logger;
    .locals 2
    .param p1, "logType"    # I

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 199
    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->getLogger(Ljava/lang/String;)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initLog()V
    .locals 5

    .prologue
    .line 101
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/enterprise/log.cfg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "logCfg":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 104
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/log/LogManagerService;->enableLogging(I)I

    .line 107
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 108
    sget-object v3, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "/data/system/enterprise/log.cfg"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    sget-object v3, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_TYPES:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/log/LogManagerService;->enableLogging(I)I

    .line 107
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private isValidLogLevel(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 178
    packed-switch p1, :pswitch_data_0

    .line 187
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 185
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidLogType(I)Z
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 163
    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_TYPES:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 164
    .local v3, "logType":I
    if-ne p1, v3, :cond_0

    .line 165
    const/4 v4, 0x1

    .line 167
    .end local v3    # "logType":I
    :goto_1
    return v4

    .line 163
    .restart local v3    # "logType":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v3    # "logType":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public copyLogs(Landroid/os/ParcelFileDescriptor;)I
    .locals 6
    .param p1, "file"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    const/4 v1, -0x1

    .line 414
    :goto_0
    return v1

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v4

    if-nez v4, :cond_1

    .line 354
    const/4 v1, -0x2

    goto :goto_0

    .line 356
    :cond_1
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v4

    if-nez v4, :cond_2

    .line 357
    const/4 v1, -0x5

    goto :goto_0

    .line 360
    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/SecurityManager;

    invoke-direct {v3}, Ljava/lang/SecurityManager;-><init>()V

    .line 361
    .local v3, "sm":Ljava/lang/SecurityManager;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 367
    const/4 v1, 0x0

    .line 369
    .local v1, "error":I
    :try_start_1
    new-instance v4, Lcom/android/server/enterprise/log/LogManagerService$2;

    invoke-direct {v4, p0, p1}, Lcom/android/server/enterprise/log/LogManagerService$2;-><init>(Lcom/android/server/enterprise/log/LogManagerService;Landroid/os/ParcelFileDescriptor;)V

    invoke-static {v4}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    const/4 v1, -0x6

    goto :goto_0

    .line 362
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "error":I
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :catch_1
    move-exception v2

    .line 363
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v4, "LogManagerService"

    const-string v5, "can\'t write to file descriptor"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v1, -0x6

    goto :goto_0
.end method

.method public disableLogging(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const/4 v0, -0x2

    .line 278
    :goto_0
    return v0

    .line 271
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    const/4 v0, -0x3

    goto :goto_0

    .line 274
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 275
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->removeLogger(Lcom/android/server/enterprise/log/Logger;)Z

    .line 277
    :cond_2
    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    const-string v1, "0"

    const-string v2, "/data/system/enterprise/log.cfg"

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableLogging(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const/4 v0, -0x2

    .line 257
    :goto_0
    return v0

    .line 250
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    const/4 v0, -0x3

    goto :goto_0

    .line 253
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-nez v0, :cond_2

    .line 254
    invoke-static {p1}, Lcom/android/server/enterprise/log/LogManagerService;->createLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->addLogger(Lcom/android/server/enterprise/log/Logger;)Z

    .line 256
    :cond_2
    sget-object v0, Lcom/android/server/enterprise/log/LogManagerService;->LOGGER_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    const-string v1, "1"

    const-string v2, "/data/system/enterprise/log.cfg"

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 257
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogLevel(I)I
    .locals 2
    .param p1, "logType"    # I

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    const/4 v1, -0x3

    .line 336
    :goto_0
    return v1

    .line 332
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    .line 333
    .local v0, "logger":Lcom/android/server/enterprise/log/Logger;
    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {v0}, Lcom/android/server/enterprise/log/Logger;->getLogLevel()I

    move-result v1

    goto :goto_0

    .line 336
    :cond_1
    const/4 v1, -0x5

    goto :goto_0
.end method

.method public isLoggingEnabled(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x1

    .line 292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogLevel(II)I
    .locals 2
    .param p1, "logType"    # I
    .param p2, "level"    # I

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/android/server/enterprise/log/LogManagerService;->checkCallingUidAccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    const/4 v1, -0x2

    .line 318
    :goto_0
    return v1

    .line 307
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogType(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 308
    const/4 v1, -0x3

    goto :goto_0

    .line 310
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/log/LogManagerService;->isValidLogLevel(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 311
    const/4 v1, -0x4

    goto :goto_0

    .line 313
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/LogManagerService;->getLogger(I)Lcom/android/server/enterprise/log/Logger;

    move-result-object v0

    .line 314
    .local v0, "logger":Lcom/android/server/enterprise/log/Logger;
    if-eqz v0, :cond_3

    .line 315
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/log/Logger;->setLogLevel(I)V

    .line 316
    const/4 v1, 0x0

    goto :goto_0

    .line 318
    :cond_3
    const/4 v1, -0x5

    goto :goto_0
.end method
