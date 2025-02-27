.class Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;
.super Ljava/lang/Object;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkIdInfo"
.end annotation


# instance fields
.field private final mDns1:Ljava/lang/String;

.field private final mDns2:Ljava/lang/String;

.field private final mNetId:I

.field private mUsageCounter:I

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "netId"    # I
    .param p3, "dns1"    # Ljava/lang/String;
    .param p4, "dns2"    # Ljava/lang/String;

    .prologue
    .line 1587
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1582
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mUsageCounter:I

    .line 1588
    iput p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mNetId:I

    .line 1589
    iput-object p3, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mDns1:Ljava/lang/String;

    .line 1590
    iput-object p4, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mDns2:Ljava/lang/String;

    .line 1591
    return-void
.end method


# virtual methods
.method public declared-synchronized decreaseCounter()I
    .locals 1

    .prologue
    .line 1600
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mUsageCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mUsageCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDns1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mDns1:Ljava/lang/String;

    return-object v0
.end method

.method public getDns2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mDns2:Ljava/lang/String;

    return-object v0
.end method

.method public getNetId()I
    .locals 1

    .prologue
    .line 1616
    iget v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mNetId:I

    return v0
.end method

.method public hasDns2()Z
    .locals 1

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mDns2:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized increaseCounter()I
    .locals 1

    .prologue
    .line 1595
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mUsageCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mUsageCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1621
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{Net Id= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mNetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , DNS(1)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mDns1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , DNS(2)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mDns2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , counter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mUsageCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
