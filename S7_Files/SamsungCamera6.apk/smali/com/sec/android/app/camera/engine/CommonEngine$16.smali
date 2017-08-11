.class Lcom/sec/android/app/camera/engine/CommonEngine$16;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;->startPreviewAsync()V
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
    .line 6402
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 6405
    const-string v1, "StartPreviewThread"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 6408
    const-string v1, "AXLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartPreview**StartU["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6409
    const-string v1, "CommonEngine"

    const-string v2, "starting preview..."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6412
    :try_start_0
    const-string v1, "CommonEngine"

    const-string v2, "mCameraDevice.startPreview()"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 6414
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mPreviewSurfaceState:I
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2700(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v1

    if-nez v1, :cond_2

    .line 6415
    :cond_0
    const-string v1, "CommonEngine"

    const-string v2, "Camera is pausing, so do not start preview"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6416
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isStartingPreview()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6418
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->removeRequest(I)V

    .line 6463
    :cond_1
    :goto_0
    return-void

    .line 6423
    :cond_2
    const-string v1, "StartPreview"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 6424
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDevice:Lcom/samsung/android/camera/core/SemCamera;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core/SemCamera;->startPreview()V

    .line 6425
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 6427
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isFaceDetectionSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecorderStarting()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6428
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->startFaceDetection()V

    .line 6431
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v1

    if-ne v1, v6, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_5

    .line 6432
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoManager:Lcom/sec/android/app/camera/util/MotionPhotoManager;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1200(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/util/MotionPhotoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mParameters:Lcom/samsung/android/camera/core/SemCamera$Parameters;
    invoke-static {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2100(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera$Parameters;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/util/MotionPhotoManager;->startMotionPhotoComposer(Lcom/samsung/android/camera/core/SemCamera$Parameters;Z)V

    .line 6435
    :cond_5
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    if-nez v1, :cond_6

    .line 6436
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v2, 0x1

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsFinishOneShotPreviewCallback:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2902(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6446
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 6452
    const-string v1, "AXLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartPreview**EndU["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6454
    const-string v1, "AXLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total-CameraPreviewLoading**EndU["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6456
    const-string v1, "AXLOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total-Shot2Shot**EndU["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6457
    const-string v1, "VerificationLog"

    const-string v2, "Executed"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 6458
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 6460
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_MULTI_INSTANCE_CAMERA:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isMultiInstanceCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6461
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->prepareStandbyDevice()V
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$3000(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    goto/16 :goto_0

    .line 6438
    :catch_0
    move-exception v0

    .line 6442
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreviewAsync : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6443
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$16;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/engine/CommonEngine$ErrorMessageHandler;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
