.class public Lcom/sec/android/app/camera/engine/CeRequestQueue;
.super Ljava/lang/Object;
.source "CeRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/CeRequestQueue$RunFirstRequest;,
        Lcom/sec/android/app/camera/engine/CeRequestQueue$RequestHandler;
    }
.end annotation


# static fields
.field private static final START_FIRST_REQUEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CeRequestQueue"


# instance fields
.field private mCommonEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLogBuilder:Ljava/lang/StringBuilder;

.field private mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sec/android/app/camera/engine/CeRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestQueueHandler:Landroid/os/Handler;

.field private mRequestQueueSize:I

.field private mbIsJoining:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 3
    .param p1, "commonEngine"    # Lcom/sec/android/app/camera/engine/CommonEngine;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    .line 42
    iput-object v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mCommonEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 45
    iput-object v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mHandlerThread:Landroid/os/HandlerThread;

    .line 46
    iput v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueSize:I

    .line 47
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mbIsJoining:Z

    .line 50
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mCommonEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->startRequestHandlerThread()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/engine/CeRequestQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/engine/CeRequestQueue;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->startFirstRequest()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/engine/CeRequestQueue;)Lcom/sec/android/app/camera/engine/CommonEngine;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/engine/CeRequestQueue;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mCommonEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-object v0
.end method

.method private declared-synchronized startFirstRequest()V
    .locals 3

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    const-string v0, "CeRequestQueue"

    const-string v1, "startFirstRequest"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mCommonEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/engine/AbstractCeState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    .line 333
    :goto_0
    monitor-exit p0

    return-void

    .line 327
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/camera/engine/CeRequestQueue$RunFirstRequest;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/CeRequest;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue$RunFirstRequest;-><init>(Lcom/sec/android/app/camera/engine/CeRequestQueue;Lcom/sec/android/app/camera/engine/CeRequest;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 330
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized addRequest(Lcom/sec/android/app/camera/engine/CeRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/sec/android/app/camera/engine/CeRequest;

    .prologue
    const/4 v2, 0x1

    .line 56
    monitor-enter p0

    :try_start_0
    const-string v0, "CeRequestQueue"

    const-string v1, "addRequest"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mbIsJoining:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 62
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 63
    iget v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueSize:I

    .line 65
    const-string v0, "CeRequestQueue"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->dumpQueue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 68
    const-string v0, "CeRequestQueue"

    const-string v1, "sending START_FIRST_REQUEST"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    :cond_2
    :goto_1
    :try_start_3
    const-string v0, "Command Queue"

    iget v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueSize:I

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->traceCounter(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 71
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected declared-synchronized clear()V
    .locals 3

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/CeRequest;

    .line 82
    .local v0, "request":Lcom/sec/android/app/camera/engine/CeRequest;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/engine/CeRequest;->mReserved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    .end local v0    # "request":Lcom/sec/android/app/camera/engine/CeRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 85
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueSize:I

    .line 88
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    :try_start_3
    const-string v1, "Command Queue"

    iget v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueSize:I

    invoke-static {v1, v2}, Lcom/sec/android/app/TraceWrapper;->traceCounter(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 88
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected declared-synchronized completeRequest()V
    .locals 4

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    const-string v2, "CeRequestQueue"

    const-string v3, "completeRequest"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/CeRequest;

    .line 97
    .local v0, "firstRequest":Lcom/sec/android/app/camera/engine/CeRequest;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/engine/CeRequest;->mReserved:Z

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 99
    iget v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueSize:I
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .end local v0    # "firstRequest":Lcom/sec/android/app/camera/engine/CeRequest;
    :goto_0
    :try_start_2
    const-string v2, "CeRequestQueue"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->dumpQueue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v2, "Command Queue"

    iget v3, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueSize:I

    invoke-static {v2, v3}, Lcom/sec/android/app/TraceWrapper;->traceCounter(Ljava/lang/String;I)V

    .line 107
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mCommonEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->onQueueEmpty()V

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 112
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 113
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 114
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 100
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected declared-synchronized dumpQueue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/CeRequest;

    .line 124
    .local v0, "request":Lcom/sec/android/app/camera/engine/CeRequest;
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequest;->getRequest()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    .end local v0    # "request":Lcom/sec/android/app/camera/engine/CeRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 128
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1
.end method

.method protected declared-synchronized firstElement()Lcom/sec/android/app/camera/engine/CeRequest;
    .locals 2

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/engine/CeRequest;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    monitor-exit p0

    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized getSize()I
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized isFirstRequest(I)Z
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/CeRequest;

    .line 147
    .local v0, "firstItem":Lcom/sec/android/app/camera/engine/CeRequest;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequest;->getRequest()I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, p1, :cond_0

    .line 148
    const/4 v1, 0x1

    .line 154
    .end local v0    # "firstItem":Lcom/sec/android/app/camera/engine/CeRequest;
    :goto_0
    monitor-exit p0

    return v1

    .line 150
    :catch_0
    move-exception v1

    .line 154
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized isSameAsNextRequest(I)Z
    .locals 4
    .param p1, "requestId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gt v1, v3, :cond_0

    move v1, v2

    .line 169
    :goto_0
    monitor-exit p0

    return v1

    .line 163
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 164
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/engine/CeRequest;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/engine/CeRequest;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CeRequest;->getRequest()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-ne v1, p1, :cond_1

    move v1, v3

    .line 167
    goto :goto_0

    :cond_1
    move v1, v2

    .line 169
    goto :goto_0

    .line 159
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/engine/CeRequest;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected quitSafely(Z)V
    .locals 4
    .param p1, "join"    # Z

    .prologue
    .line 182
    const-string v1, "CeRequestQueue"

    const-string v2, "quitSafely - start"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 189
    if-eqz p1, :cond_1

    .line 191
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mbIsJoining:Z

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mHandlerThread:Landroid/os/HandlerThread;

    .line 199
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mbIsJoining:Z

    .line 201
    const-string v1, "CeRequestQueue"

    const-string v2, "quitSafely - end"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CeRequestQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quitSafely : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected removeRequest(I)V
    .locals 1
    .param p1, "request"    # I

    .prologue
    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->removeRequest(IZ)V

    .line 206
    return-void
.end method

.method protected declared-synchronized removeRequest(IZ)V
    .locals 11
    .param p1, "request"    # I
    .param p2, "includeFirstRequest"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 209
    monitor-enter p0

    :try_start_0
    const-string v8, "CeRequestQueue"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeRequest - request:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " includeFirstRequest:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v8, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->size()I

    move-result v8

    if-ge v8, v6, :cond_1

    .line 212
    const-string v6, "CeRequestQueue"

    const-string v7, "removeRequest queue empty"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 216
    :cond_1
    const/4 v0, 0x0

    .line 217
    .local v0, "firstItemRemoved":Z
    if-nez p2, :cond_3

    move v5, v6

    .line 219
    .local v5, "skipFirstRequest":Z
    :goto_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    .local v2, "itemsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/camera/engine/CeRequest;>;"
    const/4 v1, -0x1

    .line 223
    .local v1, "index":I
    :try_start_2
    iget-object v8, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/engine/CeRequest;

    .line 224
    .local v3, "req":Lcom/sec/android/app/camera/engine/CeRequest;
    add-int/lit8 v1, v1, 0x1

    .line 225
    if-eqz v5, :cond_5

    .line 226
    if-nez v5, :cond_4

    move v5, v6

    .line 227
    :goto_3
    goto :goto_2

    .end local v1    # "index":I
    .end local v2    # "itemsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/camera/engine/CeRequest;>;"
    .end local v3    # "req":Lcom/sec/android/app/camera/engine/CeRequest;
    .end local v5    # "skipFirstRequest":Z
    :cond_3
    move v5, v7

    .line 217
    goto :goto_1

    .restart local v1    # "index":I
    .restart local v2    # "itemsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/camera/engine/CeRequest;>;"
    .restart local v3    # "req":Lcom/sec/android/app/camera/engine/CeRequest;
    .restart local v5    # "skipFirstRequest":Z
    :cond_4
    move v5, v7

    .line 226
    goto :goto_3

    .line 229
    :cond_5
    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CeRequest;->getRequest()I

    move-result v9

    if-ne v9, p1, :cond_2

    .line 230
    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/sec/android/app/camera/engine/CeRequest;->mReserved:Z

    .line 231
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    if-nez v1, :cond_2

    .line 233
    const/4 v0, 0x1

    goto :goto_2

    .line 238
    .end local v3    # "req":Lcom/sec/android/app/camera/engine/CeRequest;
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 239
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/engine/CeRequest;

    .line 240
    .local v4, "requestToDelete":Lcom/sec/android/app/camera/engine/CeRequest;
    iget-object v7, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v7, v4}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 241
    iget v7, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueSize:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueSize:I
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 244
    .end local v4    # "requestToDelete":Lcom/sec/android/app/camera/engine/CeRequest;
    :catch_0
    move-exception v6

    .line 248
    :cond_7
    :try_start_3
    const-string v6, "Command Queue"

    iget v7, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueSize:I

    invoke-static {v6, v7}, Lcom/sec/android/app/TraceWrapper;->traceCounter(Ljava/lang/String;I)V

    .line 250
    if-eqz v0, :cond_0

    .line 251
    iget-object v6, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 209
    .end local v0    # "firstItemRemoved":Z
    .end local v1    # "index":I
    .end local v2    # "itemsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/camera/engine/CeRequest;>;"
    .end local v5    # "skipFirstRequest":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method protected declared-synchronized removeSameAsFirstRequest(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 256
    monitor-enter p0

    const/4 v0, 0x0

    .line 259
    .local v0, "firstItemRemoved":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/engine/CeRequest;

    .line 260
    .local v1, "firstRequest":Lcom/sec/android/app/camera/engine/CeRequest;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CeRequest;->getRequest()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 261
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/camera/engine/CeRequest;->mReserved:Z

    .line 262
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 263
    iget v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueSize:I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    const/4 v0, 0x1

    .line 270
    .end local v1    # "firstRequest":Lcom/sec/android/app/camera/engine/CeRequest;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 271
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :cond_1
    monitor-exit p0

    return v0

    .line 256
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 266
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected declared-synchronized searchDuplicatedRequest(I)Z
    .locals 6
    .param p1, "requestId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    monitor-enter p0

    const/4 v0, 0x0

    .line 281
    .local v0, "mCount":I
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-gt v4, v3, :cond_1

    .line 292
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 284
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/engine/CeRequest;

    .line 285
    .local v1, "request":Lcom/sec/android/app/camera/engine/CeRequest;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CeRequest;->getRequest()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-ne v5, p1, :cond_2

    .line 286
    add-int/lit8 v0, v0, 0x1

    .line 287
    const/4 v5, 0x2

    if-lt v0, v5, :cond_2

    move v2, v3

    .line 288
    goto :goto_0

    .line 278
    .end local v1    # "request":Lcom/sec/android/app/camera/engine/CeRequest;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized searchRequest(I)Z
    .locals 5
    .param p1, "requestId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ge v3, v2, :cond_1

    .line 304
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 299
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/CeRequest;

    .line 300
    .local v0, "request":Lcom/sec/android/app/camera/engine/CeRequest;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CeRequest;->getRequest()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-ne v4, p1, :cond_2

    move v1, v2

    .line 301
    goto :goto_0

    .line 296
    .end local v0    # "request":Lcom/sec/android/app/camera/engine/CeRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized startRequestHandlerThread()V
    .locals 2

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    const-string v0, "CeRequestQueue"

    const-string v1, "startRequestHandlerThread"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CeRequestQueueThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mHandlerThread:Landroid/os/HandlerThread;

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mbIsJoining:Z

    .line 314
    new-instance v0, Lcom/sec/android/app/camera/engine/CeRequestQueue$RequestHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue$RequestHandler;-><init>(Lcom/sec/android/app/camera/engine/CeRequestQueue;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CeRequestQueue;->mRequestQueueHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :cond_0
    monitor-exit p0

    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
