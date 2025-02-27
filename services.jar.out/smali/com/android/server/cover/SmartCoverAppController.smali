.class final Lcom/android/server/cover/SmartCoverAppController;
.super Ljava/lang/Object;
.source "SmartCoverAppController.java"


# static fields
.field static final PATH_PLAYSTORE:Ljava/lang/String; = "1market://details?id=<"

.field static final PATH_SAMSUNGAPPS:Ljava/lang/String; = "samsungapps://ProductDetail/<"

.field private static final SAFE_DEBUG:Z = true

.field static final SMARTCOVER_CATEGORY:Ljava/lang/String; = "com.samsung.android.sdk.cover.category.LAUNCHER"

.field private static final TAG:Ljava/lang/String; = "SmartCoverAppController"

.field private static mContext:Landroid/content/Context;

.field private static mSmartCoverPackageName:Ljava/lang/String;

.field private static mSmartCoverServiceIntent:Landroid/content/Intent;

.field private static packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mIsRegisterReceiver:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    .line 43
    sput-object v0, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    .line 50
    new-instance v0, Lcom/android/server/cover/SmartCoverAppController$1;

    invoke-direct {v0}, Lcom/android/server/cover/SmartCoverAppController$1;-><init>()V

    sput-object v0, Lcom/android/server/cover/SmartCoverAppController;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/SmartCoverAppController;->mIsRegisterReceiver:Z

    .line 69
    const-string v0, "SmartCoverAppController"

    const-string v1, "SmartCoverMonitor constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sput-object p1, Lcom/android/server/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/server/cover/SmartCoverAppController;->startSmartCoverService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/android/server/cover/SmartCoverAppController;->stopSmartCoverService()V

    return-void
.end method

.method private controlCoverService(Z)V
    .locals 3
    .param p1, "attach"    # Z

    .prologue
    .line 98
    const-string v1, "SmartCoverAppController"

    const-string/jumbo v2, "controlCoverService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    if-eqz p1, :cond_1

    .line 100
    invoke-static {}, Lcom/android/server/cover/SmartCoverAppController;->startSmartCoverService()Z

    .line 102
    iget-boolean v1, p0, Lcom/android/server/cover/SmartCoverAppController;->mIsRegisterReceiver:Z

    if-nez v1, :cond_0

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 108
    const-string v1, "SmartCoverAppController"

    const-string/jumbo v2, "smartCoverAttachStateChanged : register Receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v1, Lcom/android/server/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/cover/SmartCoverAppController;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/cover/SmartCoverAppController;->mIsRegisterReceiver:Z

    .line 120
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/cover/SmartCoverAppController;->mIsRegisterReceiver:Z

    if-eqz v1, :cond_2

    .line 114
    const-string v1, "SmartCoverAppController"

    const-string/jumbo v2, "smartCoverAttachStateChanged : unregister Receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v1, Lcom/android/server/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/cover/SmartCoverAppController;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/cover/SmartCoverAppController;->mIsRegisterReceiver:Z

    .line 118
    :cond_2
    invoke-static {}, Lcom/android/server/cover/SmartCoverAppController;->stopSmartCoverService()V

    goto :goto_0
.end method

.method private static startSmartCoverService()Z
    .locals 3

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    .line 124
    sget-object v0, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    sget-object v1, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    sget-object v0, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    const-string v1, "com.samsung.android.sdk.cover.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v0, "SmartCoverAppController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startSmartCoverService : start service - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.samsung.android.sdk.cover.category.LAUNCHER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object v0, Lcom/android/server/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method private static stopSmartCoverService()V
    .locals 3

    .prologue
    .line 150
    sget-object v0, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "SmartCoverAppController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSmartCoverService : stop service - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.samsung.android.sdk.cover.category.LAUNCHER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v0, Lcom/android/server/cover/SmartCoverAppController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public getSmartCoverPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "smartCoverAppUri"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_0
    return-object v0
.end method

.method public smartCoverAttachStateChanged(ZLjava/lang/String;)V
    .locals 3
    .param p1, "attach"    # Z
    .param p2, "smartCoverAppUri"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string v0, "SmartCoverAppController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smartCoverAttachStateChanged : attach = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", smartCoverAppUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/server/cover/SmartCoverAppController;->getSmartCoverPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    const-string v0, "SmartCoverAppController"

    const-string/jumbo v1, "smartCoverAttachStateChanged : package name is null. So couldn\'t do anything."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v0, "SmartCoverAppController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smartCoverAttachStateChanged : package name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/cover/SmartCoverAppController;->controlCoverService(Z)V

    goto :goto_0
.end method

.method public startCoverService(ZLjava/lang/String;)V
    .locals 3
    .param p1, "attach"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "SmartCoverAppController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCoverService : attach = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sput-object p2, Lcom/android/server/cover/SmartCoverAppController;->mSmartCoverPackageName:Ljava/lang/String;

    .line 76
    if-nez p2, :cond_0

    .line 77
    const-string v0, "SmartCoverAppController"

    const-string/jumbo v1, "startCoverService : package name is null. So couldn\'t do anything."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cover/SmartCoverAppController;->controlCoverService(Z)V

    goto :goto_0
.end method
