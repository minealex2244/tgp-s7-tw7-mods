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
    .line 183
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;->enterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .line 183
    return-void
.end method

.method private updateAuthenticatorCacheIfNeeded(Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)V
    .locals 3
    .param p1, "currentAuthenticator"    # Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .param p2, "proxyString"    # Ljava/lang/String;
    .param p3, "expectedAuthenticator"    # Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    .prologue
    .line 242
    invoke-interface {p1}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    const-string/jumbo v0, "CacheCleaner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Replacing authenticaticator proxy cache for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get3()Ljava/util/concurrent/ConcurrentHashMap;

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
    const/4 v4, 0x0

    .line 225
    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 226
    const-string/jumbo v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    .line 227
    const-string/jumbo v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 226
    invoke-static {v3, v4}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v3

    .line 225
    invoke-direct {v0, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 229
    .local v0, "proxy":Ljava/net/Proxy;
    invoke-interface {p3, p4, v0, p1}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->verifyAuthenticationCredentials(Ljava/lang/String;Ljava/net/Proxy;[Ljava/lang/String;)I

    move-result v1

    .line 231
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 232
    const-string/jumbo v2, "CacheCleaner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removing credentials proxy cache for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get4()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :goto_0
    return-void

    .line 236
    :cond_0
    const-string/jumbo v2, "CacheCleaner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Proxy cache for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " still valid"

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
    .line 189
    iget-object v7, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;->enterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    if-nez v7, :cond_0

    .line 190
    return-void

    .line 193
    :cond_0
    const-string/jumbo v7, "CacheCleaner"

    const-string/jumbo v8, "Starting run to clean enterprise proxy cache"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get3()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 196
    .local v3, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;>;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "authenticationTypeEntry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 199
    .local v0, "authenticationTypeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;>;"
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    .line 200
    const-string/jumbo v7, "http://www.samsung.com"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string/jumbo v7, "HTTP/1.1"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 202
    .local v6, "requestLine":[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 204
    .local v5, "proxyString":Ljava/lang/String;
    const-string/jumbo v7, "CacheCleaner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Checking proxy cache for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v7, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;->enterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-static {v7, v5, v6}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-wrap1(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v4

    .line 208
    .local v4, "expectedAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    invoke-direct {p0, v7, v5, v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;->updateAuthenticatorCacheIfNeeded(Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)V

    .line 210
    invoke-interface {v4}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->isCredentialRequired()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 211
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get4()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    .local v2, "credentials":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 213
    invoke-direct {p0, v6, v5, v4, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;->updateCredentialsCacheIfNeeded([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    .end local v2    # "credentials":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "CacheCleaner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Removing credential proxy cache for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-get4()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 188
    .end local v0    # "authenticationTypeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;>;"
    .end local v4    # "expectedAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .end local v5    # "proxyString":Ljava/lang/String;
    .end local v6    # "requestLine":[Ljava/lang/String;
    :cond_3
    return-void
.end method