.class public Lcom/sec/android/app/camera/shootingmode/ShotAndMore;
.super Ljava/lang/Object;
.source "ShotAndMore.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;


# static fields
.field private static final INTENT_SEF_PATH_NAME:Ljava/lang/String; = "sef_file_name"

.field private static final INTENT_START_TYPE:Ljava/lang/String; = "start_type"

.field private static final REQUIRED_STORAGE_SIZE_FRONT:J = 0xa00000L

.field private static final REQUIRED_STORAGE_SIZE_REAR:J = 0x1900000L

.field private static final SHOTANDMORE_MODES:Ljava/lang/String; = "com.sec.android.app.camera.shootingmode.shotandmore.ShotandmoreActivity"

.field private static final SHOTANDMORE_PACKAGE:Ljava/lang/String; = "com.sec.android.app.camera.shootingmode.shotandmore"

.field private static final SHOT_AND_MORE_FRONT_MAX_IMAGE_COUNT:I = 0x10

.field private static final SHOT_AND_MORE_MAX_IMAGE_COUNT:I = 0x20

.field private static final SHOT_AND_MORE_MAX_PROGRESS_COUNT:I = 0x64

.field private static final SHOT_AND_MORE_STATE_IDLE:I = 0x1

.field private static final SHOT_AND_MORE_STATE_START:I = 0x2

.field private static final SHOT_AND_MORE_STATE_STOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ShotAndMore"


# instance fields
.field private final CAPTURE_PROGRESS_HEIGHT:I

.field private final CAPTURE_PROGRESS_WIDTH:I

.field private final CAPTURE_PROGRESS_X:[I

.field private final CAPTURE_PROGRESS_Y:[I

.field private final PROGRESSBAR_TEXT_BOTTOM_PADDING:I

.field private final PROGRESSBAR_TEXT_HEIGHT:I

.field private final PROGRESSBAR_TEXT_SIZE:F

.field private final PROGRESS_GROUP_HEIGHT:I

.field private final PROGRESS_TEXT_HEIGHT:I

.field private final PROGRESS_TEXT_STROKE_COLOR:I

.field private final PROGRESS_TEXT_STROKE_WIDTH:I

.field private final PROGRESS_TEXT_WIDTH:I

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureCount:I

.field private mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mInputPath:Ljava/lang/String;

.field private mMaxImageCount:I

.field private mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProgressText:Lcom/samsung/android/glview/GLText;

.field private mShotAndMoreState:I

.field private final mShotAndMoreStateLock:Ljava/lang/Object;

.field private mTempFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const v0, 0x7f0a01ea

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_GROUP_HEIGHT:I

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [I

    const v1, 0x7f0a01e2

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a01e5

    .line 80
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a01e3

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    const v1, 0x7f0a01e4

    .line 81
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_X:[I

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [I

    const v1, 0x7f0a01e6

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a01e9

    .line 83
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a01e7

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    const v1, 0x7f0a01e8

    .line 84
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_Y:[I

    .line 85
    const v0, 0x7f0a01f0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_WIDTH:I

    .line 86
    const v0, 0x7f0a01ed

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_HEIGHT:I

    .line 88
    const v0, 0x7f0a01ef

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_HEIGHT:I

    .line 89
    const v0, 0x7f0a01ee

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    .line 90
    const v0, 0x7f0a0392

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_SIZE:F

    .line 91
    const v0, 0x7f0a01ec

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_WIDTH:I

    .line 92
    const v0, 0x7f0a01eb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_HEIGHT:I

    .line 93
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_STROKE_WIDTH:I

    .line 94
    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_STROKE_COLOR:I

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreStateLock:Ljava/lang/Object;

    .line 98
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 99
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 100
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 101
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 103
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    .line 104
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    .line 105
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mInputPath:Ljava/lang/String;

    .line 106
    const-string v0, ".shotandmore.temp"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mTempFileName:Ljava/lang/String;

    .line 110
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreState:I

    .line 113
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 114
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 115
    return-void
.end method

.method private cancelShotAndMoreCapture()V
    .locals 2

    .prologue
    .line 427
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    const-string v0, "ShotAndMore"

    const-string v1, "cancelShotAndMoreCapture - invalide state return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->stopShotAndMoreShutterSound()V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShotAndMore()V

    .line 435
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->onShotAndMoreCapturingCancel()V

    goto :goto_0
.end method

.method private checkShotAndMoreDumpDir()V
    .locals 5

    .prologue
    .line 441
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "saveDirName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 444
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 445
    const-string v2, "ShotAndMore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to Create Directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    return-void
.end method

.method private getRequiredStorageSize()J
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    const-wide/32 v0, 0xa00000

    .line 454
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x1900000

    goto :goto_0
.end method

.method private getShotAndMoreState()I
    .locals 2

    .prologue
    .line 459
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 460
    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreState:I

    monitor-exit v1

    return v0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getShotAndMoreTempFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mTempFileName:Ljava/lang/String;

    return-object v0
.end method

.method private hideCaptureLayout()V
    .locals 2

    .prologue
    .line 476
    const-string v0, "ShotAndMore"

    const-string v1, "hideCaptureLayout"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 478
    return-void
.end method

.method private launchShotAndMoreStudio()V
    .locals 6

    .prologue
    .line 482
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.camera.shootingmode.shotandmore"

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.camera.shootingmode.shotandmore"

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 488
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 489
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.camera.shootingmode.shotandmore"

    const-string v4, "com.sec.android.app.camera.shootingmode.shotandmore.ShotandmoreActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 492
    const-string v3, "sef_file_name"

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mInputPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v3, "start_type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 495
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isFromLockScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 496
    const-string v3, "createdByLockscreen"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f050002

    const v5, 0x7f050003

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 501
    :catch_0
    move-exception v1

    .line 502
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "ShotAndMore"

    const-string v4, "com.arcsoft.magicshotstudio is not found "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private onShotAndMoreCapturingCancel()V
    .locals 5

    .prologue
    const/16 v4, 0x1a

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 511
    const-string v0, "ShotAndMore"

    const-string v1, "onShotAndMoreCapturingCancel"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAfIfNeeded()V

    .line 520
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->reset(Z)V

    .line 521
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->removeTempFile()V

    .line 522
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 523
    return-void
.end method

.method private onShotAndMoreCapturingStop()V
    .locals 3

    .prologue
    .line 526
    const-string v0, "ShotAndMore"

    const-string v1, "ShotAndMoreCapturingStop"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 529
    const-string v0, "ShotAndMore"

    const-string v1, "onShotAndMoreCapturingStop - getShotAndMoreState is not SHOT_AND_MORE_STATE_START, return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopShotAndMore()V

    .line 537
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 538
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->hideCaptureLayout()V

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SHOT_AND_MORE_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;)V

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    goto :goto_0
.end method

.method private pushInputString(Ljava/lang/String;)V
    .locals 3
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mInputPath:Ljava/lang/String;

    .line 547
    sget-boolean v0, Lcom/sec/android/app/camera/util/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 548
    const-string v0, "ShotAndMore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushInputString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_0
    return-void
.end method

.method private removeTempFile()V
    .locals 6

    .prologue
    .line 552
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "directory":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    return-void

    .line 556
    :catch_0
    move-exception v1

    .line 557
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "ShotAndMore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reset(Z)V
    .locals 3
    .param p1, "bPause"    # Z

    .prologue
    const/4 v2, 0x0

    .line 562
    const-string v0, "ShotAndMore"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgressBar;->setMax(I)V

    .line 566
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    .line 568
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->hideCaptureLayout()V

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 578
    :cond_1
    return-void

    .line 564
    :cond_2
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private setCaptureProgressIncreased()V
    .locals 5

    .prologue
    .line 581
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    :goto_0
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    .line 582
    const/4 v1, 0x0

    .line 584
    .local v1, "progress":I
    :try_start_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    div-int v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_1
    const-string v2, "ShotAndMore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCaptureCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v2, "ShotAndMore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    .line 592
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 594
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 595
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, 0x200

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 596
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, -0x181

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 597
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->showCaptureLayout()V

    .line 599
    :cond_0
    return-void

    .line 581
    .end local v1    # "progress":I
    :cond_1
    const/16 v2, 0x20

    goto :goto_0

    .line 585
    .restart local v1    # "progress":I
    :catch_0
    move-exception v0

    .line 586
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "ShotAndMore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture count calculate - finish : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setOutputFile()V
    .locals 6

    .prologue
    .line 602
    const-string v3, "ShotAndMore"

    const-string v4, "setOutputFile"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, "directory":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 607
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 608
    const-string v3, "ShotAndMore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to Create Directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 614
    new-instance v0, Ljava/io/File;

    .end local v0    # "cameraDir":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    .restart local v0    # "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 616
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 617
    const-string v3, "ShotAndMore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to Create Directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, -0xa

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    .line 626
    :goto_0
    return-void

    .line 623
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "filename":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setShotAndMoreState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 465
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 466
    :try_start_0
    const-string v0, "ShotAndMore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShotAndMoreState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreState:I

    .line 468
    monitor-exit v1

    .line 469
    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showCaptureLayout()V
    .locals 2

    .prologue
    .line 629
    const-string v0, "ShotAndMore"

    const-string v1, "showCaptureLayout"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private stopShotAndMoreShutterSound()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SHOT_AND_MORE_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;)V

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 639
    return-void
.end method


# virtual methods
.method public isCapturing()Z
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 121
    const/4 v0, 0x1

    monitor-exit v1

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setShotAndMoreEventListener(Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 146
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/16 v0, 0x7530

    .line 158
    invoke-virtual {p1, v0, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "picture-size"

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->SHOT_AND_MORE_BACK_RESOLUTION:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v0, "picture-size"

    const-string v1, "1920x1080"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 10
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 170
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 172
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_X:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v2, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_Y:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 176
    new-instance v0, Lcom/samsung/android/glview/GLProgressBar;

    const/4 v2, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_HEIGHT:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f02019b

    const v7, 0x7f02019c

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLProgressBar;-><init>(Lcom/samsung/android/glview/GLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 180
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    const/4 v3, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_HEIGHT:I

    int-to-float v5, v1

    const-string v6, ""

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_SIZE:F

    const v1, 0x7f0d0011

    .line 181
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_X:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_Y:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_X:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_Y:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_X:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_Y:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgressBar;->setMax(I)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 197
    return-void

    .line 190
    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 202
    const-string v0, "sef_file_type"

    const/16 v1, 0x830

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v0, "height"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v0, "width"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShotAndMoreEventListener(Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 222
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->cancelShotAndMoreCapture()V

    .line 223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->reset(Z)V

    .line 224
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->removeTempFile()V

    .line 225
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 229
    const-string v0, "ShotAndMore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "ShotAndMore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown return, keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 239
    packed-switch p1, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 241
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->stopShotAndMoreShutterSound()V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShotAndMore()V

    .line 247
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->onShotAndMoreCapturingCancel()V

    move v0, v1

    .line 248
    goto :goto_0

    .line 250
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    if-lez v2, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopShotAndMore()V

    move v0, v1

    .line 252
    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public onShotAndMoreApplicableMode(I)V
    .locals 2
    .param p1, "modes"    # I

    .prologue
    .line 285
    const-string v0, "ShotAndMore"

    const-string v1, "onShotAndMoreApplicableMode"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method public onShotAndMoreCaptureProgress(II)V
    .locals 4
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    const/4 v3, 0x0

    .line 290
    const-string v0, "ShotAndMore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShotAndMoreCaptureProgress - current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {v3}, Lcom/sec/android/app/camera/util/StorageUtils;->getCachedStorageStatus(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->cancelShotAndMoreCapture()V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 313
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 299
    const-string v0, "ShotAndMore"

    const-string v1, "onShotAndMoreCaptureProgress - getShotAndMoreState is not SHOT_AND_MORE_STATE_START, return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :cond_1
    if-nez p1, :cond_2

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->SHOT_AND_MORE_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xfa0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    .line 308
    :cond_2
    add-int/lit8 v0, p2, -0x1

    if-le p1, v0, :cond_3

    .line 309
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->onShotAndMoreCapturingStop()V

    goto :goto_0

    .line 311
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setCaptureProgressIncreased()V

    goto :goto_0
.end method

.method public onShotAndMoreComplete()V
    .locals 11

    .prologue
    const/16 v10, 0x1a

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 317
    const-string v4, "ShotAndMore"

    const-string v5, "onShotAndMoreComplete"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 321
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreState()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 352
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreTempFileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->renamePostSavingFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "outputFileName":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 329
    const-string v4, "ShotAndMore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shot and more file name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->pushInputString(Ljava/lang/String;)V

    .line 332
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentThumbnailSize()Landroid/util/Size;

    move-result-object v3

    .line 333
    .local v3, "thumbnailSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 334
    .local v2, "thumbnailBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 335
    .local v0, "orientation":I
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v4, v2, v0, v7}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 340
    .end local v0    # "orientation":I
    .end local v2    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "thumbnailSize":Landroid/util/Size;
    :goto_1
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->reset(Z)V

    .line 341
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 342
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 344
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4, v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 345
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4, v10, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 347
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4, v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 348
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4, v9, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 351
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->launchShotAndMoreStudio()V

    goto :goto_0

    .line 337
    :cond_3
    const-string v4, "ShotAndMore"

    const-string v5, "shot and more output file error"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onShotAndMoreProcessProgress(II)V
    .locals 3
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    .line 356
    const-string v0, "ShotAndMore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShotAndMoreProcessProgress - current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    if-nez p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 6
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    const/16 v5, 0x1a

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 378
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    const-string v1, "ShotAndMore"

    const-string v2, "Return, isCapturing"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_0
    return v0

    .line 383
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->checkShotAndMoreDumpDir()V

    .line 384
    invoke-static {v1}, Lcom/sec/android/app/camera/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    move v0, v1

    .line 386
    goto :goto_0

    .line 388
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, 0x200

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 389
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, -0x181

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 391
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 393
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isContinuousAutoFocusSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isHalfShutter()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->isTouchAfActive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 394
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    .line 397
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartShotAndMore()V

    .line 399
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreState()I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 400
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 402
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 403
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v5, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 404
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 405
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 407
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->lockAEAWB()V

    .line 408
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setOutputFile()V

    .line 410
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAfState(I)V

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->removeAfMessages()V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 415
    goto/16 :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 420
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 424
    return-void
.end method
