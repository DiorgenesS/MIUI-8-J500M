.class public final Lcom/sec/epdg/EpdgServerSelection;
.super Ljava/lang/Object;
.source "EpdgServerSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgServerSelection$1;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/sec/epdg/EpdgServerSelection; = null

.field private static final MAX_DNS_RETRY_COUNT:I = 0x3

.field private static final MIN_DNS_RETRY_COUNT:I = 0x1

.field private static final NO_EPDG_SERVER_IP:Ljava/lang/String; = "NoEpdgServerIp"

.field private static final TAG:Ljava/lang/String; = "[EpdgServerSelection]"


# instance fields
.field private mCurrentEpdgIpCounter:I

.field private mDnsTimeout:Z

.field private mEpdgServerIpAddress:Ljava/net/InetAddress;

.field private mEpdgServerIpArray:[Ljava/net/InetAddress;

.field private mIpv6AddressUpdated:Z

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field private mUseHome:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgServerSelection;->INSTANCE:Lcom/sec/epdg/EpdgServerSelection;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;

    .line 28
    iput-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    .line 29
    iput v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    .line 30
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mIpv6AddressUpdated:Z

    .line 33
    iput-boolean v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    .line 38
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mDnsTimeout:Z

    .line 43
    iput v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    .line 44
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mIpv6AddressUpdated:Z

    .line 45
    iput-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    .line 46
    iput-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;

    .line 47
    iput-boolean v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    .line 48
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    .local v0, "ctx":Landroid/content/Context;
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 51
    return-void
.end method

.method private declared-synchronized getCachedEpdgServerIpAddress()Ljava/net/InetAddress;
    .locals 4

    .prologue
    .line 158
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "[EpdgServerSelection]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCachedEpdgServerIpAddress() epdg server ip address is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/EpdgServerSelection;
    .locals 3

    .prologue
    .line 57
    const-class v1, Lcom/sec/epdg/EpdgServerSelection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/EpdgServerSelection;->INSTANCE:Lcom/sec/epdg/EpdgServerSelection;

    if-nez v0, :cond_0

    .line 58
    const-string v0, "[EpdgServerSelection]"

    const-string v2, "Creating EpdgServerSelection instance"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/sec/epdg/EpdgServerSelection;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgServerSelection;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgServerSelection;->INSTANCE:Lcom/sec/epdg/EpdgServerSelection;

    .line 61
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgServerSelection;->INSTANCE:Lcom/sec/epdg/EpdgServerSelection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIpv6AddressUpdated()Z
    .locals 3

    .prologue
    .line 65
    const-string v0, "[EpdgServerSelection]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIpv6AddressUpdated(): returning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mIpv6AddressUpdated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mIpv6AddressUpdated:Z

    return v0
.end method

.method private isIpPoolAndCounterValid()Z
    .locals 4

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 169
    :cond_0
    const-string v1, "[EpdgServerSelection]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isIpPoolAndCounterValid: mEpdgServerIpArray is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCurrentEpdgIpCounter is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "returning result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return v0
.end method

.method private declared-synchronized peekAndAddRouteForNextEpdgServerIp()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 388
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    if-eqz v4, :cond_4

    .line 389
    const-string v4, "[EpdgServerSelection]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCurrentEpdgIpCounter is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mEpdgServerIpArray.length is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    iget-object v5, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3

    .line 392
    const-string v4, "[EpdgServerSelection]"

    const-string v5, "Next epdg ip address is available, remove route for existing epdg ip and add route for next epdg ip"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    add-int/lit8 v1, v4, 0x1

    .line 395
    .local v1, "tempIpCounter":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 397
    .local v0, "mConnMgr":Landroid/net/ConnectivityManager;
    iget v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    if-ltz v4, :cond_0

    .line 399
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v6, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/net/ConnectivityManager;->removeRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 401
    const/4 v4, 0x0

    const-string v5, "[EpdgServerSelection]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Route deletion of current epdg ip: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is successful"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
    :goto_0
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    aget-object v5, v5, v1

    invoke-virtual {v0, v4, v5}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 410
    const/4 v3, 0x0

    const-string v4, "[EpdgServerSelection]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Route addition for new epdg ip: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is successful"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 414
    iput v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    .end local v0    # "mConnMgr":Landroid/net/ConnectivityManager;
    .end local v1    # "tempIpCounter":I
    :goto_1
    monitor-exit p0

    return v2

    .line 404
    .restart local v0    # "mConnMgr":Landroid/net/ConnectivityManager;
    .restart local v1    # "tempIpCounter":I
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    const-string v5, "[EpdgServerSelection]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Route deletion fails for current epdg server ip: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 388
    .end local v0    # "mConnMgr":Landroid/net/ConnectivityManager;
    .end local v1    # "tempIpCounter":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 417
    .restart local v0    # "mConnMgr":Landroid/net/ConnectivityManager;
    .restart local v1    # "tempIpCounter":I
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    const-string v4, "[EpdgServerSelection]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Route addition fails for new epdg server ip: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v7, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 419
    goto :goto_1

    .line 422
    .end local v0    # "mConnMgr":Landroid/net/ConnectivityManager;
    .end local v1    # "tempIpCounter":I
    :cond_3
    const-string v2, "[EpdgServerSelection]"

    const-string/jumbo v4, "peekAndAddRouteForNextEpdgServerIp: No new epdg server ip is available"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 424
    goto :goto_1

    .line 427
    :cond_4
    const-string v2, "[EpdgServerSelection]"

    const-string/jumbo v4, "peekAndAddRouteForNextEpdgServerIp: mEpdgServerIpArray itself is not initialized, returning false"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    .line 429
    goto :goto_1
.end method

.method private performDnsAndAddRoute(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 12
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 493
    const/4 v6, 0x0

    .line 494
    .local v6, "mConnMgr":Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v10, "connectivity"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "mConnMgr":Landroid/net/ConnectivityManager;
    check-cast v6, Landroid/net/ConnectivityManager;

    .line 497
    .restart local v6    # "mConnMgr":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    .line 498
    .local v4, "inetAddressArray":[Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 499
    const-string v8, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ip addresses returned after DNS is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    array-length v8, v4

    if-nez v8, :cond_0

    .line 502
    const-string v8, "[EpdgServerSelection]"

    const-string/jumbo v10, "performDnsAndAddRoute: No ip address is returned."

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v9

    .line 602
    .end local v4    # "inetAddressArray":[Ljava/net/InetAddress;
    :goto_0
    return-object v4

    .line 505
    .restart local v4    # "inetAddressArray":[Ljava/net/InetAddress;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    array-length v8, v4

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 507
    .local v5, "inetAddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    if-nez v5, :cond_1

    move-object v4, v9

    .line 508
    goto :goto_0

    .line 510
    :cond_1
    const/4 v1, 0x0

    .line 515
    .local v1, "address":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v8

    if-nez v8, :cond_7

    .line 516
    const/4 v3, 0x0

    .local v3, "iloop":I
    :goto_1
    array-length v8, v4

    if-ge v3, v8, :cond_2

    .line 517
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "IPv6 address support is not enabled"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    aget-object v8, v4, v3

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 520
    const-string v10, "[EpdgServerSelection]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Added EPDG FQDN resolved to IPv4 address to list: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "Suppressed"

    :goto_2
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    aget-object v8, v4, v3

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    sget-boolean v8, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    if-nez v8, :cond_5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportMultiEpdgServerIP()Z

    move-result v8

    if-nez v8, :cond_5

    .line 577
    :cond_2
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 578
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "All ip addresses format of epdg server is invalid"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v9

    .line 579
    goto :goto_0

    :cond_3
    move-object v8, v1

    .line 520
    goto :goto_2

    .line 527
    :cond_4
    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 528
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "Ignoring the EPDG FQDN resolved to IPv6 address, as user selected to use IPV4 address"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 530
    :cond_6
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "Invalid Address format of epdg server, try another ip address"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 600
    .end local v1    # "address":Ljava/lang/String;
    .end local v3    # "iloop":I
    .end local v5    # "inetAddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :catch_0
    move-exception v2

    .line 601
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v8, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DNS resolution failed for epdg server"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v9

    .line 602
    goto/16 :goto_0

    .line 535
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v5    # "inetAddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_7
    const/4 v7, 0x0

    .line 536
    .local v7, "prefAddrIndex":I
    const/4 v3, 0x0

    .restart local v3    # "iloop":I
    :goto_5
    :try_start_1
    array-length v8, v4

    if-ge v3, v8, :cond_a

    .line 537
    const-string v8, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InetAddress is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v4, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    aget-object v8, v4, v3

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 539
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Preferred()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 540
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "IPv6 address support is enabled and ipv6 is preferred"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 542
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    aget-object v10, v4, v3

    invoke-virtual {v5, v8, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 536
    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 544
    :cond_9
    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 545
    const-string v8, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "performDnsAndAddRoute: prefAddrIndex is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    aget-object v8, v4, v3

    invoke-virtual {v5, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 547
    add-int/lit8 v7, v7, 0x1

    .line 548
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/sec/epdg/EpdgServerSelection;->setIpv6AddressUpdated(Z)V

    .line 549
    sget-boolean v8, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    if-nez v8, :cond_8

    .line 575
    :cond_a
    :goto_7
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "Added address to list: "

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 553
    :cond_b
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "Invalid Address format of epdg server, try another ip address"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 557
    :cond_c
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "IPv6 address support is enabled but ipv6 is not preferred"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 559
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    aget-object v10, v4, v3

    invoke-virtual {v5, v8, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 561
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/sec/epdg/EpdgServerSelection;->setIpv6AddressUpdated(Z)V

    goto :goto_6

    .line 562
    :cond_d
    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 563
    aget-object v8, v4, v3

    invoke-virtual {v5, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 564
    const-string v8, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "performDnsAndAddRoute: prefAddrIndex is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    add-int/lit8 v7, v7, 0x1

    .line 566
    sget-boolean v8, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    if-nez v8, :cond_8

    goto :goto_7

    .line 570
    :cond_e
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "Invalid Address format of epdg server, try another ip address"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 584
    .end local v7    # "prefAddrIndex":I
    :cond_f
    sget-boolean v8, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    if-nez v8, :cond_10

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportMultiEpdgServerIP()Z

    move-result v8

    if-nez v8, :cond_10

    .line 586
    const-string v8, "[EpdgServerSelection]"

    const-string v10, "Multiple ip address support is disabled, copying 1st ip address"

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/net/InetAddress;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Ljava/net/InetAddress;

    move-object v4, v0

    .line 594
    :goto_8
    const-string v8, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Number of ip addresses returned in DNS query response after parsing is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const/4 v8, 0x1

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v6, v8, v10}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    goto/16 :goto_0

    .line 591
    :cond_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/net/InetAddress;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Ljava/net/InetAddress;

    move-object v4, v0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8
.end method

.method private declared-synchronized performDnsAndSetEpdgServerIpPoolInternal(I)Z
    .locals 12
    .param p1, "dnsRetryCount"    # I

    .prologue
    const/4 v11, 0x1

    .line 352
    monitor-enter p0

    const/4 v6, 0x0

    .line 353
    .local v6, "result":Z
    const-wide/16 v0, 0x0

    .line 354
    .local v0, "dnsBegin":J
    const-wide/16 v2, 0x0

    .line 355
    .local v2, "dnsEnd":J
    :try_start_0
    iget-boolean v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    invoke-virtual {p0, v8}, Lcom/sec/epdg/EpdgServerSelection;->generateEpdgFqdn(Z)Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "epdgServerIP":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 357
    const-string v8, "[EpdgServerSelection]"

    const-string/jumbo v9, "performDnsAndSetEpdgServerIpPool: ERROR!!! epdg FQDN is null, returning"

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v6

    .line 384
    .end local v6    # "result":Z
    .local v7, "result":I
    :goto_0
    monitor-exit p0

    return v7

    .line 360
    .end local v7    # "result":I
    .restart local v6    # "result":Z
    :cond_0
    :try_start_1
    const-string v9, "[EpdgServerSelection]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting epdg server ip address from FQDN: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "Suppressed"

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " dnsRetryCount "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 364
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2
    if-gt v5, p1, :cond_1

    .line 365
    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgServerSelection;->setEpdgServerIpPoolFromFqdn(Ljava/lang/String;)Z

    move-result v6

    .line 366
    if-ne v6, v11, :cond_4

    .line 368
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    .line 369
    const/4 v6, 0x1

    .line 377
    :cond_1
    if-nez v6, :cond_2

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 379
    sub-long v8, v2, v0

    const-wide/16 v10, 0x1388

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 380
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mDnsTimeout:Z

    .line 381
    const-string v8, "[EpdgServerSelection]"

    const-string v9, "DNS server does not respond"

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v7, v6

    .line 384
    .restart local v7    # "result":I
    goto :goto_0

    .end local v5    # "i":I
    .end local v7    # "result":I
    :cond_3
    move-object v8, v4

    .line 360
    goto :goto_1

    .line 372
    .restart local v5    # "i":I
    :cond_4
    if-ge v5, p1, :cond_5

    .line 373
    const-string v8, "[EpdgServerSelection]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DNS is failed doing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " retry"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 352
    .end local v4    # "epdgServerIP":Ljava/lang/String;
    .end local v5    # "i":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private declared-synchronized setEpdgServerIpPoolFromFqdn(Ljava/lang/String;)Z
    .locals 5
    .param p1, "epdgFqdn"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 228
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "[EpdgServerSelection]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEpdgServerIpPoolFromFqdn() ePDG FQDN is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/epdg/Log;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 229
    if-nez p1, :cond_1

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    .line 232
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    .line 233
    const-string v1, "[EpdgServerSelection]"

    const-string/jumbo v2, "setEpdgServerIpPoolFromFqdn() FQDN is null, resetting cached server ip to null"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 236
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndAddRoute(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    .line 237
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setIpv6AddressUpdated(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 70
    const-string v0, "[EpdgServerSelection]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIpv6AddressUpdated() value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgServerSelection;->mIpv6AddressUpdated:Z

    .line 72
    return-void
.end method


# virtual methods
.method public declared-synchronized cacheEpdgServerIpAddress()V
    .locals 4

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_2

    .line 183
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->isIpPoolAndCounterValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const-string v1, "[EpdgServerSelection]"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheEpdgServerIpAddress: Current ip address is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Suppressed"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_1
    monitor-exit p0

    return-void

    .line 184
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    aget-object v0, v0, v3

    goto :goto_0

    .line 188
    :cond_1
    const-string v0, "[EpdgServerSelection]"

    const-string v1, "Either Ip pool is null or ip counter is out of range"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 191
    :cond_2
    :try_start_2
    const-string v0, "[EpdgServerSelection]"

    const-string v1, "Ip address is already cached"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized checkAndAddRouteForNextEpdgServerIp()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 614
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportMultiEpdgServerIP()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    if-eqz v2, :cond_5

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_2

    .line 617
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->peekAndAddRouteForNextEpdgServerIp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 618
    const-string v0, "[EpdgServerSelection]"

    const-string v2, "New epdg server ip address is available"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 645
    :goto_0
    monitor-exit p0

    return v0

    .line 621
    :cond_1
    :try_start_1
    const-string v1, "[EpdgServerSelection]"

    const-string v2, "No new epdg server ip address is available"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 624
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isAnyPdnConnectedOverWifi()Z

    move-result v2

    if-nez v2, :cond_4

    .line 627
    const-string v2, "[EpdgServerSelection]"

    const-string v3, "First connection failed on IWLAN over last cached ip address, now checking from the first ip address from pool"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    sget-object v2, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {p0, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 631
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->peekAndAddRouteForNextEpdgServerIp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 632
    const-string v0, "[EpdgServerSelection]"

    const-string v2, "New epdg server ip address is available"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 633
    goto :goto_0

    .line 635
    :cond_3
    const-string v1, "[EpdgServerSelection]"

    const-string v2, "No new epdg server ip address is available"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_4
    const-string v1, "[EpdgServerSelection]"

    const-string v2, "Either ip pool is not initialized or No new epdg server ip address is available, returning false"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_5
    const-string v1, "[EpdgServerSelection]"

    const-string v2, "No new epdg server ip address is available"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public checkCachedEpdgServerIpForDnsQuery()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 673
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 674
    :cond_0
    const-string v1, "[EpdgServerSelection]"

    const-string/jumbo v2, "try Dns query - resetted"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :goto_0
    return v0

    .line 678
    :cond_1
    iget v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 679
    const-string v0, "[EpdgServerSelection]"

    const-string/jumbo v1, "ePDG IP Reamined"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const/4 v0, 0x1

    goto :goto_0

    .line 682
    :cond_2
    const-string v1, "[EpdgServerSelection]"

    const-string/jumbo v2, "try Dns query - No more exist epdg ip"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public generateEpdgFqdn(Z)Ljava/lang/String;
    .locals 12
    .param p1, "forceHome"    # Z

    .prologue
    .line 75
    const-string v8, "[EpdgServerSelection]"

    const-string v9, " generateEpdgFqdn(): "

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgFqdn()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "defaultFqdn":Ljava/lang/String;
    const-string v8, "NoEpdgServerIp"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 79
    const/4 v8, 0x0

    const-string v9, "[EpdgServerSelection]"

    const-string v10, "VoWIFI is not provisioning return null"

    invoke-static {v8, v9, v10}, Lcom/sec/epdg/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x0

    .line 154
    .end local v1    # "defaultFqdn":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 82
    .restart local v1    # "defaultFqdn":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsDynamicFqdn()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    .line 83
    const/4 v4, 0x0

    .local v4, "mcc":Ljava/lang/String;
    const/4 v5, 0x0

    .line 84
    .local v5, "mnc":Ljava/lang/String;
    const/4 v6, 0x0

    .line 85
    .local v6, "operatorNumeric":Ljava/lang/String;
    if-nez p1, :cond_6

    iget-object v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 86
    iget-object v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    .line 87
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 88
    :cond_1
    const/4 v8, 0x0

    const-string v9, "[EpdgServerSelection]"

    const-string v10, "can\'t read roaming operator plmnID"

    invoke-static {v8, v9, v10}, Lcom/sec/epdg/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getSimOperator()Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRJIL()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 91
    const-string v8, "[EpdgServerSelection]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Override operator Numeric for RJIL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    .local v0, "ctx":Landroid/content/Context;
    const/4 v3, 0x0

    .line 94
    .local v3, "imsi":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 95
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v8

    invoke-static {v0, v8}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 99
    :goto_1
    const-string v8, "[EpdgServerSelection]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "imsi "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-eqz v3, :cond_2

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x6

    if-le v8, v9, :cond_2

    .line 101
    const/4 v8, 0x0

    const/4 v9, 0x6

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 103
    :cond_2
    const-string v8, "[EpdgServerSelection]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "generateEpdgFqdn Changed operatorNumeric to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v3    # "imsi":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 128
    :cond_4
    const/4 v8, 0x0

    const-string v9, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "can\'t read sim MCC and MNC. use default : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/epdg/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    .restart local v0    # "ctx":Landroid/content/Context;
    .restart local v3    # "imsi":Ljava/lang/String;
    :cond_5
    const/4 v8, -0x1

    invoke-static {v0, v8}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 107
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v3    # "imsi":Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 108
    :cond_7
    const/4 v8, 0x0

    const-string v9, "[EpdgServerSelection]"

    const-string v10, "can\'t read roaming operator plmnID"

    invoke-static {v8, v9, v10}, Lcom/sec/epdg/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getSimOperator()Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRJIL()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 111
    const-string v8, "[EpdgServerSelection]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Override operator Numeric for RJIL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    .restart local v0    # "ctx":Landroid/content/Context;
    const/4 v3, 0x0

    .line 114
    .restart local v3    # "imsi":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 115
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v8

    invoke-static {v0, v8}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 119
    :goto_3
    const-string v8, "[EpdgServerSelection]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "imsi "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-eqz v3, :cond_8

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x6

    if-le v8, v9, :cond_8

    .line 121
    const/4 v8, 0x0

    const/4 v9, 0x6

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 123
    :cond_8
    const-string v8, "[EpdgServerSelection]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "generateEpdgFqdn Changed operatorNumeric to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 117
    :cond_9
    const/4 v8, -0x1

    invoke-static {v0, v8}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 131
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v3    # "imsi":Ljava/lang/String;
    :cond_a
    const-string v8, "[EpdgServerSelection]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "prepareFQDN: operatorNumeric:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_b

    .line 133
    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    :goto_4
    const/4 v7, 0x0

    .line 143
    .local v7, "prefix":Ljava/lang/String;
    const-string/jumbo v7, "epdg.epc.mnc"

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".mcc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".pub.3gppnetwork.org"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, "finalFQDN":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    const-string v9, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "New ePDG FQDN is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 135
    .end local v2    # "finalFQDN":Ljava/lang/StringBuilder;
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_c

    .line 136
    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 137
    const/4 v8, 0x3

    const/4 v9, 0x6

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 139
    :cond_c
    const/4 v8, 0x0

    const-string v9, "[EpdgServerSelection]"

    const-string/jumbo v10, "operator numeric has wrong length use default"

    invoke-static {v8, v9, v10}, Lcom/sec/epdg/Log;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    .end local v4    # "mcc":Ljava/lang/String;
    .end local v5    # "mnc":Ljava/lang/String;
    .end local v6    # "operatorNumeric":Ljava/lang/String;
    :cond_d
    const/4 v8, 0x0

    const-string v9, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t generate dynamic FQDN, returning static home FQDN:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized getEpdgServerIp()Ljava/net/InetAddress;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 441
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    const-string v3, "[EpdgServerSelection]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNextEpdgServerIp(): getIpv6AddressUpdated(): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getIpv6AddressUpdated()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " any pdn connected over wifi: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isAnyPdnConnectedOverWifi()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " cached ip is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Suppressed"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getIpv6AddressUpdated()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isAnyPdnConnectedOverWifi()Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgServerSelection;->setIpv6AddressUpdated(Z)V

    .line 449
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 451
    const-string v2, "[EpdgServerSelection]"

    const-string v3, "Cached ip is ipv4 but now the pool is updated with ipv6 address, so resetting the cached ipv4 address"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    sget-object v2, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {p0, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 459
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_7

    .line 460
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 461
    iget v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 462
    const-string v2, "[EpdgServerSelection]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCurrentEpdgIpCounter is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " It gets resetted with cached IP but as DNS is still valid, setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "it to first IP address of pool"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    .line 467
    :cond_1
    iget v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    iget-object v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 469
    iget-object v2, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    iget v3, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    aget-object v1, v2, v3

    .line 470
    .local v1, "newEpdgIp":Ljava/net/InetAddress;
    const-string v3, "[EpdgServerSelection]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning ip address: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Suppressed"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mCurrentEpdgIpCounter is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    .end local v1    # "newEpdgIp":Ljava/net/InetAddress;
    :goto_3
    monitor-exit p0

    return-object v1

    .line 442
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    goto/16 :goto_0

    .line 455
    .restart local v0    # "address":Ljava/lang/String;
    :cond_3
    const-string v2, "[EpdgServerSelection]"

    const-string v3, "Cached ip is ipv6, no need to reset the cache ip"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 441
    .end local v0    # "address":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "newEpdgIp":Ljava/net/InetAddress;
    :cond_4
    move-object v2, v1

    .line 470
    goto :goto_2

    .line 475
    .end local v1    # "newEpdgIp":Ljava/net/InetAddress;
    :cond_5
    :try_start_2
    const-string v2, "[EpdgServerSelection]"

    const-string v3, "No valid next epdg server ip address is present so, returning null ip address"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 480
    :cond_6
    const-string v2, "[EpdgServerSelection]"

    const-string/jumbo v3, "getEpdgServerIp: Epdg server ip pool is not  yet initialized, returning null ip address"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 485
    :cond_7
    const-string v3, "[EpdgServerSelection]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cached epdg server ip address is available, returning cached ip address: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Suppressed"

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_3

    .line 485
    :cond_8
    invoke-direct {p0}, Lcom/sec/epdg/EpdgServerSelection;->getCachedEpdgServerIpAddress()Ljava/net/InetAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_4
.end method

.method public declared-synchronized isEpdgServerDnsValid()Z
    .locals 4

    .prologue
    .line 656
    monitor-enter p0

    const/4 v0, 0x0

    .line 657
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 658
    const/4 v0, 0x1

    .line 660
    :cond_0
    const-string v1, "[EpdgServerSelection]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEpdgServerDnsValid(): returning result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    monitor-exit p0

    return v0

    .line 656
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z
    .locals 13
    .param p1, "reason"    # Lcom/sec/epdg/EpdgService$DnsRetryReason;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, "dnsRetryCount":I
    const/4 v5, 0x0

    .line 249
    .local v5, "nationalRoaming":Z
    const/4 v3, 0x0

    .line 250
    .local v3, "internationalRoaming":Z
    sget-object v8, Lcom/sec/epdg/EpdgServerSelection$1;->$SwitchMap$com$sec$epdg$EpdgService$DnsRetryReason:[I

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgService$DnsRetryReason;->ordinal()I

    move-result v11

    aget v8, v8, v11

    packed-switch v8, :pswitch_data_0

    .line 292
    const-string v8, "[EpdgServerSelection]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid DnsRetryReason received: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Invalid DnsRetryReason received"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 253
    :pswitch_0
    iget-object v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    if-ne v8, v10, :cond_0

    iget-object v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    if-nez v8, :cond_a

    :cond_0
    move v8, v10

    :goto_0
    iput-boolean v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    .line 255
    const-string v11, "[EpdgServerSelection]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "roaming ? "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    if-eqz v8, :cond_b

    const-string v8, "No"

    :goto_1
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v1, 0x3

    .line 257
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRJIL()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 260
    const/4 v4, 0x0

    .line 261
    .local v4, "mcc":Ljava/lang/String;
    const/4 v6, 0x0

    .line 262
    .local v6, "operatorNumeric":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    .line 263
    const-string v8, "[EpdgServerSelection]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Operator Numeric "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v11, 0x2

    if-le v8, v11, :cond_4

    .line 265
    const/4 v8, 0x3

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 266
    iget-boolean v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    if-nez v8, :cond_2

    const-string v8, "404"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "405"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 267
    :cond_1
    const/4 v5, 0x1

    .line 268
    const-string v11, "[EpdgServerSelection]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RJIL domestic roaming ? "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v5, :cond_c

    const-string v8, "Yes"

    :goto_2
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_2
    iget-boolean v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    if-nez v8, :cond_3

    if-nez v5, :cond_3

    .line 271
    const/4 v3, 0x1

    .line 272
    const-string v11, "[EpdgServerSelection]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RJIL international roaming ? "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v3, :cond_d

    const-string v8, "Yes"

    :goto_3
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_3
    iget-boolean v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    if-ne v8, v10, :cond_4

    const-string v8, "404"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "405"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 275
    const/4 v3, 0x1

    .line 276
    const-string v11, "[EpdgServerSelection]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RJIL international roaming ? "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v3, :cond_e

    const-string v8, "Yes"

    :goto_4
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .end local v4    # "mcc":Ljava/lang/String;
    .end local v6    # "operatorNumeric":Ljava/lang/String;
    :cond_4
    :goto_5
    sget-object v8, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_IPTYPE_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    if-eq p1, v8, :cond_5

    .line 296
    sget-object v8, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {p0, v8}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 299
    :cond_5
    const/4 v7, 0x0

    .line 300
    .local v7, "result":Z
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRJIL()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 301
    if-eq v5, v10, :cond_6

    iget-boolean v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    if-ne v8, v10, :cond_7

    :cond_6
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 302
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPoolInternal(I)Z

    move-result v7

    .line 303
    :cond_7
    if-nez v7, :cond_8

    iget-boolean v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    if-nez v8, :cond_8

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v8

    if-eqz v8, :cond_8

    if-nez v3, :cond_8

    .line 304
    iput-boolean v10, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    .line 305
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPoolInternal(I)Z

    move-result v7

    .line 307
    :cond_8
    if-nez v7, :cond_9

    .line 308
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_6
    if-gt v2, v1, :cond_9

    .line 309
    if-ne v3, v10, :cond_f

    .line 310
    const-string/jumbo v8, "internationalvowifi.jio.com"

    invoke-direct {p0, v8}, Lcom/sec/epdg/EpdgServerSelection;->setEpdgServerIpPoolFromFqdn(Ljava/lang/String;)Z

    move-result v7

    .line 314
    :goto_7
    if-ne v7, v10, :cond_10

    .line 316
    iput v9, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    .line 317
    const/4 v7, 0x1

    .line 346
    .end local v2    # "i":I
    :cond_9
    :goto_8
    const-string v8, "[EpdgServerSelection]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "performDnsAndSetEpdgServerIpPool: result is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " DnsRetryReason is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v8, v10}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 348
    return v7

    .end local v7    # "result":Z
    :cond_a
    move v8, v9

    .line 253
    goto/16 :goto_0

    .line 255
    :cond_b
    const-string v8, "Yes"

    goto/16 :goto_1

    .line 268
    .restart local v4    # "mcc":Ljava/lang/String;
    .restart local v6    # "operatorNumeric":Ljava/lang/String;
    :cond_c
    const-string/jumbo v8, "no"

    goto/16 :goto_2

    .line 272
    :cond_d
    const-string/jumbo v8, "no"

    goto/16 :goto_3

    .line 276
    :cond_e
    const-string/jumbo v8, "no"

    goto/16 :goto_4

    .line 284
    .end local v4    # "mcc":Ljava/lang/String;
    .end local v6    # "operatorNumeric":Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x3

    .line 285
    goto/16 :goto_5

    .line 289
    :pswitch_2
    const/4 v1, 0x1

    .line 290
    goto/16 :goto_5

    .line 312
    .restart local v2    # "i":I
    .restart local v7    # "result":Z
    :cond_f
    const-string/jumbo v8, "vowifi.jio.com"

    invoke-direct {p0, v8}, Lcom/sec/epdg/EpdgServerSelection;->setEpdgServerIpPoolFromFqdn(Ljava/lang/String;)Z

    move-result v7

    goto :goto_7

    .line 320
    :cond_10
    if-ge v2, v1, :cond_11

    .line 321
    const-string v8, "[EpdgServerSelection]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DNS is failed doing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " retry"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 327
    .end local v2    # "i":I
    :cond_12
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPoolInternal(I)Z

    move-result v7

    .line 328
    if-nez v7, :cond_13

    iget-boolean v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    if-nez v8, :cond_13

    .line 329
    iput-boolean v10, p0, Lcom/sec/epdg/EpdgServerSelection;->mUseHome:Z

    .line 330
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPoolInternal(I)Z

    move-result v7

    .line 332
    :cond_13
    if-nez v7, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_9

    .line 333
    const-string/jumbo v0, "ims"

    .line 334
    .local v0, "apnType":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/sec/epdg/EpdgServerSelection;->mDnsTimeout:Z

    if-eqz v8, :cond_14

    .line 335
    new-instance v8, Lcom/sec/epdg/IWlanError;

    sget-object v10, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_A_QUERY_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v11, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_A_QUERY_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {v11}, Lcom/sec/epdg/IWlanError$EpdgError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    invoke-static {v0, v8, v9}, Lcom/sec/epdg/EpdgService;->sendIpsecConnFailIntent(Ljava/lang/String;Lcom/sec/epdg/IWlanError;I)V

    .line 338
    iput-boolean v9, p0, Lcom/sec/epdg/EpdgServerSelection;->mDnsTimeout:Z

    goto/16 :goto_8

    .line 340
    :cond_14
    new-instance v8, Lcom/sec/epdg/IWlanError;

    sget-object v10, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v11, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {v11}, Lcom/sec/epdg/IWlanError$EpdgError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V

    invoke-static {v0, v8, v9}, Lcom/sec/epdg/EpdgService;->sendIpsecConnFailIntent(Ljava/lang/String;Lcom/sec/epdg/IWlanError;I)V

    goto/16 :goto_8

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V
    .locals 3
    .param p1, "reason"    # Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    const-string v0, "[EpdgServerSelection]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetEpdgServerIpAddressAndPool: reason is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/sec/epdg/EpdgServerSelection$1;->$SwitchMap$com$sec$epdg$EpdgService$EpdgServerIpResetReason:[I

    invoke-virtual {p1}, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 222
    const-string v0, "[EpdgServerSelection]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid epdg server ip reset reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid epdg server ip reset reason:"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :pswitch_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpArray:[Ljava/net/InetAddress;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :pswitch_1
    :try_start_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isAnyPdnConnectedOverWifi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mEpdgServerIpAddress:Ljava/net/InetAddress;

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/epdg/EpdgServerSelection;->mCurrentEpdgIpCounter:I

    goto :goto_0

    .line 217
    :cond_0
    const-string v0, "[EpdgServerSelection]"

    const-string v1, "Some PDN is still connected over wifi so, not resetting the address and counter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
