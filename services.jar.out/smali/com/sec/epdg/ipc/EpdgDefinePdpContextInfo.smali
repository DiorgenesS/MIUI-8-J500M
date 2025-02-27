.class public Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;
.super Ljava/lang/Object;
.source "EpdgDefinePdpContextInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[DEFINEPDPCONTEXTINFO]"


# instance fields
.field private mApnName:[Ljava/lang/String;

.field private mCid:I

.field private mIpv4Addr:Ljava/lang/String;

.field private mIpv6Addr:Ljava/lang/String;

.field private mPcscfReq:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(I[B[B[BI)V
    .locals 5
    .param p1, "cid"    # I
    .param p2, "apnName"    # [B
    .param p3, "ipv6Addr"    # [B
    .param p4, "ipv4Addr"    # [B
    .param p5, "pcscfReq"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mCid:I

    .line 25
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    .line 26
    .local v1, "data":Ljava/lang/String;
    const-string v3, "\u0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mApnName:[Ljava/lang/String;

    .line 30
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 31
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mIpv6Addr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v0    # "address":Ljava/net/InetAddress;
    :goto_0
    :try_start_1
    invoke-static {p4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 39
    .restart local v0    # "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mIpv4Addr:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .end local v0    # "address":Ljava/net/InetAddress;
    :goto_1
    iput p5, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mPcscfReq:I

    .line 46
    return-void

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v3, "[DEFINEPDPCONTEXTINFO]"

    const-string v4, "Unexpected problem creating IPv6 Address"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v2

    .line 41
    .restart local v2    # "e":Ljava/net/UnknownHostException;
    const-string v3, "[DEFINEPDPCONTEXTINFO]"

    const-string v4, "Unexpected problem creating IPv4 Address"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getApnName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mApnName:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mCid:I

    return v0
.end method

.method public getIpv4Addr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mIpv4Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6Addr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mIpv6Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getPcscfReq()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgDefinePdpContextInfo;->mPcscfReq:I

    return v0
.end method
