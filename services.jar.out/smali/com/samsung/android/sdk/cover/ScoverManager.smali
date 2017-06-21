.class public Lcom/samsung/android/sdk/cover/ScoverManager;
.super Ljava/lang/Object;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;
    }
.end annotation


# static fields
.field public static final COVER_MODE_HIDE_SVIEW_ONCE:I = 0x2

.field public static final COVER_MODE_NONE:I = 0x0

.field public static final COVER_MODE_SVIEW:I = 0x1

.field private static final FEATURE_COVER_FLIP:Ljava/lang/String; = "com.sec.feature.cover.flip"

.field public static final FEATURE_COVER_NFCLED:Ljava/lang/String; = "com.sec.feature.cover.nfcledcover"

.field private static final FEATURE_COVER_SVIEW:Ljava/lang/String; = "com.sec.feature.cover.sview"

.field static final SDK_VERSION:I = 0x1010000

.field private static final TAG:Ljava/lang/String; = "ScoverManager"

.field private static sIsFilpCoverSystemFeatureEnabled:Z

.field private static sIsNfcLedCoverSystemFeatureEnabled:Z

.field private static sIsSViewCoverSystemFeatureEnabled:Z

.field private static sIsSystemFeatureQueried:Z

.field private static sServiceVersion:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/cover/ICoverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    .line 156
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 162
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 168
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    .line 170
    const/high16 v0, 0x1000000

    sput v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 102
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 177
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->initSystemFeature()V

    .line 179
    return-void
.end method

.method private declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 306
    const-string/jumbo v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    .line 307
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 308
    const-string v0, "ScoverManager"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSystemFeature()V
    .locals 2

    .prologue
    .line 185
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 188
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 190
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    .line 192
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverManagerVersion()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    .line 195
    :cond_0
    return-void
.end method

.method static isSupportableVersion(I)Z
    .locals 8
    .param p0, "supportableVersion"    # I

    .prologue
    const v7, 0xffff

    .line 286
    shr-int/lit8 v6, p0, 0x18

    and-int/lit16 v0, v6, 0xff

    .line 287
    .local v0, "majorVersion":I
    shr-int/lit8 v6, p0, 0x10

    and-int/lit16 v1, v6, 0xff

    .line 288
    .local v1, "minorVersion":I
    and-int v2, p0, v7

    .line 289
    .local v2, "revisions":I
    sget v6, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v3, v6, 0xff

    .line 290
    .local v3, "serviceMajorVersion":I
    sget v6, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v4, v6, 0xff

    .line 291
    .local v4, "serviceMinorVersion":I
    sget v6, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    and-int v5, v6, v7

    .line 292
    .local v5, "serviceRevisions":I
    if-lt v3, v0, :cond_0

    if-lt v4, v1, :cond_0

    if-lt v5, v2, :cond_0

    .line 294
    const/4 v6, 0x1

    .line 296
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 934
    const/high16 v1, 0x1040000

    .line 935
    .local v1, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v3

    if-nez v3, :cond_1

    .line 936
    const-string v3, "ScoverManager"

    const-string v4, "addLedNotification : This device does not support cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v3

    if-nez v3, :cond_2

    .line 941
    const-string v3, "ScoverManager"

    const-string v4, "addLedNotification : This device does not support NFC Led cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 945
    :cond_2
    const/high16 v3, 0x1040000

    invoke-static {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 946
    new-instance v3, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v4, "This device does not support this function. Device is must higher then v1.4.0"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 951
    :cond_3
    if-nez p1, :cond_4

    .line 952
    const-string v3, "ScoverManager"

    const-string v4, "addLedNotification : Null notification data!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 956
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 958
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_0

    .line 959
    :try_start_0
    invoke-interface {v2, p1}, Lcom/samsung/android/cover/ICoverManager;->addLedNotification(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ScoverManager"

    const-string v4, "addLedNotification in sendData to NFC : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkValidPacakge(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 638
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_1

    .line 639
    const-string v5, "ScoverManager"

    const-string v6, "checkValidPacakge : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    :goto_0
    return v4

    .line 643
    :cond_1
    if-nez p1, :cond_2

    .line 644
    const-string v5, "ScoverManager"

    const-string v6, "checkValidPacakge : pkg is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v3

    .line 650
    .local v3, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v3, :cond_0

    .line 651
    invoke-interface {v3}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    .line 652
    .local v1, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v1, :cond_3

    iget-boolean v6, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v6, :cond_3

    .line 653
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "coverAppUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 655
    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 656
    goto :goto_0

    .line 660
    .end local v0    # "coverAppUri":Ljava/lang/String;
    :cond_3
    const-string v5, "ScoverManager"

    const-string v6, "checkValidPacakge : coverState is null or cover is detached"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 663
    .end local v1    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v3    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 664
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "ScoverManager"

    const-string v6, "RemoteException in checkCoverAppUri: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableLcdOffByCover(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)Z
    .locals 10
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1269
    const/high16 v4, 0x1050000

    .line 1270
    .local v4, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1271
    const-string v8, "ScoverManager"

    const-string/jumbo v9, "disableLcdOffByCover : This device does not support cover"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_0
    :goto_0
    return v7

    .line 1275
    :cond_1
    const/high16 v8, 0x1050000

    invoke-static {v8}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1276
    new-instance v7, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v8, "This device does not support this function. Device is must higher then v1.5.0"

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 1281
    :cond_2
    if-nez p1, :cond_3

    .line 1282
    const-string v8, "ScoverManager"

    const-string/jumbo v9, "disableLcdOffByCover : listener cannot be null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1285
    :cond_3
    const-string v8, "ScoverManager"

    const-string/jumbo v9, "disableLcdOffByCover"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const/4 v1, 0x0

    .line 1290
    .local v1, "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1291
    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/CoverListenerDelegate;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1292
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;

    .line 1293
    .local v2, "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1294
    move-object v1, v2

    .line 1299
    .end local v2    # "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    :cond_5
    if-nez v1, :cond_6

    .line 1300
    new-instance v1, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;

    .end local v1    # "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v8, v9}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 1304
    .restart local v1    # "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    .line 1305
    .local v6, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v6, :cond_0

    .line 1306
    new-instance v0, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    .local v0, "cm":Landroid/content/ComponentName;
    invoke-interface {v6, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1309
    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    const/4 v7, 0x1

    goto :goto_0

    .line 1313
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v6    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v3

    .line 1314
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "ScoverManager"

    const-string v9, "RemoteException in disableLcdOffByCover: "

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableLcdOffByCover(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)Z
    .locals 10
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1332
    const/high16 v4, 0x1050000

    .line 1333
    .local v4, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1334
    const-string v8, "ScoverManager"

    const-string/jumbo v9, "enableLcdOffByCover : This device does not support cover"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_0
    :goto_0
    return v7

    .line 1338
    :cond_1
    const/high16 v8, 0x1050000

    invoke-static {v8}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1339
    new-instance v7, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v8, "This device does not support this function. Device is must higher then v1.5.0"

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 1344
    :cond_2
    if-nez p1, :cond_3

    .line 1345
    const-string v8, "ScoverManager"

    const-string/jumbo v9, "enableLcdOffByCover : listener cannot be null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1349
    :cond_3
    const-string v8, "ScoverManager"

    const-string/jumbo v9, "enableLcdOffByCover"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const/4 v1, 0x0

    .line 1354
    .local v1, "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1355
    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/CoverListenerDelegate;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1356
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;

    .line 1357
    .local v2, "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1358
    move-object v1, v2

    .line 1363
    .end local v2    # "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    :cond_5
    if-nez v1, :cond_6

    .line 1364
    const-string v8, "ScoverManager"

    const-string/jumbo v9, "enableLcdOffByCover: Matching listener not found, cannot enable"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1369
    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    .line 1370
    .local v6, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v6, :cond_0

    .line 1371
    new-instance v0, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    .local v0, "cm":Landroid/content/ComponentName;
    invoke-interface {v6, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1374
    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLcdOffDisableDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1375
    const/4 v7, 0x1

    goto :goto_0

    .line 1378
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v6    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v3

    .line 1379
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "ScoverManager"

    const-string v9, "RemoteException in unregisterNfcTouchListener: "

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getCoverManagerVersion()I
    .locals 6

    .prologue
    .line 264
    const/high16 v2, 0x1000000

    .line 265
    .local v2, "serviceVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    :try_start_0
    const-class v3, Lcom/samsung/android/cover/ICoverManager;

    const-string/jumbo v4, "getVersion"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 268
    .local v1, "methodGetVersion":Ljava/lang/reflect/Method;
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 273
    .end local v1    # "methodGetVersion":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    const-string v3, "ScoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serviceVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return v2

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ScoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getVersion failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 590
    const/high16 v10, 0x1010000

    .line 591
    .local v10, "hasAttachFieldVersion":I
    const/high16 v11, 0x1020000

    .line 592
    .local v11, "hasModelFieldVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v1

    if-nez v1, :cond_0

    .line 593
    const-string v1, "ScoverManager"

    const-string/jumbo v2, "getCoverState : This device is not supported cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v13

    .line 628
    :goto_0
    return-object v0

    .line 597
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v12

    .line 598
    .local v12, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v12, :cond_5

    .line 599
    invoke-interface {v12}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v8

    .line 600
    .local v8, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v8, :cond_4

    .line 601
    iget v1, v8, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    iget-boolean v1, v8, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v1, :cond_1

    .line 602
    const-string v1, "ScoverManager"

    const-string/jumbo v2, "getCoverState : type of cover is nfc smart cover and cover is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v13

    .line 603
    goto :goto_0

    .line 606
    :cond_1
    const/high16 v1, 0x1020000

    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v8, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v8, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v8, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v8, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v8, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v8, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v7, v8, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZI)V

    .local v0, "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_0

    .line 611
    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_2
    const/high16 v1, 0x1010000

    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 612
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v8, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v8, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v8, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v8, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v8, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v8, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZ)V

    .restart local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_0

    .line 616
    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v8, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v8, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v8, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v8, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v8, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    .restart local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_0

    .line 622
    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_4
    const-string v1, "ScoverManager"

    const-string/jumbo v2, "getCoverState : coverState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v12    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_5
    :goto_1
    move-object v0, v13

    .line 628
    goto :goto_0

    .line 625
    :catch_0
    move-exception v9

    .line 626
    .local v9, "e":Landroid/os/RemoteException;
    const-string v1, "ScoverManager"

    const-string v2, "RemoteException in getCoverState: "

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getServiceVersionName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 278
    sget v3, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v0, v3, 0xff

    .line 279
    .local v0, "majorVersion":I
    sget v3, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v1, v3, 0xff

    .line 280
    .local v1, "minorVersion":I
    sget v3, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    const v4, 0xffff

    and-int v2, v3, v4

    .line 282
    .local v2, "revisions":I
    const-string v3, "%d.%d.%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method isSmartCover()Z
    .locals 4

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, "isSmartCover":Z
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 216
    .local v0, "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v0, :cond_0

    .line 217
    iget v2, v0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    .line 218
    const/4 v1, 0x1

    .line 221
    :cond_0
    return v1
.end method

.method isSupportCover()Z
    .locals 1

    .prologue
    .line 204
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSupportNfcLedCover()Z
    .locals 1

    .prologue
    .line 241
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportSViewCover()Z
    .locals 1

    .prologue
    .line 231
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportTypeOfCover(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 252
    packed-switch p1, :pswitch_data_0

    .line 259
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 254
    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    goto :goto_0

    .line 257
    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registerLedSystemListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V
    .locals 10
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 1115
    const/high16 v3, 0x1040000

    .line 1116
    .local v3, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1117
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerLedSystemListener : This device does not support cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerLedSystemListener"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1123
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerLedSystemListener : This device does not support NFC Led cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1127
    :cond_2
    const/high16 v7, 0x1040000

    invoke-static {v7}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1128
    new-instance v7, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v8, "This device does not support this function. Device is must higher then v1.4.0"

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 1133
    :cond_3
    if-nez p1, :cond_4

    .line 1134
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerLedSystemListener : listener is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1138
    :cond_4
    const/4 v5, 0x0

    .line 1140
    .local v5, "ledSystemEventListener":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1141
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;>;"
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1142
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;

    .line 1143
    .local v1, "delegate":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1144
    move-object v5, v1

    .line 1149
    .end local v1    # "delegate":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    :cond_6
    if-nez v5, :cond_7

    .line 1150
    new-instance v5, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;

    .end local v5    # "ledSystemEventListener":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, p1, v7, v8}, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 1151
    .restart local v5    # "ledSystemEventListener":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    :cond_7
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    .line 1156
    .local v6, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v6, :cond_0

    .line 1157
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 1160
    const/4 v7, 0x4

    invoke-interface {v6, v7, v5, v0}, Lcom/samsung/android/cover/ICoverManager;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1163
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v6    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 1164
    .local v2, "e":Landroid/os/RemoteException;
    const-string v7, "ScoverManager"

    const-string v8, "RemoteException in registerLedSystemListener: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V
    .locals 10
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 409
    const/high16 v4, 0x1010000

    .line 410
    .local v4, "functionVersion":I
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerListener"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v7

    if-nez v7, :cond_1

    .line 412
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerListener : This device is not supported cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 417
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerListener : If cover is smart cover, it does not need to register listener of intenal App"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    :cond_2
    const/high16 v7, 0x1010000

    invoke-static {v7}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 422
    new-instance v7, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v8, "This device is not supported this function. Device is must higher then v1.1.0"

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 427
    :cond_3
    if-nez p1, :cond_4

    .line 428
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerListener : listener is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_4
    const/4 v1, 0x0

    .line 434
    .local v1, "coverListener":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 435
    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;>;"
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 436
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;

    .line 437
    .local v2, "delegate":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 438
    move-object v1, v2

    .line 443
    .end local v2    # "delegate":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    :cond_6
    if-nez v1, :cond_7

    .line 444
    new-instance v1, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;

    .end local v1    # "coverListener":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v7, v8}, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 445
    .restart local v1    # "coverListener":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_7
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    .line 450
    .local v6, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v6, :cond_0

    .line 451
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 454
    const/4 v7, 0x2

    invoke-interface {v6, v1, v0, v7}, Lcom/samsung/android/cover/ICoverManager;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v6    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v3

    .line 459
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "ScoverManager"

    const-string v8, "RemoteException in registerListener: "

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 345
    const-string v0, "ScoverManager"

    const-string/jumbo v1, "registerListener : Use deprecated API!! Change ScoverStateListener to StateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .prologue
    .line 355
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "registerListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_1

    .line 357
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "registerListener : This device is not supported cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 362
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "registerListener : If cover is smart cover, it does not need to register listener of intenal App"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    :cond_2
    if-nez p1, :cond_3

    .line 367
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    :cond_3
    const/4 v1, 0x0

    .line 373
    .local v1, "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 374
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/CoverListenerDelegate;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 375
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;

    .line 376
    .local v2, "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 377
    move-object v1, v2

    .line 382
    .end local v2    # "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    :cond_5
    if-nez v1, :cond_6

    .line 383
    new-instance v1, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;

    .end local v1    # "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v6, v7}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 384
    .restart local v1    # "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 389
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    .line 390
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 393
    invoke-interface {v5, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v3

    .line 397
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "ScoverManager"

    const-string v7, "RemoteException in registerListener: "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerNfcTouchListener(ILcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 777
    const/high16 v3, 0x1030000

    .line 778
    .local v3, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v7

    if-nez v7, :cond_1

    .line 779
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerNfcTouchListener : This device does not support cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerNfcTouchListener"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v7

    if-nez v7, :cond_2

    .line 785
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerNfcTouchListener : This device does not support NFC Led cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 789
    :cond_2
    const/high16 v7, 0x1030000

    invoke-static {v7}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 790
    new-instance v7, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v8, "This device does not support this function. Device is must higher then v1.3.0"

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 795
    :cond_3
    if-nez p2, :cond_4

    .line 796
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerNfcTouchListener : listener is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 800
    :cond_4
    const/4 v5, 0x0

    .line 802
    .local v5, "nfcTouchListener":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 803
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;>;"
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 804
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;

    .line 805
    .local v1, "delegate":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 806
    move-object v5, v1

    .line 811
    .end local v1    # "delegate":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    :cond_6
    if-nez v5, :cond_7

    .line 812
    new-instance v5, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;

    .end local v5    # "nfcTouchListener":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, p2, v7, v8}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;Landroid/content/Context;)V

    .line 813
    .restart local v5    # "nfcTouchListener":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    :cond_7
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    .line 818
    .local v6, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v6, :cond_0

    .line 819
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 822
    invoke-interface {v6, p1, v5, v0}, Lcom/samsung/android/cover/ICoverManager;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 825
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v6    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 826
    .local v2, "e":Landroid/os/RemoteException;
    const-string v7, "ScoverManager"

    const-string v8, "RemoteException in registerNfcTouchListener: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 973
    const/high16 v1, 0x1040000

    .line 974
    .local v1, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v3

    if-nez v3, :cond_1

    .line 975
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "removeLedNotification : This device does not support cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v3

    if-nez v3, :cond_2

    .line 980
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "removeLedNotification : This device does not support NFC Led cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 984
    :cond_2
    const/high16 v3, 0x1040000

    invoke-static {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 985
    new-instance v3, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v4, "This device does not support this function. Device is must higher then v1.4.0"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 990
    :cond_3
    if-nez p1, :cond_4

    .line 991
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "removeLedNotification : Null notification data!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 995
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 997
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_0

    .line 998
    :try_start_0
    invoke-interface {v2, p1}, Lcom/samsung/android/cover/ICoverManager;->removeLedNotification(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "removeLedNotification in sendData to NFC : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendDataToCover(I[B)V
    .locals 6
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 677
    const/high16 v1, 0x1020000

    .line 678
    .local v1, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v3

    if-nez v3, :cond_1

    .line 679
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "sendDataToCover : This device is not supported cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 684
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "sendDataToCover : If cover is smart cover, it does not need to send the data to cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 688
    :cond_2
    const/high16 v3, 0x1020000

    invoke-static {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 689
    new-instance v3, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v4, "This device is not supported this function. Device is must higher then v1.2.0"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 693
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 695
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_0

    .line 696
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->sendDataToCover(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ScoverManager"

    const-string v4, "RemoteException in sendData : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendDataToNfcLedCover(I[B)V
    .locals 6
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 900
    const/high16 v1, 0x1030000

    .line 901
    .local v1, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v3

    if-nez v3, :cond_1

    .line 902
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "sendDataToNfcLedCover : This device does not support cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v3

    if-nez v3, :cond_2

    .line 907
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "sendDataToNfcLedCover : This device does not support NFC Led cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 911
    :cond_2
    const/high16 v3, 0x1030000

    invoke-static {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 912
    new-instance v3, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v4, "This device does not support this function. Device is must higher then v1.3.0"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 917
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 919
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_0

    .line 920
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->sendDataToNfcLedCover(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ScoverManager"

    const-string v4, "RemoteException in sendData to NFC : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 1014
    const/high16 v1, 0x1060000

    .line 1015
    .local v1, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1016
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "sendSystemEvent : This device does not support cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1021
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "sendSystemEvent : This device does not support NFC Led cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1025
    :cond_2
    const/high16 v3, 0x1060000

    invoke-static {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1026
    new-instance v3, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v4, "This device does not support this function. Device is must higher then v1.6.0"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 1031
    :cond_3
    if-nez p1, :cond_4

    .line 1032
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "sendSystemEvent : Null system event data!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1036
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 1038
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_0

    .line 1039
    :try_start_0
    invoke-interface {v2, p1}, Lcom/samsung/android/cover/ICoverManager;->sendSystemEvent(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "sendSystemEvent in sendData to NFC : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCoverModeToWindow(Landroid/view/Window;I)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "coverMode"    # I

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportSViewCover()Z

    move-result v1

    if-nez v1, :cond_1

    .line 326
    const-string v1, "ScoverManager"

    const-string/jumbo v2, "setSViewCoverModeToWindow : This device is not supported s view cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 330
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 331
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public unregisterLedSystemEventListener(Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 1178
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterLedSystemEventListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/high16 v2, 0x1040000

    .line 1180
    .local v2, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1181
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterLedSystemEventListener : This device does not support cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1186
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterLedSystemEventListener : This device does not support NFC Led cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1190
    :cond_2
    const/high16 v6, 0x1040000

    invoke-static {v6}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1191
    new-instance v6, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v7, "This device does not support this function. Device is must higher then v1.4.0"

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1196
    :cond_3
    if-nez p1, :cond_4

    .line 1197
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterLedSystemEventListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1201
    :cond_4
    const/4 v4, 0x0

    .line 1203
    .local v4, "ledSystemEventListener":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1204
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1205
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;

    .line 1206
    .local v0, "delegate":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1207
    move-object v4, v0

    .line 1212
    .end local v0    # "delegate":Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
    :cond_6
    if-eqz v4, :cond_0

    .line 1217
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 1218
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    .line 1219
    invoke-interface {v5, v4}, Lcom/samsung/android/cover/ICoverManager;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1220
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mLedSystemEventListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1223
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v1

    .line 1224
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "ScoverManager"

    const-string v7, "RemoteException in unregisterLedSystemEventListener: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 533
    const/high16 v3, 0x1010000

    .line 534
    .local v3, "functionVersion":I
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_1

    .line 536
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterListener : This device is not supported cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 541
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterListener : If cover is smart cover, it does not need to unregister listener of intenal App"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 545
    :cond_2
    const/high16 v6, 0x1010000

    invoke-static {v6}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 546
    new-instance v6, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v7, "This device is not supported this function. Device is must higher then v1.1.0"

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 551
    :cond_3
    if-nez p1, :cond_4

    .line 552
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 556
    :cond_4
    const/4 v0, 0x0

    .line 558
    .local v0, "coverListener":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 559
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;>;"
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 560
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;

    .line 561
    .local v1, "delegate":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 562
    move-object v0, v1

    .line 567
    .end local v1    # "delegate":Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
    :cond_6
    if-eqz v0, :cond_0

    .line 572
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 573
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    .line 574
    invoke-interface {v5, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 575
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 578
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 579
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "ScoverManager"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 472
    const-string v0, "ScoverManager"

    const-string/jumbo v1, "unregisterListener : Use deprecated API!! Change ScoverStateListener to StateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .prologue
    .line 482
    const-string v5, "ScoverManager"

    const-string/jumbo v6, "unregisterListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v5

    if-nez v5, :cond_1

    .line 484
    const-string v5, "ScoverManager"

    const-string/jumbo v6, "unregisterListener : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSmartCover()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 489
    const-string v5, "ScoverManager"

    const-string/jumbo v6, "unregisterListener : If cover is smart cover, it does not need to unregister listener of intenal App"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    :cond_2
    if-nez p1, :cond_3

    .line 494
    const-string v5, "ScoverManager"

    const-string/jumbo v6, "unregisterListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    :cond_3
    const/4 v0, 0x0

    .line 500
    .local v0, "coverListener":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 501
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/CoverListenerDelegate;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 502
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;

    .line 503
    .local v1, "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 504
    move-object v0, v1

    .line 509
    .end local v1    # "delegate":Lcom/samsung/android/sdk/cover/CoverListenerDelegate;
    :cond_5
    if-eqz v0, :cond_0

    .line 514
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .line 515
    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_0

    .line 516
    invoke-interface {v4, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 517
    iget-object v5, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 521
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "ScoverManager"

    const-string v6, "RemoteException in unregisterListener: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterNfcTouchListener(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 840
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterNfcTouchListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const/high16 v2, 0x1030000

    .line 842
    .local v2, "functionVersion":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_1

    .line 843
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterNfcTouchListener : This device does not support cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportNfcLedCover()Z

    move-result v6

    if-nez v6, :cond_2

    .line 848
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterNfcTouchListener : This device does not support NFC Led cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 852
    :cond_2
    const/high16 v6, 0x1030000

    invoke-static {v6}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 853
    new-instance v6, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v7, "This device does not support this function. Device is must higher then v1.3.0"

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 858
    :cond_3
    if-nez p1, :cond_4

    .line 859
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterNfcTouchListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 863
    :cond_4
    const/4 v4, 0x0

    .line 865
    .local v4, "nfcTouchListener":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 866
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 867
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;

    .line 868
    .local v0, "delegate":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 869
    move-object v4, v0

    .line 874
    .end local v0    # "delegate":Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
    :cond_6
    if-eqz v4, :cond_0

    .line 879
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 880
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    .line 881
    invoke-interface {v5, v4}, Lcom/samsung/android/cover/ICoverManager;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 882
    iget-object v6, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 885
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v1

    .line 886
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "ScoverManager"

    const-string v7, "RemoteException in unregisterNfcTouchListener: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
