.class public Lcom/android/launcher3/common/model/DeferredHandler;
.super Ljava/lang/Object;
.source "DeferredHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/DeferredHandler$IdleRunnable;,
        Lcom/android/launcher3/common/model/DeferredHandler$Impl;
    }
.end annotation


# static fields
.field private static sHandler:Lcom/android/launcher3/common/model/DeferredHandler$Impl;

.field private static sMessageQueue:Landroid/os/MessageQueue;

.field private static sQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    .line 35
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DeferredHandler;->sMessageQueue:Landroid/os/MessageQueue;

    .line 36
    new-instance v0, Lcom/android/launcher3/common/model/DeferredHandler$Impl;

    invoke-direct {v0}, Lcom/android/launcher3/common/model/DeferredHandler$Impl;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DeferredHandler;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler$Impl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method static synthetic access$000()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static scheduleNextLocked()V
    .locals 3

    .prologue
    .line 114
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 115
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 116
    .local v0, "peek":Ljava/lang/Runnable;
    instance-of v1, v0, Lcom/android/launcher3/common/model/DeferredHandler$IdleRunnable;

    if-eqz v1, :cond_1

    .line 117
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sMessageQueue:Landroid/os/MessageQueue;

    sget-object v2, Lcom/android/launcher3/common/model/DeferredHandler;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler$Impl;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sHandler:Lcom/android/launcher3/common/model/DeferredHandler$Impl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/model/DeferredHandler$Impl;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public cancelAll()V
    .locals 2

    .prologue
    .line 94
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 104
    .local v0, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    sget-object v3, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 105
    :try_start_0
    sget-object v2, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 106
    sget-object v2, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 107
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 109
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 107
    .end local v1    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 111
    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 78
    sget-object v1, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/android/launcher3/common/model/DeferredHandler;->sQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 81
    invoke-static {}, Lcom/android/launcher3/common/model/DeferredHandler;->scheduleNextLocked()V

    .line 83
    :cond_0
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public postIdle(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 90
    new-instance v0, Lcom/android/launcher3/common/model/DeferredHandler$IdleRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/DeferredHandler$IdleRunnable;-><init>(Lcom/android/launcher3/common/model/DeferredHandler;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/model/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method
