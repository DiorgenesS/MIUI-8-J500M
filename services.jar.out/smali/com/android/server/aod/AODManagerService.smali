.class public final Lcom/android/server/aod/AODManagerService;
.super Lcom/android/server/SystemService;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/aod/AODManagerService$1;,
        Lcom/android/server/aod/AODManagerService$AODConnection;,
        Lcom/android/server/aod/AODManagerService$LocalService;,
        Lcom/android/server/aod/AODManagerService$BinderService;,
        Lcom/android/server/aod/AODManagerService$AODHandler;,
        Lcom/android/server/aod/AODManagerService$AODConnectionCause;
    }
.end annotation


# static fields
.field private static final AOD_DEBUG:Z = true

.field private static AOD_SHOW_STATE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

.field private final mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

.field private mAODSettings:Lcom/android/server/aod/settings/AODSettings;

.field private final mContext:Landroid/content/Context;

.field private mSupportAODFeatureVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    .line 35
    const-string v0, "aod_show_state"

    sput-object v0, Lcom/android/server/aod/AODManagerService;->AOD_SHOW_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mSupportAODFeatureVersion:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    .line 60
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/aod/AODManagerService$AODHandler;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    .line 62
    new-instance v0, Lcom/android/server/aod/settings/AODSettings;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/aod/settings/AODSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    .line 63
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/aod/AODManagerService;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIII)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODConnection;)Lcom/android/server/aod/AODManagerService$AODConnection;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p1, "x1"    # Lcom/android/server/aod/AODManagerService$AODConnection;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    return-object p1
.end method

.method private createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V
    .locals 6
    .param p1, "connectionCause"    # Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    .prologue
    .line 195
    new-instance v2, Lcom/android/server/aod/AODManagerService$AODConnection;

    invoke-direct {v2, p0, p1}, Lcom/android/server/aod/AODManagerService$AODConnection;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    iput-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.aod.AlwaysOnDisplayService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.aodservice"

    const-string v4, "com.samsung.android.app.aodservice.AODService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    const v4, 0x4000001

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v3, "bindServiceAsUser fail"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-void

    .line 206
    :cond_0
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v3, "bindServiceAsUser success"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind AODService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateAODTspRectInternal(IIII)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 109
    :cond_0
    if-eqz v2, :cond_1

    .line 110
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 115
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 99
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set_aod_rect,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "tspCommand":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 102
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    if-eqz v3, :cond_3

    .line 110
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v2, v3

    .line 113
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 112
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_0
    move-exception v5

    move-object v2, v3

    .line 114
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 103
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "tspCommand":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    if-eqz v2, :cond_1

    .line 110
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 112
    :catch_2
    move-exception v5

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 109
    if-eqz v2, :cond_1

    .line 110
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 112
    :catch_4
    move-exception v5

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 109
    :goto_3
    if-eqz v2, :cond_4

    .line 110
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 113
    :cond_4
    :goto_4
    throw v5

    .line 112
    .restart local v1    # "file":Ljava/io/File;
    :catch_5
    move-exception v5

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    :catch_6
    move-exception v6

    goto :goto_4

    .line 108
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 105
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_2

    .line 103
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method public isAODStateInternal()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/aod/AODManagerService;->AOD_SHOW_STATE:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, "adoState":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 74
    const/16 v3, 0x258

    if-ne p1, v3, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "aodIntent":Landroid/content/Intent;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.app.aodservice.intent.action.AOD_APP_START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "aodIntent":Landroid/content/Intent;
    .local v1, "aodIntent":Landroid/content/Intent;
    :try_start_1
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAodService : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.aodservice"

    const-string v5, "com.samsung.android.app.aodservice.AODService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 80
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .end local v1    # "aodIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v0    # "aodIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v0    # "aodIntent":Landroid/content/Intent;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "aodIntent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "aodIntent":Landroid/content/Intent;
    .restart local v0    # "aodIntent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    const-string v0, "AODManagerService"

    new-instance v1, Lcom/android/server/aod/AODManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$BinderService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 68
    const-class v0, Lcom/samsung/android/aod/AODManagerInternal;

    new-instance v1, Lcom/android/server/aod/AODManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$LocalService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public startAODInternal()Z
    .locals 4

    .prologue
    .line 118
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startAOD()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    .line 120
    .local v0, "aodServiceEnable":Z
    if-eqz v0, :cond_2

    .line 121
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_0

    .line 122
    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STARTAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    .line 136
    :goto_0
    const/4 v2, 0x1

    .line 138
    :goto_1
    return v2

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_1

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->startAOD()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v3, "AODConnection is disconnected. Somethings wrong ..."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public stopAODInternal()Z
    .locals 4

    .prologue
    .line 143
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopAODInternal()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    .line 145
    .local v0, "aodServiceEnable":Z
    if-eqz v0, :cond_2

    .line 146
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_0

    .line 147
    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STOPAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    .line 161
    :goto_0
    const/4 v2, 0x1

    .line 163
    :goto_1
    return v2

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_1

    .line 152
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->stopAOD()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v3, "AODConnection is disconnected. Somethings wrong ..."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public wakeUpInternal()Z
    .locals 4

    .prologue
    .line 168
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "wakeUpInternal()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettings:Lcom/android/server/aod/settings/AODSettings;

    invoke-virtual {v2}, Lcom/android/server/aod/settings/AODSettings;->isAODServiceEnable()Z

    move-result v0

    .line 170
    .local v0, "aodServiceEnable":Z
    if-eqz v0, :cond_2

    .line 171
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    if-nez v2, :cond_0

    .line 172
    sget-object v2, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STOPAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->createAODConnection(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V

    .line 186
    :goto_0
    const/4 v2, 0x1

    .line 188
    :goto_1
    return v2

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v2, :cond_1

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->requestHide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v3, "AODConnection is disconnected. Somethings wrong ..."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
