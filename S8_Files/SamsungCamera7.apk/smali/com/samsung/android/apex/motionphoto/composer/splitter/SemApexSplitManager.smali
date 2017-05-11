.class public Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;
.super Ljava/lang/Object;
.source "SemApexSplitManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;,
        Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$WorkerComparator;,
        Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$ISplitTaskStateCallback;,
        Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field static ERROR:Z = false

.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final MAXIMUM_POOL_SIZE:I = 0x8

.field private static NUMBER_OF_CORES:I = 0x0

.field public static final TAG:Ljava/lang/String;

.field static final TASK_COMPLETE:I = 0x6

.field private static currentTime:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static priority:I

.field private static sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

.field private static sTimeOutSec:I


# instance fields
.field private final mFilePathQueue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;

.field private final mSplitThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mSplitWorkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

.field private mStateCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$ISplitTaskStateCallback;

.field private final mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->ERROR:Z

    .line 92
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->NUMBER_OF_CORES:I

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->currentTime:Ljava/util/concurrent/atomic/AtomicReference;

    .line 103
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 104
    const/16 v0, 0xa

    sput v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sTimeOutSec:I

    .line 105
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;-><init>()V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    .line 106
    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0x14

    new-instance v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$WorkerComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$WorkerComparator;-><init>(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$1;)V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mSplitWorkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mTaskList:Ljava/util/List;

    .line 120
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x4

    const/16 v3, 0x8

    const-wide/16 v4, 0x1

    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mSplitWorkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mSplitThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 121
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    .line 122
    return-void
.end method

.method public static clearError()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->ERROR:Z

    .line 148
    return-void
.end method

.method public static clearFilePathQueue(Landroid/app/Application;)V
    .locals 4
    .param p0, "appContext"    # Landroid/app/Application;

    .prologue
    .line 269
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear queue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    iget-object v3, v3, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    iget-object v1, v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;

    .local v0, "path":Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;
    if-eqz v0, :cond_0

    .line 272
    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/persistence/SemApexContentManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/apex/motionphoto/persistence/SemApexContentManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/apex/motionphoto/persistence/SemApexContentManager;->removeSefFileType(Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_0
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    iget-object v1, v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 275
    return-void
.end method

.method private static convertTimestamps(Ljava/util/List;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 394
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [J

    .line 395
    .local v3, "splitTimeStamps":[J
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 396
    .local v2, "i":I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->getTimestamp()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 397
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 398
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->getTimestamp()J

    move-result-wide v6

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->getTimestamp()J

    move-result-wide v4

    sub-long v0, v6, v4

    .line 399
    .local v0, "dt":J
    add-int/lit8 v4, v2, 0x1

    aget-wide v4, v3, v4

    sub-long/2addr v4, v0

    aput-wide v4, v3, v2

    goto :goto_0

    .line 403
    .end local v0    # "dt":J
    .end local v2    # "i":I
    .end local v3    # "splitTimeStamps":[J
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3
.end method

.method private static getDuration(Ljava/lang/String;)J
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 407
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 408
    .local v4, "mmr":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v4, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 409
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "durationStr":Ljava/lang/String;
    const-wide/16 v0, 0x0

    .line 411
    .local v0, "duration":J
    if-eqz v2, :cond_0

    .line 413
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 418
    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 419
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v0

    return-wide v6

    .line 414
    :catch_0
    move-exception v3

    .line 415
    .local v3, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v6, "duration is not number"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    return-object v0
.end method

.method private static isTempFileValid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 385
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 389
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static nextId()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 426
    .local v0, "next":Ljava/lang/Long;
    :cond_0
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->currentTime:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 427
    .local v1, "prev":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 428
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->currentTime:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    return-object v0

    .line 427
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method public static queueFilePath(JLjava/lang/String;)V
    .locals 4
    .param p0, "id"    # J
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-boolean v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->ERROR:Z

    if-eqz v1, :cond_1

    .line 159
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v2, "already error state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    iget-object v1, v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mSplitThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->NUMBER_OF_CORES:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 168
    :goto_1
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    iget-object v1, v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    new-instance v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 169
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 170
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v2, "fail to offer filePathQueue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    .end local v0    # "result":Z
    :cond_2
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    iget-object v1, v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mSplitThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    goto :goto_1
.end method

.method public static startSplit(Ljava/lang/String;Ljava/util/List;)V
    .locals 22
    .param p0, "tempFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;>;"
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->nextId()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 183
    .local v8, "id":J
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "startSplit : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-nez p1, :cond_0

    .line 185
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "data list is null"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 190
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->convertTimestamps(Ljava/util/List;)[J

    move-result-object v10

    .line 192
    .local v10, "splitTimeStamps":[J
    if-nez v10, :cond_2

    .line 193
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "startSplit : error state remove temp file"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v14, "tempFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v7

    .line 196
    .local v7, "result":Z
    if-nez v7, :cond_1

    .line 197
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "fail to delete Temp File"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v7    # "result":Z
    .end local v14    # "tempFile":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    new-instance v11, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    move-object/from16 v0, p0

    invoke-direct {v11, v8, v9, v0, v10}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;-><init>(JLjava/lang/String;[J)V

    .line 203
    .local v11, "task":Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mTaskList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const/16 v15, 0x8

    .line 205
    .local v15, "timeOutSec":I
    const/4 v6, 0x0

    .line 206
    .local v6, "i":I
    const/4 v5, 0x0

    .line 207
    .local v5, "filePath":Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;
    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_a

    .line 209
    if-nez v5, :cond_4

    .line 210
    :try_start_0
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "poll path queue"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 212
    .local v12, "start":J
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    move-object/from16 v17, v0

    int-to-long v0, v15

    move-wide/from16 v18, v0

    sget-object v20, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v17 .. v20}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;

    move-object v5, v0

    .line 213
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "end poll : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v12

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v12    # "start":J
    :goto_2
    if-nez v5, :cond_5

    .line 218
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "error : polling filepath failed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v15, 0x0

    .line 220
    invoke-virtual {v11}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->checkSplitComplete()V

    .line 221
    add-int/lit8 v6, v6, 0x1

    .line 255
    :goto_3
    const/4 v5, 0x0

    goto :goto_1

    .line 215
    :cond_4
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "use previous file path"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 256
    :catch_0
    move-exception v4

    .line 257
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 225
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_1
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "dequeue filepath : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->getId()J

    move-result-wide v18

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->getId()J

    move-result-wide v20

    cmp-long v17, v18, v20

    if-lez v17, :cond_6

    .line 227
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "passing filepath"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->handleMakeMotionPhotoFail(Ljava/lang/String;)V

    goto :goto_3

    .line 229
    :cond_6
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->getId()J

    move-result-wide v18

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->getId()J

    move-result-wide v20

    cmp-long v17, v18, v20

    if-gez v17, :cond_7

    .line 230
    sget-object v18, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "skip cuz no file path matched with id: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->getId()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v11}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->checkSplitComplete()V

    .line 232
    add-int/lit8 v6, v6, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ne v6, v0, :cond_3

    .line 233
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/concurrent/BlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 237
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/apex/motionphoto/common/SemApexUtils;->isValidFilePath(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 238
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "cancel case"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->handleMakeMotionPhotoFail(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v11}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->checkSplitComplete()V

    .line 241
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 242
    :cond_8
    sget-boolean v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->ERROR:Z

    if-eqz v17, :cond_9

    .line 243
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v18, "error case"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->handleMakeMotionPhotoFail(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v11}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->checkSplitComplete()V

    .line 246
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 249
    :cond_9
    new-instance v16, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;

    sget v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->priority:I

    add-int/lit8 v18, v17, 0x1

    sput v18, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->priority:I

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v11, v6, v2}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;-><init>(ILcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;ILjava/lang/String;)V

    .line 250
    .local v16, "worker":Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mSplitThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 260
    .end local v16    # "worker":Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitWorker;
    :cond_a
    sget-object v17, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "end startSplit : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public debugInfo()V
    .locals 8

    .prologue
    .line 328
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remain task : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mTaskList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    .line 331
    .local v1, "task":Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;
    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    .end local v1    # "task":Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;
    :cond_0
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remain filepath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;

    .line 337
    .local v0, "path":Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;
    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 341
    .end local v0    # "path":Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$MotionPhotoPath;
    :cond_1
    return-void
.end method

.method public getFilePathQueueCount()I
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->sInstance:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mFilePathQueue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v0

    return v0
.end method

.method public handleMakeMotionPhotoFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mServiceCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mServiceCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;->onMakeFail(Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void

    .line 299
    :cond_0
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMakeMotionPhotoSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mServiceCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mServiceCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;->onMakeSuccess(Ljava/lang/String;)V

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_0
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleTaskComplete(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;)V
    .locals 4
    .param p1, "task"    # Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mStateCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$ISplitTaskStateCallback;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mStateCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$ISplitTaskStateCallback;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$ISplitTaskStateCallback;->taskComplete(J)V

    .line 285
    :cond_0
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task Complete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->releaseTask()V

    .line 287
    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->removeTask(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;)V

    .line 288
    return-void
.end method

.method removeTask(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;)V
    .locals 4
    .param p1, "task"    # Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;

    .prologue
    .line 320
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitTask;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method public setServiceCallback(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;)V
    .locals 0
    .param p1, "serviceCallback"    # Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mServiceCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$IServiceCallback;

    .line 140
    return-void
.end method

.method public setStateCallback(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$ISplitTaskStateCallback;)V
    .locals 0
    .param p1, "stateCallback"    # Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$ISplitTaskStateCallback;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;->mStateCallback:Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$ISplitTaskStateCallback;

    .line 131
    return-void
.end method
