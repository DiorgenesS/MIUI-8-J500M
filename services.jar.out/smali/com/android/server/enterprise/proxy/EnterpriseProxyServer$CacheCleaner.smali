.class Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;
.super Ljava/util/TimerTask;
.source "EnterpriseProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheCleaner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheCleaner"


# instance fields
.field private enterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)V
    .locals 0
    .param p1, "enterpriseProxyServer"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;->enterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .line 179
    return-void
.end method

.method private updateAuthenticatorCacheIfNeeded(Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)V
    .locals 3
    .param p1, "currentAuthenticator"    # Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .param p2, "proxyString"    # Ljava/lang/String;
    .param p3, "expectedAuthenticator"    # Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    .prologue
    .line 236
    invoke-interface {p1}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const-string v0, "CacheCleaner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replacing authenticaticator proxy cache for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_0
    return-void
.end method

.method private updateCredentialsCacheIfNeeded([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;Ljava/lang/String;)V
    .locals 6
    .param p1, "fakeRequestLine"    # [Ljava/lang/String;
    .param p2, "proxyString"    # Ljava/lang/String;
    .param p3, "expectedAuthenticator"    # Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .param p4, "credentials"    # Ljava/lang/String;

    .prologue
    .line 219
    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 223
    .local v0, "proxy":Ljava/net/Proxy;
    invoke-interface {p3, p4, v0, p1}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->verifyAuthenticationCredentials(Ljava/lang/String;Ljava/net/Proxy;[Ljava/lang/String;)I

    move-result v1

    .line 225
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 226
    const-string v2, "CacheCleaner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing credentials proxy cache for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string v2, "CacheCleaner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy cache for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " still valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 183
    iget-object v7, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;->enterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    if-nez v7, :cond_1

    .line 215
    :cond_0
    return-void

    .line 187
    :cond_1
    const-string v7, "CacheCleaner"

    const-string v8, "Starting run to clean enterprise proxy cache"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 190
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 193
    .local v0, "authenticationTypeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;>;"
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "http://www.samsung.com"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "HTTP/1.1"

    aput-object v8, v6, v7

    .line 196
    .local v6, "requestLine":[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 198
    .local v5, "proxyString":Ljava/lang/String;
    const-string v7, "CacheCleaner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking proxy cache for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v7, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;->enterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    # invokes: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getRequiredAuthenticationType(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    invoke-static {v7, v5, v6}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$100(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v3

    .line 202
    .local v3, "expectedAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    invoke-direct {p0, v7, v5, v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;->updateAuthenticatorCacheIfNeeded(Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)V

    .line 204
    invoke-interface {v3}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->isCredentialRequired()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 205
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    .local v1, "credentials":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 207
    invoke-direct {p0, v6, v5, v3, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;->updateCredentialsCacheIfNeeded([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v1    # "credentials":Ljava/lang/String;
    :cond_3
    const-string v7, "CacheCleaner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing credential proxy cache for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    # getter for: Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
