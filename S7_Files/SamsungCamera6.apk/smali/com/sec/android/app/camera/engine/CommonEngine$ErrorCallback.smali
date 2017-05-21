.class public final Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorCallback"
.end annotation


# static fields
.field private static final CAMERA_ERROR_ESD:I = 0x7d1

.field private static final CAMERA_ERROR_MSG_CAMERA_DISCONNECTED:I = 0x2

.field private static final CAMERA_ERROR_MSG_NO_ERROR:I = 0x0

.field private static final CAMERA_ERROR_WRONG_FW:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/engine/CommonEngine;

    .prologue
    .line 9946
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/samsung/android/camera/core/SemCamera;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "camera"    # Lcom/samsung/android/camera/core/SemCamera;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 9954
    sget-boolean v1, Lcom/sec/android/app/camera/util/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 9955
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCallback.onError ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9960
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/engine/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/AbstractCeState;->getId()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 9963
    const-string v1, "CommonEngine"

    const-string v2, "onError return - CE_STATE_SHUTDOWN"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 9964
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->closeCamera()V

    .line 10048
    :cond_0
    :goto_1
    return-void

    .line 9957
    :cond_1
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCallback.onError ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9968
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9969
    :cond_3
    const-string v1, "CommonEngine"

    const-string v2, "onError return."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 9973
    :cond_4
    const/4 v0, 0x0

    .line 9974
    .local v0, "finishOnError":Z
    sparse-switch p1, :sswitch_data_0

    .line 10034
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, -0x5

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    .line 10035
    const/4 v0, 0x1

    .line 10039
    :cond_5
    :goto_2
    if-eqz v0, :cond_0

    .line 10040
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3300(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10041
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mRecorderRecording:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3302(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 10042
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->releaseMediaRecorder()V
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1800(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 10043
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onRecordingStopped()V

    .line 10046
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->changeEngineState(I)V

    goto :goto_1

    .line 9976
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9977
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->removeRequest(I)V

    .line 9978
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 9979
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;->onSingleCaptureRequestCancelled()V

    goto :goto_2

    .line 9984
    :sswitch_1
    const-string v1, "CommonEngine"

    const-string v2, "onError : CAMERA_ERROR_WRONG_FW"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 9988
    :sswitch_2
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_7

    .line 9989
    const-string v1, "CommonEngine"

    const-string v2, "CAMERA_ERROR_PREVIEWFRAME_TIMEOUT"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 9990
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, -0xb

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    .line 9991
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_CAMERA_ESD_CHECK:Z

    if-nez v1, :cond_7

    .line 9992
    const/4 v0, 0x1

    .line 9995
    :cond_7
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_CAMERA_ESD_CHECK:Z

    if-eqz v1, :cond_5

    .line 9996
    const-string v1, "CommonEngine"

    const-string v2, "!!!Camera retry!!! - start!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9997
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9998
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mStopRecordingByESD:Z
    invoke-static {v1, v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5702(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 9999
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopVideoRecordingForced()V

    .line 10002
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->clearRequest()V
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5800(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    .line 10003
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->quitSafely(Z)V

    .line 10004
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->startRequestHandlerThread()V

    .line 10005
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopPreview()V

    .line 10006
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopEngine()V

    .line 10007
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleStartEngine()V

    .line 10008
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleInitializeSemCameraListener()V

    .line 10009
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleSetAllParameters()V

    .line 10010
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleSetShootingMode()V

    .line 10011
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mStopRecordingByESD:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5700(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 10012
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleSwitchToCameraPreview()V

    .line 10017
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mStopRecordingByESD:Z
    invoke-static {v1, v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$5702(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    .line 10018
    const-string v1, "CommonEngine"

    const-string v2, "!!!Camera retry!!! before return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 10014
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleStartPreview()V

    .line 10015
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleActivateShootingMode()V

    goto :goto_3

    .line 10022
    :sswitch_3
    const-string v1, "CommonEngine"

    const-string v2, "CAMERA_ERROR_SERVER_DIED"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 10023
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "camera.action.ACTION_ERROR_CAMERA_SERVER_DIED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 10024
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, -0x8

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    .line 10025
    const/4 v0, 0x1

    .line 10026
    goto/16 :goto_2

    .line 10028
    :sswitch_4
    const-string v1, "CommonEngine"

    const-string v2, "CAMERA_ERROR_MSG_CAMERA_DISCONNECTED"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 10029
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "camera.action.ACTION_ERROR_CAMERA_BUSY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 10030
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, -0xe

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    .line 10031
    const/4 v0, 0x1

    .line 10032
    goto/16 :goto_2

    .line 9974
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_4
        0x64 -> :sswitch_3
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x7d1 -> :sswitch_2
    .end sparse-switch
.end method
