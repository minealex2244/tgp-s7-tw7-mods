.class public abstract Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
.super Ljava/lang/Object;
.source "SemMotionPhotoComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;,
        Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;,
        Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$ComposerHandler;,
        Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;,
        Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Factory;,
        Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mApiLevel:I

.field protected mClientId:Ljava/lang/String;

.field protected mCommandQueue:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mComposerHandler:Landroid/os/Handler;

.field protected mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mEnvironment:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;

.field protected mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected mOnErrorListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

.field protected mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

.field protected mState:Lcom/samsung/android/apex/motionphoto/composer/State;

.field protected mToken:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;->None:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mEnvironment:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;

    .line 127
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemMotionPhotoComposer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->INITIAL:Lcom/samsung/android/apex/motionphoto/composer/State;

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    .line 137
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mContext:Ljava/lang/ref/WeakReference;

    .line 138
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 139
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 140
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$ComposerHandler;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$ComposerHandler;-><init>(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mComposerHandler:Landroid/os/Handler;

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    .line 143
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexDummyCallbackListener;-><init>(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    .line 144
    return-void
.end method


# virtual methods
.method public changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/apex/motionphoto/composer/State;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 507
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    if-ne v0, v1, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore arleady released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 517
    :goto_0
    return-void

    .line 512
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    .line 513
    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->handleCommand(Lcom/samsung/android/apex/motionphoto/composer/State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method protected varargs checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V
    .locals 7
    .param p1, "states"    # [Lcom/samsung/android/apex/motionphoto/composer/State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 419
    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 421
    :try_start_0
    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, p1, v3

    .line 422
    .local v1, "s":Lcom/samsung/android/apex/motionphoto/composer/State;
    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v1, :cond_0

    .line 437
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 423
    return-void

    .line 421
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    .end local v1    # "s":Lcom/samsung/android/apex/motionphoto/composer/State;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 428
    .local v0, "b":Ljava/lang/StringBuffer;
    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    .line 429
    .restart local v1    # "s":Lcom/samsung/android/apex/motionphoto/composer/State;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 430
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 432
    .end local v1    # "s":Lcom/samsung/android/apex/motionphoto/composer/State;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 434
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "should be in %s state, but current is %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    .end local v0    # "b":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getApiLevel()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mApiLevel:I

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSurface()Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mToken:I

    return v0
.end method

.method protected handleCommand(Lcom/samsung/android/apex/motionphoto/composer/State;)V
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/apex/motionphoto/composer/State;

    .prologue
    .line 479
    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    if-ne v3, v4, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "handleCommand : ignore arleady released"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    if-nez v3, :cond_2

    .line 483
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "can not handle command"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_1
    return-void

    .line 486
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 487
    .local v1, "list":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Landroid/os/Message;>;"
    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 492
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 493
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 494
    .local v2, "m":Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 495
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage[%s]: msg=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public abstract isConnected()Z
.end method

.method public isLocal()Z
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mEnvironment:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;->Local:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Environment;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/apex/motionphoto/composer/State;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    .line 381
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 379
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public varargs isStateAt([Lcom/samsung/android/apex/motionphoto/composer/State;)Z
    .locals 5
    .param p1, "states"    # [Lcom/samsung/android/apex/motionphoto/composer/State;

    .prologue
    const/4 v1, 0x0

    .line 392
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 394
    :try_start_0
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 395
    .local v0, "s":Lcom/samsung/android/apex/motionphoto/composer/State;
    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v0, :cond_0

    .line 396
    const/4 v1, 0x1

    .line 401
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 399
    .end local v0    # "s":Lcom/samsung/android/apex/motionphoto/composer/State;
    :goto_1
    return v1

    .line 394
    .restart local v0    # "s":Lcom/samsung/android/apex/motionphoto/composer/State;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    .end local v0    # "s":Lcom/samsung/android/apex/motionphoto/composer/State;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public isStopped()Z
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/apex/motionphoto/composer/State;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v1

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 452
    return-void
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "already released"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :goto_0
    monitor-exit p0

    return-void

    .line 284
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->disconnect()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mContext:Ljava/lang/ref/WeakReference;

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    if-eqz v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mComposerHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 293
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mComposerHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_4

    .line 295
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 301
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mComposerHandler:Landroid/os/Handler;

    .line 302
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 303
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected removeCommand(Lcom/samsung/android/apex/motionphoto/composer/State;I)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/apex/motionphoto/composer/State;
    .param p2, "cmd"    # I

    .prologue
    .line 461
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 462
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mCommandQueue:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 463
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 465
    .local v1, "m":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_0

    .line 466
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 470
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    .end local v1    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public requestId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 527
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setCallbackListener(Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;)V
    .locals 5
    .param p1, "callbackListener"    # Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setCallbackListener[%s]: listener="

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    .line 332
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mClientId:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setOnErrorListener(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;)V
    .locals 0
    .param p1, "errorListener"    # Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

    .line 350
    return-void
.end method

.method public setOnInfoListener(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;)V
    .locals 0
    .param p1, "infoListener"    # Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    .line 341
    return-void
.end method

.method public abstract setParameters(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setStoreData(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setStorePath(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract start(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract store()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public store(I)J
    .locals 2
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 206
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
