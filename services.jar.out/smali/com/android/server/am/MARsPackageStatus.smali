.class public Lcom/android/server/am/MARsPackageStatus;
.super Ljava/lang/Object;
.source "MARsPackageStatus.java"


# static fields
.field public static final NOT_RESTRICTED:I = 0x0

.field public static final PACKAGE_STATE_ALWAYS_OPTIMIZING:I = 0x1

.field public static final PACKAGE_STATE_AUTO_OPTIMIZING:I = 0x0

.field public static final PACKAGE_STATE_AUTO_OPTIMIZING_NOTUSEDRECENTLY:I = 0x3

.field public static final PACKAGE_STATE_SETTO_AUTO_OPTIMIZING:I = 0x4

.field public static final PACKAGE_STATE_TURNED_OFF:I = 0x2

.field public static final RESTRICTED:I = 0x100


# instance fields
.field public appliedPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$Policy;",
            ">;"
        }
    .end annotation
.end field

.field public autorun:I

.field public context:Landroid/content/Context;

.field public hasAppIcon:Z

.field public hasOngoingNoti:Z

.field public info:Landroid/content/pm/PackageInfo;

.field public isAcceibilityService:Z

.field public isActiveDeviceAdmin:Z

.field public isDefaultIME:Z

.field public isNotificationListener:Z

.field public isUsingGcm:Z

.field public isWallpaper:Z

.field public isWallpaperRunning:Z

.field public isWidget:Z

.field public lastServiceActivityTime:J

.field public lastUsedTime:J

.field public name:Ljava/lang/String;

.field public needUpdateTime:Z

.field public receivedGcmIntent:Z

.field public resetTime:J

.field public restrictedFlag:I

.field public runningWidgets:I

.field public sbike:I

.field public score:I

.field public skipReason:Ljava/lang/String;

.field public state:I

.field public uds:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 6
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_packageName"    # Ljava/lang/String;
    .param p3, "_state"    # I
    .param p4, "_resetTime"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/android/server/am/MARsPackageStatus;->context:Landroid/content/Context;

    .line 102
    iput p3, p0, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 103
    iput-wide p4, p0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 104
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    .line 107
    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 108
    iput-object v2, p0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 111
    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->score:I

    .line 112
    iput-wide v4, p0, Lcom/android/server/am/MARsPackageStatus;->lastServiceActivityTime:J

    .line 113
    iput-wide v4, p0, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    .line 114
    iput-object v2, p0, Lcom/android/server/am/MARsPackageStatus;->info:Landroid/content/pm/PackageInfo;

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPackageStatus;->isC2DMPermAvl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isUsingGcm:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->receivedGcmIntent:Z

    .line 121
    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPackageStatus;->isWidgetPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isWidget:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isWallpaper:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->hasAppIcon:Z

    .line 129
    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    .line 130
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isWallpaperRunning:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->hasOngoingNoti:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isNotificationListener:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isAcceibilityService:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isDefaultIME:Z

    .line 138
    iput-object v2, p0, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 139
    return-void
.end method

.method private isC2DMPermAvl(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "c2dmPermissionFound":Z
    const/4 v2, 0x0

    .line 144
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 145
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_0

    .line 147
    const/16 v5, 0x1000

    :try_start_0
    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_0

    .line 149
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 150
    .local v3, "perms":[Landroid/content/pm/PermissionInfo;
    if-eqz v3, :cond_0

    .line 151
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 152
    aget-object v5, v3, v1

    if-eqz v5, :cond_1

    aget-object v5, v3, v1

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v6, ".permission.C2D_MESSAGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    const/4 v0, 0x1

    .line 162
    .end local v1    # "j":I
    .end local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :cond_0
    :goto_1
    return v0

    .line 151
    .restart local v1    # "j":I
    .restart local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "j":I
    .end local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private isWidgetPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x480

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 172
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 173
    const/4 v2, 0x1

    .line 175
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
