.class Lcom/sec/android/app/camera/engine/CommonEngine$19;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;->stopVideoRecordingAsync()V
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
    .line 6589
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x1a

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 6592
    const-string v1, "Recording Stop Thread"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 6593
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1, v7, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6594
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6595
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const/16 v2, 0xbb

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6596
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1, v6, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6598
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3300(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1400(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/media/MediaRecorder;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 6599
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6600
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v1

    const/16 v2, 0x14

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    .line 6604
    :cond_0
    :try_start_0
    const-string v1, "CommonEngine"

    const-string v2, "Stopping video recording..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6605
    const-string v1, "Recording Stop"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 6606
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1400(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 6607
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 6608
    const-string v1, "CommonEngine"

    const-string v2, "Video recording is stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6626
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->isNeedToChangeRecordingFlashParameter()Z
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1700(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6627
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->resetFlashParameter()V
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3500(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 6629
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6630
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v1

    const/16 v2, 0x28

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    .line 6633
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3302(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 6634
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->releaseMediaRecorder()V
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1500(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 6635
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6636
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    .line 6640
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6641
    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<GATE-M>VIDEO_RECORDED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/engine/LastContentData;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/LastContentData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/LastContentData;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " </GATE-M>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6647
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 6648
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v1

    const/16 v2, 0x50

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    .line 6651
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 6652
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onRecordingStopped()V

    .line 6653
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->disableFaceRect(Z)V

    .line 6654
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 6655
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v1

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    .line 6656
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onRecordingStopped()V

    .line 6659
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->loggingVideo()V
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3700(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 6660
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-nez v1, :cond_8

    .line 6661
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->changeEngineState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)V

    .line 6662
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->isFirstRequest(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6663
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    .line 6665
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2700(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isUsingCamcorderPreviewOnly()Z

    move-result v1

    if-nez v1, :cond_8

    .line 6666
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleSwitchToCameraPreview()V

    .line 6669
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1, v7, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6670
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1, v5, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6671
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const/16 v2, 0xbb

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6672
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6673
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsRecordingStopping:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3402(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 6674
    const-string v1, "CommonEngine"

    const-string v2, "Stopping video recording async is completed!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6675
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 6676
    :goto_1
    return-void

    .line 6609
    :catch_0
    move-exception v0

    .line 6610
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recording stop failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6611
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3302(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 6612
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->releaseMediaRecorder()V
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1500(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 6613
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onRecordingStopped()V

    .line 6614
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->disableFaceRect(Z)V

    .line 6615
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1, v7, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6616
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1, v5, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6617
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const/16 v2, 0xbb

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6618
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6619
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 6620
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v1

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    .line 6621
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v1

    const/16 v2, -0xd

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onRecordingFailed(IZ)V

    .line 6623
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsRecordingStopping:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3402(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    goto :goto_1

    .line 6644
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3300(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6645
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3302(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    goto/16 :goto_0
.end method
