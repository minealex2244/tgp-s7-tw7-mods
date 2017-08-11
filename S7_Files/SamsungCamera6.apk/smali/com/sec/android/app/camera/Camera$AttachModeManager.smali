.class Lcom/sec/android/app/camera/Camera$AttachModeManager;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachModeManager"
.end annotation


# static fields
.field private static final HIGH_QUALITY:I = 0x1

.field private static final KEY_AUDIO_BITRATE:Ljava/lang/String; = "audio_bitrate"

.field private static final KEY_AUDIO_CHANNEL:Ljava/lang/String; = "audio_channel"

.field private static final KEY_AUDIO_ENCODER:Ljava/lang/String; = "audio_encoder"

.field private static final KEY_AUDIO_SAMPLING_RATE:Ljava/lang/String; = "audio_sampling_rate"

.field private static final KEY_BACK_VIDEO_RESOLUTION:Ljava/lang/String; = "back_video_size"

.field private static final KEY_FILE_SIZE_INTERVAL:Ljava/lang/String; = "file_size_interval"

.field private static final KEY_FRONT_VIDEO_RESOLUTION:Ljava/lang/String; = "front_video_size"

.field private static final KEY_MODE_MMS:Ljava/lang/String; = "mms"

.field private static final KEY_OUTPUT_FORMAT:Ljava/lang/String; = "output_format"

.field private static final KEY_VIDEO_BITRATE:Ljava/lang/String; = "video_bitrate"

.field private static final KEY_VIDEO_ENCODER:Ljava/lang/String; = "video_encoder"

.field private static final KEY_VIDEO_FPS:Ljava/lang/String; = "video_fps"

.field private static final LOW_QUALITY:I


# instance fields
.field private mMyExtras:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 1

    .prologue
    .line 9353
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9354
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    .line 9355
    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/app/camera/Camera$AttachModeManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/Camera$AttachModeManager;

    .prologue
    .line 9331
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera$AttachModeManager;->checkAttachIntent()V

    return-void
.end method

.method private checkAttachIntent()V
    .locals 6

    .prologue
    const/16 v5, 0x1c2a

    const/16 v4, 0x1c27

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9361
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9362
    const-string v0, "Camera6"

    const-string v1, "checkAttachIntent - Image capture intent"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9363
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAttachImageMode(Z)V

    .line 9364
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAttachVideoMode(Z)V

    .line 9365
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mDimController:Lcom/sec/android/app/camera/DimController;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$5200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/DimController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    .line 9367
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v1, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9368
    const-string v0, "Camera6"

    const-string v1, "MMS Image attach mode."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9369
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(II)V

    .line 9395
    :cond_0
    :goto_0
    return-void

    .line 9371
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9372
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mIsCalling:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$5300(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9373
    const-string v0, "Camera6"

    const-string v1, "checkAttachIntent - now is calling. finish."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9374
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0a012a

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 9375
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 9377
    :cond_2
    const-string v0, "Camera6"

    const-string v1, "checkAttachIntent - Video capture intent"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9378
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAttachVideoMode(Z)V

    .line 9379
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAttachImageMode(Z)V

    .line 9381
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 9382
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera$AttachModeManager;->checkExtraVideoQuality()V

    .line 9383
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera$AttachModeManager;->checkExtraMediaRecorderProfileInfo()V

    .line 9384
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera$AttachModeManager;->checkExtraSizeLimit()V

    .line 9385
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera$AttachModeManager;->checkExtraDurationLimit()V

    .line 9386
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera$AttachModeManager;->checkExtraOutput()V

    .line 9388
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v1, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9389
    const-string v0, "Camera6"

    const-string v1, "MMS Viedo attach mode."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9390
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(II)V

    .line 9393
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mDimController:Lcom/sec/android/app/camera/DimController;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$5200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/DimController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    goto :goto_0
.end method

.method private checkExtraDurationLimit()V
    .locals 4

    .prologue
    .line 9401
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9402
    const-string v0, "Camera6"

    const-string v1, "No EXTRA_DURATION_LIMIT"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9409
    :goto_0
    return-void

    .line 9406
    :cond_0
    const-string v0, "Camera6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkExtraDurationLimit. duration limit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 9408
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRequestedRecordingDurationLimit(I)V

    goto :goto_0
.end method

.method private checkExtraMediaRecorderProfileInfo()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 9415
    const/4 v10, -0x1

    .line 9416
    .local v10, "NO_VALUE":I
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "video_encoder"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 9417
    .local v1, "videoEncoder":I
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "video_bitrate"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 9418
    .local v2, "videoBitrate":I
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "video_fps"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 9419
    .local v3, "videoFps":I
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "output_format"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 9420
    .local v4, "outputFormat":I
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "audio_encoder"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 9421
    .local v5, "audioEncoder":I
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "audio_bitrate"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 9422
    .local v6, "audioBitrate":I
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "audio_channel"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 9423
    .local v7, "audioChannels":I
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "audio_sampling_rate"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 9424
    .local v8, "audioSamplingRate":I
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "file_size_interval"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 9426
    .local v9, "fileSizeInterval":I
    const-string v0, "Camera6"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkExtraMediaRecorderProfileInfo. videoEncoder : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", videoBitrate : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", videoFps : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", outputFormat : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", audioEncoder : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", audioBitrate : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", audioChannels : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", audioSamplingRate : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", fileSizeInterval : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 9430
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v11

    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;-><init>(IIIIIIIII)V

    invoke-interface {v11, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRequestedMediaRecorderProfileInfo(Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;)V

    .line 9432
    return-void
.end method

.method private checkExtraOutput()V
    .locals 4

    .prologue
    .line 9438
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9439
    const-string v1, "Camera6"

    const-string v2, "No EXTRA_OUTPUT"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9449
    :goto_0
    return-void

    .line 9443
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 9444
    .local v0, "saveUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 9445
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRequestedSaveUri(Landroid/net/Uri;)V

    .line 9448
    :cond_1
    const-string v1, "Camera6"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkExtraOutput. saveUri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkExtraSizeLimit()V
    .locals 8

    .prologue
    .line 9455
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 9456
    :cond_0
    const-string v3, "Camera6"

    const-string v4, "No EXTRA_SIZE_LIMIT"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 9477
    :goto_0
    return-void

    .line 9460
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 9463
    .local v0, "requestedSizeLimit":J
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    if-lez v3, :cond_2

    .line 9464
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;

    move-result-object v3

    iget v2, v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    .line 9469
    .local v2, "videoBitRate":I
    :goto_1
    const-string v3, "Camera6"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExtraSizeLimit. requestedSizeLimit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reference size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    div-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 9471
    int-to-long v4, v2

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x8

    div-long/2addr v4, v6

    cmp-long v3, v0, v4

    if-gez v3, :cond_3

    .line 9472
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0a01c9

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 9473
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 9466
    .end local v2    # "videoBitRate":I
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoBitRateFromProfile()I

    move-result v2

    .restart local v2    # "videoBitRate":I
    goto :goto_1

    .line 9476
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRequestedRecordingSizeLimit(J)V

    goto/16 :goto_0
.end method

.method private checkExtraVideoQuality()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v6, -0x1

    .line 9484
    const/4 v0, -0x1

    .line 9489
    .local v0, "NO_VALUE":I
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "mms"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9492
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "back_video_size"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "front_video_size"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9495
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "back_video_size"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 9496
    .local v1, "backResolution":I
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "front_video_size"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    .line 9498
    .local v2, "frontResolution":I
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAttachVideoFixedResolution(II)V

    .line 9499
    const-string v3, "Camera6"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS EXTRA_FIXED_RESOLUTION, backResolution :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", frontResolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 9535
    .end local v1    # "backResolution":I
    .end local v2    # "frontResolution":I
    :goto_0
    return-void

    .line 9504
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3, v7, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAttachVideoFixedResolution(II)V

    .line 9505
    const-string v3, "Camera6"

    const-string v4, "MMS QCIF FIXED_RESOLUTION"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9510
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 9511
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_MIN_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 9512
    .restart local v1    # "backResolution":I
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RECORDING_MIN_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    .line 9514
    .restart local v2    # "frontResolution":I
    const-string v3, "Camera6"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXTRA_VIDEO_QUALITY - LOW_QUALITY, backResolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", frontResolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 9516
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAttachVideoFixedResolution(II)V

    goto :goto_0

    .line 9518
    .end local v1    # "backResolution":I
    .end local v2    # "frontResolution":I
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 9521
    const-string v3, "Camera6"

    const-string v4, "EXTRA_VIDEO_QUALITY - HIGH_QUALITY"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9523
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "back_video_size"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "front_video_size"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9526
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "back_video_size"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 9527
    .restart local v1    # "backResolution":I
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "front_video_size"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    .line 9529
    .restart local v2    # "frontResolution":I
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$AttachModeManager;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAttachVideoFixedResolution(II)V

    .line 9530
    const-string v3, "Camera6"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXTRA_FIXED_RESOLUTION, backResolution :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", frontResolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9532
    .end local v1    # "backResolution":I
    .end local v2    # "frontResolution":I
    :cond_4
    const-string v3, "Camera6"

    const-string v4, "No EXTRA for quality or resolution"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
