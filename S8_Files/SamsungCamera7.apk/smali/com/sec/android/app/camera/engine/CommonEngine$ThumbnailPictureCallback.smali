.class final Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/samsung/android/camera/core/SemCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThumbnailPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    .prologue
    .line 9665
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CommonEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/engine/CommonEngine;
    .param p2, "x1"    # Lcom/sec/android/app/camera/engine/CommonEngine$1;

    .prologue
    .line 9665
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    .locals 12
    .param p1, "postData"    # [B
    .param p2, "camera"    # Lcom/samsung/android/camera/core/SemCamera;

    .prologue
    const/4 v2, 0x5

    .line 9668
    const-string v1, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThumbnailPictureCallback.onPictureTaken E, postData.length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentThumbnailWidth  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentThumbnailWidth:I
    invoke-static {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6900(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentThumbnailHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 9669
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentThumbnailHeight:I
    invoke-static {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7000(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9668
    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9670
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/engine/AbstractCeState;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1000(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/AbstractCeState;->getState()Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    if-ne v1, v3, :cond_0

    .line 9673
    const-string v1, "CommonEngine"

    const-string v2, "ThumbnailPictureCallback.onPictureTaken X : STATE_SHUTDOWN"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9715
    :goto_0
    return-void

    .line 9677
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9678
    const-string v1, "CommonEngine"

    const-string v2, "Camera is pausing, so do not make thumbnail"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9682
    :cond_1
    array-length v1, p1

    div-int/lit8 v1, v1, 0x4

    new-array v9, v1, [I

    .line 9683
    .local v9, "intData":[I
    const/16 v0, 0xff

    .line 9684
    .local v0, "MASK":I
    const/4 v10, 0x0

    .line 9686
    .local v10, "result":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v1, p1

    div-int/lit8 v1, v1, 0x4

    if-ge v8, v1, :cond_2

    .line 9687
    mul-int/lit8 v1, v8, 0x4

    aget-byte v1, p1, v1

    and-int/2addr v1, v0

    shl-int/lit8 v10, v1, 0x10

    .line 9688
    mul-int/lit8 v1, v8, 0x4

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    and-int/2addr v1, v0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v10, v1

    .line 9689
    mul-int/lit8 v1, v8, 0x4

    add-int/lit8 v1, v1, 0x2

    aget-byte v1, p1, v1

    and-int/2addr v1, v0

    add-int/2addr v10, v1

    .line 9690
    mul-int/lit8 v1, v8, 0x4

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, p1, v1

    and-int/2addr v1, v0

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v10, v1

    .line 9691
    aput v10, v9, v8

    .line 9686
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 9694
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mUpdateThumbnailThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7100(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mUpdateThumbnailThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7100(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9695
    :cond_3
    const-string v1, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUpdateThumbnailThreadPool state - isShutdown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mUpdateThumbnailThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7100(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isTerminated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mUpdateThumbnailThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7100(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 9696
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mUpdateThumbnailThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v1, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7102(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9697
    iget-object v11, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mUpdateThumbnailThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v11, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7102(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9699
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mUpdateThumbnailThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7100(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;

    invoke-direct {v2, p0, v9}, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;[I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9714
    const-string v1, "CommonEngine"

    const-string v2, "ThumbnailPictureCallback.onPictureTaken X"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
