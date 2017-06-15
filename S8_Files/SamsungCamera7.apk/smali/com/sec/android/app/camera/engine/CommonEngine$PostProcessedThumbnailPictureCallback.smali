.class final Lcom/sec/android/app/camera/engine/CommonEngine$PostProcessedThumbnailPictureCallback;
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
    name = "PostProcessedThumbnailPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    .prologue
    .line 9819
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$PostProcessedThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CommonEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/engine/CommonEngine;
    .param p2, "x1"    # Lcom/sec/android/app/camera/engine/CommonEngine$1;

    .prologue
    .line 9819
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine$PostProcessedThumbnailPictureCallback;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    .locals 3
    .param p1, "postData"    # [B
    .param p2, "camera"    # Lcom/samsung/android/camera/core/SemCamera;

    .prologue
    .line 9822
    const-string v0, "CommonEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostProcessedThumbnailPictureCallback.onPictureTaken E, postData.length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentThumbnailWidth  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$PostProcessedThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentThumbnailWidth:I
    invoke-static {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4700(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentThumbnailHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$PostProcessedThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 9823
    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentThumbnailHeight:I
    invoke-static {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4800(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9822
    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9824
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$PostProcessedThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/engine/AbstractCeState;
    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1100(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AbstractCeState;->getState()Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    if-ne v0, v1, :cond_0

    .line 9827
    const-string v0, "CommonEngine"

    const-string v1, "PostProcessedThumbnailPictureCallback.onPictureTaken X : STATE_SHUTDOWN"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9834
    :goto_0
    return-void

    .line 9831
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$PostProcessedThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->makeAndUpdateThumbnail([B)V
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7300(Lcom/sec/android/app/camera/engine/CommonEngine;[B)V

    .line 9833
    const-string v0, "CommonEngine"

    const-string v1, "PostProcessedThumbnailPictureCallback.onPictureTaken X"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
