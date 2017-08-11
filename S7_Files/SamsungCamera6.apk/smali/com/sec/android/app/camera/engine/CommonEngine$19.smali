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
    .line 6840
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x1a

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6843
    const-string v3, "Recording Stop Thread"

    invoke-static {v3}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 6844
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v8, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6845
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v6, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6846
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0xbb

    invoke-interface {v3, v4, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6847
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v7, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6849
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3400(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1700(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/media/MediaRecorder;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 6850
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6851
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    const/16 v4, 0x14

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    .line 6855
    :cond_0
    :try_start_0
    const-string v3, "CommonEngine"

    const-string v4, "Stopping video recording..."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6856
    const-string v3, "Recording Stop"

    invoke-static {v3}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 6857
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1700(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 6858
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 6859
    const-string v3, "CommonEngine"

    const-string v4, "Video recording is stopped"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6880
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->isNeedToChangeRecordingFlashParameter()Z
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1900(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6881
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->resetFlashParameter()V
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3800(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 6883
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6884
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    const/16 v4, 0x28

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    .line 6887
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/util/ContentData;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3900(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/util/ContentData;->getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-nez v3, :cond_3

    .line 6888
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->renameTempFile()V
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4000(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 6890
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/util/ContentData;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3900(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mVideoFilenameWithPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3600(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/util/ContentData;->setFilePath(Ljava/lang/String;)V

    .line 6891
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3402(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 6892
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->releaseMediaRecorder()V
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1800(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 6893
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 6894
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    const/16 v4, 0x3c

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    .line 6898
    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6899
    const-string v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>VIDEO_RECORDED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/util/ContentData;
    invoke-static {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3900(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/util/ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " </GATE-M>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6902
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->registerVideo()V
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4100(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 6906
    :cond_6
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 6907
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    const/16 v4, 0x50

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    .line 6910
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mVideoFilenameWithPath:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3602(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 6911
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateRemainCounter()V

    .line 6912
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onRecordingStopped()V

    .line 6913
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 6914
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    const/16 v4, 0x64

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    .line 6915
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onRecordingStopped()V

    .line 6917
    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v3

    if-nez v3, :cond_e

    .line 6918
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3, v7}, Lcom/sec/android/app/camera/engine/CommonEngine;->changeEngineState(I)V

    .line 6919
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->isFirstRequest(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6920
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->completeRequest()V

    .line 6922
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isUsingCamcorderPreviewOnly()Z

    move-result v3

    if-nez v3, :cond_e

    .line 6923
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v3

    if-ne v3, v1, :cond_11

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 6924
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCoverOpen()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCoverRecordingState()Z

    move-result v3

    if-nez v3, :cond_11

    .line 6925
    .local v1, "isNeedToStartRecordingPreviewVI":Z
    :cond_b
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 6926
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setPreviewAnimation(I)V

    .line 6927
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startPreviewAnimation([B)V

    .line 6932
    :cond_c
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleSwitchToCameraPreview()V

    .line 6933
    if-nez v1, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 6934
    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleRequestNotifyPreviewStarted()V

    .line 6938
    .end local v1    # "isNeedToStartRecordingPreviewVI":Z
    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v8, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6939
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v6, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6940
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0xbb

    invoke-interface {v3, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6941
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v7, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6942
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsRecordingStopping:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3702(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 6943
    const-string v2, "CommonEngine"

    const-string v3, "Stopping video recording async is completed!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6944
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 6945
    :goto_3
    return-void

    .line 6860
    :catch_0
    move-exception v0

    .line 6861
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "CommonEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recording stop failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6862
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3402(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 6863
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->releaseMediaRecorder()V
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1800(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 6864
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->cleanupTempFile()V
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3500(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 6865
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mVideoFilenameWithPath:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3602(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 6866
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->closeVideoFileDescriptor()V

    .line 6867
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onRecordingStopped()V

    .line 6868
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 6869
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    const/16 v4, 0x64

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onStopRecordingProgress(I)V

    .line 6870
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;->onRecordingStopped()V

    .line 6872
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v8, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6873
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v6, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6874
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0xbb

    invoke-interface {v3, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6875
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v7, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 6876
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsRecordingStopping:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3702(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 6877
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/engine/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/engine/CommonEngine$ErrorMessageHandler;

    const/4 v3, -0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 6903
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_10
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3400(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6904
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3402(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    goto/16 :goto_0

    :cond_11
    move v1, v2

    .line 6924
    goto/16 :goto_1

    .line 6928
    .restart local v1    # "isNeedToStartRecordingPreviewVI":Z
    :cond_12
    if-eqz v1, :cond_c

    .line 6929
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setPreviewAnimation(I)V

    .line 6930
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$19;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleSetOneShotPreviewCallback()V

    goto/16 :goto_2
.end method
