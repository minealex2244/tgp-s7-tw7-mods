.class public Lcom/sec/android/app/camera/AttachModeManager;
.super Ljava/lang/Object;
.source "AttachModeManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;


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

.field private static final LOW_QUALITY:I = 0x0

.field private static final NOT_REQUESTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AttachModeManager"


# instance fields
.field private mAttachBackVideoFixedResolution:I

.field private mAttachFrontVideoFixedResolution:I

.field private final mCameraContext:Lcom/sec/android/app/camera/Camera;

.field private mMyExtras:Landroid/os/Bundle;

.field private mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

.field private mRequestedRecordingDurationLimit:I

.field private mRequestedRecordingSizeLimit:J

.field private mRequestedSaveUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 3
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mAttachBackVideoFixedResolution:I

    .line 48
    iput v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mAttachFrontVideoFixedResolution:I

    .line 49
    iput v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mRequestedRecordingDurationLimit:I

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mRequestedRecordingSizeLimit:J

    .line 51
    iput-object v2, p0, Lcom/sec/android/app/camera/AttachModeManager;->mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    .line 52
    iput-object v2, p0, Lcom/sec/android/app/camera/AttachModeManager;->mRequestedSaveUri:Landroid/net/Uri;

    .line 56
    iput-object p1, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    .line 58
    return-void
.end method

.method private checkExtraDurationLimit()V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const-string v0, "AttachModeManager"

    const-string v1, "No EXTRA_DURATION_LIMIT"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v0, "AttachModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkExtraDurationLimit. duration limit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/AttachModeManager;->setRequestedRecordingDurationLimit(I)V

    goto :goto_0
.end method

.method private checkExtraMediaRecorderProfileInfo()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 166
    const/4 v10, -0x1

    .line 167
    .local v10, "NO_VALUE":I
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "video_encoder"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 168
    .local v1, "videoEncoder":I
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "video_bitrate"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 169
    .local v2, "videoBitrate":I
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "video_fps"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 170
    .local v3, "videoFps":I
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "output_format"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 171
    .local v4, "outputFormat":I
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "audio_encoder"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 172
    .local v5, "audioEncoder":I
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "audio_bitrate"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 173
    .local v6, "audioBitrate":I
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "audio_channel"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 174
    .local v7, "audioChannels":I
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "audio_sampling_rate"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 175
    .local v8, "audioSamplingRate":I
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v11, "file_size_interval"

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 177
    .local v9, "fileSizeInterval":I
    const-string v0, "AttachModeManager"

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

    .line 181
    new-instance v0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;-><init>(IIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/AttachModeManager;->setRequestedMediaRecorderProfileInfo(Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;)V

    .line 183
    return-void
.end method

.method private checkExtraOutput()V
    .locals 4

    .prologue
    .line 189
    iget-object v1, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    const-string v1, "AttachModeManager"

    const-string v2, "No EXTRA_OUTPUT"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 195
    .local v0, "saveUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 196
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/AttachModeManager;->setRequestedSaveUri(Landroid/net/Uri;)V

    .line 199
    :cond_1
    const-string v1, "AttachModeManager"

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
    .locals 6

    .prologue
    .line 206
    iget-object v2, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 207
    :cond_0
    const-string v2, "AttachModeManager"

    const-string v3, "No EXTRA_SIZE_LIMIT"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 212
    .local v0, "requestedSizeLimit":J
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AttachModeManager;->setRequestedRecordingSizeLimit(J)V

    goto :goto_0
.end method

.method private checkExtraVideoQuality()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v6, -0x1

    .line 220
    const/4 v0, -0x1

    .line 225
    .local v0, "NO_VALUE":I
    iget-object v3, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "mms"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "back_video_size"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "front_video_size"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "back_video_size"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 232
    .local v1, "backResolution":I
    iget-object v3, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "front_video_size"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    .line 234
    .local v2, "frontResolution":I
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/AttachModeManager;->setAttachVideoFixedResolution(II)V

    .line 235
    const-string v3, "AttachModeManager"

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

    .line 271
    .end local v1    # "backResolution":I
    .end local v2    # "frontResolution":I
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-direct {p0, v7, v7}, Lcom/sec/android/app/camera/AttachModeManager;->setAttachVideoFixedResolution(II)V

    .line 241
    const-string v3, "AttachModeManager"

    const-string v4, "MMS QCIF FIXED_RESOLUTION"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 247
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_MIN_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 248
    .restart local v1    # "backResolution":I
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RECORDING_MIN_RESOLUTION:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    .line 250
    .restart local v2    # "frontResolution":I
    const-string v3, "AttachModeManager"

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

    .line 252
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/AttachModeManager;->setAttachVideoFixedResolution(II)V

    goto :goto_0

    .line 254
    .end local v1    # "backResolution":I
    .end local v2    # "frontResolution":I
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 257
    const-string v3, "AttachModeManager"

    const-string v4, "EXTRA_VIDEO_QUALITY - HIGH_QUALITY"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "back_video_size"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "front_video_size"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 262
    iget-object v3, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "back_video_size"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    .line 263
    .restart local v1    # "backResolution":I
    iget-object v3, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "front_video_size"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    .line 265
    .restart local v2    # "frontResolution":I
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/AttachModeManager;->setAttachVideoFixedResolution(II)V

    .line 266
    const-string v3, "AttachModeManager"

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

    .line 268
    .end local v1    # "backResolution":I
    .end local v2    # "frontResolution":I
    :cond_4
    const-string v3, "AttachModeManager"

    const-string v4, "No EXTRA for quality or resolution"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setAttachVideoFixedResolution(II)V
    .locals 0
    .param p1, "backResolution"    # I
    .param p2, "frontResolution"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/sec/android/app/camera/AttachModeManager;->mAttachBackVideoFixedResolution:I

    .line 275
    iput p2, p0, Lcom/sec/android/app/camera/AttachModeManager;->mAttachFrontVideoFixedResolution:I

    .line 276
    return-void
.end method

.method private setRequestedMediaRecorderProfileInfo(Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/camera/AttachModeManager;->mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    .line 76
    return-void
.end method

.method private setRequestedRecordingDurationLimit(I)V
    .locals 0
    .param p1, "durationLimit"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/sec/android/app/camera/AttachModeManager;->mRequestedRecordingDurationLimit:I

    .line 85
    return-void
.end method

.method private setRequestedRecordingSizeLimit(J)V
    .locals 1
    .param p1, "sizeLimit"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/sec/android/app/camera/AttachModeManager;->mRequestedRecordingSizeLimit:J

    .line 94
    return-void
.end method

.method private setRequestedSaveUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/camera/AttachModeManager;->mRequestedSaveUri:Landroid/net/Uri;

    .line 103
    return-void
.end method


# virtual methods
.method protected checkAttachIntent()V
    .locals 6

    .prologue
    const/16 v5, 0x1c2a

    const/16 v4, 0x1c27

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "AttachModeManager"

    const-string v1, "checkAttachIntent - Image capture intent"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getDimController()Lcom/sec/android/app/camera/DimController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v1, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "AttachModeManager"

    const-string v1, "MMS Image attach mode."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(II)V

    .line 121
    const-string v0, "8011"

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CallState;->isCalling(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    const-string v0, "AttachModeManager"

    const-string v1, "checkAttachIntent - now is calling. finish."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f09012a

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 129
    :cond_2
    const-string v0, "AttachModeManager"

    const-string v1, "checkAttachIntent - Video capture intent"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 132
    invoke-direct {p0}, Lcom/sec/android/app/camera/AttachModeManager;->checkExtraVideoQuality()V

    .line 133
    invoke-direct {p0}, Lcom/sec/android/app/camera/AttachModeManager;->checkExtraMediaRecorderProfileInfo()V

    .line 134
    invoke-direct {p0}, Lcom/sec/android/app/camera/AttachModeManager;->checkExtraSizeLimit()V

    .line 135
    invoke-direct {p0}, Lcom/sec/android/app/camera/AttachModeManager;->checkExtraDurationLimit()V

    .line 136
    invoke-direct {p0}, Lcom/sec/android/app/camera/AttachModeManager;->checkExtraOutput()V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v1, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    const-string v0, "AttachModeManager"

    const-string v1, "MMS Viedo attach mode."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(II)V

    .line 141
    const-string v0, "8011"

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getDimController()Lcom/sec/android/app/camera/DimController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    goto :goto_0
.end method

.method public getAttachVideoFixedResolution()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mAttachBackVideoFixedResolution:I

    .line 65
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mAttachFrontVideoFixedResolution:I

    goto :goto_0
.end method

.method public getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mRequestedMediaRecorderProfileInfo:Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    return-object v0
.end method

.method public getRequestedRecordingDurationLimit()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mRequestedRecordingDurationLimit:I

    return v0
.end method

.method public getRequestedRecordingSizeLimit()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mRequestedRecordingSizeLimit:J

    return-wide v0
.end method

.method public getRequestedSaveUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mRequestedSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isAttachVideoFixedResolution()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 107
    iget v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mAttachBackVideoFixedResolution:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/AttachModeManager;->mAttachFrontVideoFixedResolution:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
