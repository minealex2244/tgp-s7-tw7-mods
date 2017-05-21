.class public Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;
.super Lcom/android/volley/Request;
.source "TagShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/TagShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SCJsonRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<REQ:",
        "Ljava/lang/Object;",
        "RES:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TRES;>;"
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "application/json; charset=UTF-8"


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TRES;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<TRES;>;"
        }
    .end annotation
.end field

.field private final requestBody:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQ;"
        }
    .end annotation
.end field

.field private responseCharset:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TRES;>;",
            "Lcom/android/volley/Response$Listener",
            "<TRES;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;, "Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest<TREQ;TRES;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TRES;>;"
    .local p3, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<TRES;>;"
    const/4 v1, 0x0

    .line 984
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 976
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->gson:Lcom/google/gson/Gson;

    .line 981
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->responseCharset:Ljava/lang/String;

    .line 985
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->clazz:Ljava/lang/Class;

    .line 986
    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->listener:Lcom/android/volley/Response$Listener;

    .line 987
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->headers:Ljava/util/Map;

    .line 988
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->requestBody:Ljava/lang/Object;

    .line 989
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCRetryPolicy;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$SCRetryPolicy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 990
    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRES;)V"
        }
    .end annotation

    .prologue
    .line 1029
    .local p0, "this":Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;, "Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest<TREQ;TRES;>;"
    .local p1, "response":Ljava/lang/Object;, "TRES;"
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->listener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 1030
    return-void
.end method

.method public getBody()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 994
    .local p0, "this":Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;, "Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest<TREQ;TRES;>;"
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->gson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->requestBody:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, "body":Ljava/lang/String;
    const-string v1, "TagShot"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->requestBody:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1001
    .local p0, "this":Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;, "Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest<TREQ;TRES;>;"
    const-string v0, "application/json; charset=UTF-8"

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1006
    .local p0, "this":Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;, "Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest<TREQ;TRES;>;"
    invoke-super {p0}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->requestBody:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->requestBody:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1010
    :cond_0
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 1015
    .local p0, "this":Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;, "Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest<TREQ;TRES;>;"
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->headers:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->headers:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 8
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TRES;>;"
        }
    .end annotation

    .prologue
    .line 1036
    .local p0, "this":Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;, "Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest<TREQ;TRES;>;"
    const/4 v2, 0x0

    .line 1037
    .local v2, "json":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->responseCharset:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1038
    new-instance v3, Ljava/lang/String;

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->responseCharset:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2    # "json":Ljava/lang/String;
    .local v3, "json":Ljava/lang/String;
    move-object v2, v3

    .line 1042
    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    :goto_0
    const-string v5, "TagShot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "json : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->gson:Lcom/google/gson/Gson;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->clazz:Ljava/lang/Class;

    invoke-virtual {v5, v2, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v4

    .line 1057
    :goto_1
    return-object v4

    .line 1040
    :cond_0
    new-instance v3, Ljava/lang/String;

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v6}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v2    # "json":Ljava/lang/String;
    .restart local v3    # "json":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "json":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    goto :goto_0

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Lcom/android/volley/ParseError;

    invoke-direct {v5, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v4

    goto :goto_1

    .line 1050
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 1051
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    .line 1052
    .local v1, "error":Lcom/android/volley/ParseError;
    const-string v5, "TagShot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/volley/ParseError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    new-instance v5, Lcom/android/volley/ParseError;

    invoke-direct {v5, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v4

    goto :goto_1

    .line 1054
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    .end local v1    # "error":Lcom/android/volley/ParseError;
    :catch_2
    move-exception v0

    .line 1055
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    .line 1056
    .restart local v1    # "error":Lcom/android/volley/ParseError;
    const-string v5, "TagShot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/volley/ParseError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    new-instance v5, Lcom/android/volley/ParseError;

    invoke-direct {v5, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 1024
    .local p0, "this":Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;, "Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest<TREQ;TRES;>;"
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;->responseCharset:Ljava/lang/String;

    .line 1025
    return-void
.end method
