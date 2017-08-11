.class Lcom/sec/android/app/camera/engine/CommonEngine$9;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;->prepareVideoRecordingAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/engine/CommonEngine;

    .prologue
    .line 5428
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5431
    const-string v1, "Recording Prepare Thread"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 5433
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onRecordingPrepareStarted()V

    .line 5434
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->removeResetTouchFocusMessage()V

    .line 5436
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1700(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/media/MediaRecorder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5437
    const-string v1, "CommonEngine"

    const-string v2, "mMediaRecorder is already initialized."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 5438
    const-string v1, "CommonEngine"

    const-string v2, "Releasing mMediaRecorder..."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 5439
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->releaseMediaRecorder()V
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1800(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 5442
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateGpsParameters()V

    .line 5443
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->isNeedToChangeRecordingFlashParameter()Z
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1900(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5444
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->setRecordingFlashParameter()V
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2000(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 5450
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->initializeRecorder()V
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2300(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5457
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 5459
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 5460
    :goto_1
    return-void

    .line 5446
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mParameters:Lcom/samsung/android/camera/core/SemCamera$Parameters;
    invoke-static {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2100(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera$Parameters;

    move-result-object v2

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->setParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2200(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/samsung/android/camera/core/SemCamera$Parameters;)V

    goto :goto_0

    .line 5451
    :catch_0
    move-exception v0

    .line 5452
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareVideoRecordingAsync error while initializeRecorder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5453
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->releaseMediaRecorder()V
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1800(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 5454
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$9;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onRecordingStopped()V

    goto :goto_1
.end method
