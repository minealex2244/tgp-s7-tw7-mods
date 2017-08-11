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

.field private final PROGRESS_GROUP_LAND_BOTTOM_MARGIN:F

.field private final PROGRESS_GROUP_PORT_BOTTOM_MARGIN:F

.field private final PROGRESS_TEXT_HEIGHT:I

.field private final PROGRESS_TEXT_STROKE_COLOR:I

.field private final PROGRESS_TEXT_STROKE_WIDTH:I

.field private final PROGRESS_TEXT_WIDTH:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

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

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SCREEN_WIDTH:I

    .line 59
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SCREEN_HEIGHT:I

    .line 78
    const v0, 0x7f0b01c6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_GROUP_HEIGHT:I

    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [I

    const v1, 0x7f0b01be

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0b01c1

    .line 81
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0b01bf

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    const v1, 0x7f0b01c0

    .line 82
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_X:[I

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [I

    const v1, 0x7f0b01c2

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0b01c5

    .line 84
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0b01c3

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    const v1, 0x7f0b01c4

    .line 85
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_Y:[I

    .line 86
    const v0, 0x7f0b01cc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_WIDTH:I

    .line 87
    const v0, 0x7f0b01c9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_HEIGHT:I

    .line 88
    const v0, 0x7f0b034a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_GROUP_LAND_BOTTOM_MARGIN:F

    .line 89
    const v0, 0x7f0b034b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_GROUP_PORT_BOTTOM_MARGIN:F

    .line 91
    const v0, 0x7f0b01cb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_HEIGHT:I

    .line 92
    const v0, 0x7f0b01ca

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    .line 93
    const v0, 0x7f0b034c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_SIZE:F

    .line 94
    const v0, 0x7f0b01c8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_WIDTH:I

    .line 95
    const v0, 0x7f0b01c7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_HEIGHT:I

    .line 96
    const v0, 0x7f0e0017

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_STROKE_WIDTH:I

    .line 97
    const v0, 0x7f0d000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_STROKE_COLOR:I

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreStateLock:Ljava/lang/Object;

    .line 101
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 102
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 103
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 104
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 106
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    .line 107
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    .line 108
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mInputPath:Ljava/lang/String;

    .line 109
    const-string v0, ".shotandmore.temp"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mTempFileName:Ljava/lang/String;

    .line 113
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreState:I

    .line 116
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 117
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 118
    return-void
.end method

.method private cancelShotAndMoreCapture()V
    .locals 2

    .prologue
    .line 454
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    const-string v0, "ShotAndMore"

    const-string v1, "cancelShotAndMoreCapture - invalide state return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->stopShotAndMoreShutterSound()V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShotAndMore()V

    .line 462
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->onShotAndMoreCapturingCancel()V

    goto :goto_0
.end method

.method private checkShotAndMoreDumpDir()V
    .locals 5

    .prologue
    .line 468
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "saveDirName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 471
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 472
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

    .line 476
    :cond_0
    return-void
.end method

.method private getProgressText(I)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 611
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isEuropeanArabicNumerals()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    const-string v1, "%d%%"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 614
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v1, "%%%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private getRequiredStorageSize()J
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const-wide/32 v0, 0xa00000

    .line 482
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x1900000

    goto :goto_0
.end method

.method private getShotAndMoreState()I
    .locals 2

    .prologue
    .line 487
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 488
    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreState:I

    monitor-exit v1

    return v0

    .line 489
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
    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mTempFileName:Ljava/lang/String;

    return-object v0
.end method

.method private hideCaptureLayout()V
    .locals 2

    .prologue
    .line 504
    const-string v0, "ShotAndMore"

    const-string v1, "hideCaptureLayout"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 506
    return-void
.end method

.method private launchShotAndMoreStudio()V
    .locals 6

    .prologue
    .line 510
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.camera.shootingmode.shotandmore"

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 511
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v4, "com.sec.android.app.camera.shootingmode.shotandmore"

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showApplicationDisabledPopup(Ljava/lang/String;)V

    .line 536
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.camera.shootingmode.shotandmore"

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 516
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 517
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.camera.shootingmode.shotandmore"

    const-string v4, "com.sec.android.app.camera.shootingmode.shotandmore.ShotandmoreActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 520
    const-string v3, "sef_file_name"

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mInputPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string v3, "start_type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 523
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isFromLockScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 524
    const-string v3, "createdByLockscreen"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 528
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, 0x7e2

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f050002

    const v5, 0x7f050003

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 529
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "ShotAndMore"

    const-string v4, "com.arcsoft.magicshotstudio is not found "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 534
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v4, "com.sec.android.app.camera.shootingmode.shotandmore"

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showApplicationDisabledPopup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onShotAndMoreCapturingCancel()V
    .locals 5

    .prologue
    const/16 v4, 0x1a

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 539
    const-string v0, "ShotAndMore"

    const-string v1, "onShotAndMoreCapturingCancel"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 548
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->reset(Z)V

    .line 549
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->removeTempFile()V

    .line 550
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 551
    return-void
.end method

.method private onShotAndMoreCapturingStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 554
    const-string v0, "ShotAndMore"

    const-string v1, "ShotAndMoreCapturingStop"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 557
    const-string v0, "ShotAndMore"

    const-string v1, "onShotAndMoreCapturingStop - getShotAndMoreState is not SHOT_AND_MORE_STATE_START, return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopShotAndMore()V

    .line 565
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 566
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->hideCaptureLayout()V

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(I)V

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    goto :goto_0
.end method

.method private pushInputString(Ljava/lang/String;)V
    .locals 3
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mInputPath:Ljava/lang/String;

    .line 575
    sget-boolean v0, Lcom/sec/android/app/camera/util/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 576
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

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    return-void
.end method

.method private removeTempFile()V
    .locals 6

    .prologue
    .line 580
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    .line 581
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

    .line 583
    .local v2, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v1

    .line 585
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

    .line 590
    const-string v0, "ShotAndMore"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgressBar;->setMax(I)V

    .line 594
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    .line 596
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->hideCaptureLayout()V

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 599
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

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 606
    :cond_1
    return-void

    .line 592
    :cond_2
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private setCaptureProgressIncreased()V
    .locals 5

    .prologue
    .line 621
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    :goto_0
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    .line 622
    const/4 v1, 0x0

    .line 624
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

    .line 628
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

    .line 629
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

    .line 631
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    .line 632
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getProgressText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 633
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 634
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, 0x200

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 635
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, -0x181

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 636
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->showCaptureLayout()V

    .line 638
    :cond_0
    return-void

    .line 621
    .end local v1    # "progress":I
    :cond_1
    const/16 v2, 0x20

    goto :goto_0

    .line 625
    .restart local v1    # "progress":I
    :catch_0
    move-exception v0

    .line 626
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

    goto :goto_1
.end method

.method private setOutputFile()V
    .locals 6

    .prologue
    .line 641
    const-string v3, "ShotAndMore"

    const-string v4, "setOutputFile"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "directory":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 645
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 646
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 647
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

    .line 651
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 653
    new-instance v0, Ljava/io/File;

    .end local v0    # "cameraDir":Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    .restart local v0    # "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 655
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 656
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

    .line 657
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v4, -0xa

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    .line 665
    :goto_0
    return-void

    .line 662
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

    .line 664
    .local v2, "filename":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setShotAndMoreState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 493
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 494
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

    .line 495
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreState:I

    .line 496
    monitor-exit v1

    .line 497
    return-void

    .line 496
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
    .line 668
    const-string v0, "ShotAndMore"

    const-string v1, "showCaptureLayout"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 673
    :goto_0
    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private stopShotAndMoreShutterSound()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopCameraSound(I)V

    .line 677
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 678
    return-void
.end method


# virtual methods
.method public isCapturing()Z
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mShotAndMoreState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 124
    const/4 v0, 0x1

    monitor-exit v1

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 126
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
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 145
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setShotAndMoreEventListener(Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 149
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/16 v0, 0x7530

    .line 161
    invoke-virtual {p1, v0, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "picture-size"

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->SHOT_AND_MORE_BACK_RESOLUTION:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 166
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
    .line 173
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 175
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SCREEN_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_GROUP_LAND_BOTTOM_MARGIN:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 179
    new-instance v0, Lcom/samsung/android/glview/GLProgressBar;

    const/4 v2, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_HEIGHT:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f020165

    const v7, 0x7f020166

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLProgressBar;-><init>(Lcom/samsung/android/glview/GLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 183
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

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESSBAR_TEXT_SIZE:F

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v7

    mul-float/2addr v7, v1

    const v1, 0x7f0d0010

    .line 184
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_GROUP_PORT_BOTTOM_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_WIDTH:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_GROUP_LAND_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_GROUP_PORT_BOTTOM_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->CAPTURE_PROGRESS_WIDTH:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mMaxImageCount:I

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgressBar;->setMax(I)V

    .line 196
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

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 200
    return-void

    .line 193
    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 205
    const-string v0, "sef_file_type"

    const/16 v1, 0x830

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v0, "height"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v0, "width"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShotAndMoreEventListener(Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->cancelShotAndMoreCapture()V

    .line 227
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->reset(Z)V

    .line 228
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->removeTempFile()V

    .line 230
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 234
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

    .line 235
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
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

    .line 237
    const/4 v0, 0x1

    .line 239
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

    .line 244
    packed-switch p1, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 246
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->stopShotAndMoreShutterSound()V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShotAndMore()V

    .line 252
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->onShotAndMoreCapturingCancel()V

    move v0, v1

    .line 253
    goto :goto_0

    .line 255
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCaptureCount:I

    if-lez v2, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopShotAndMore()V

    move v0, v1

    .line 257
    goto :goto_0

    .line 244
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
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public onShotAndMoreApplicableMode(I)V
    .locals 2
    .param p1, "modes"    # I

    .prologue
    .line 280
    const-string v0, "ShotAndMore"

    const-string v1, "onShotAndMoreApplicableMode"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method public onShotAndMoreCaptureProgress(II)V
    .locals 6
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    const/16 v5, 0x191

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 285
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

    .line 287
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreState()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainCount(I)I

    move-result v0

    sub-int v1, p2, p1

    if-ge v0, v1, :cond_2

    .line 291
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->cancelShotAndMoreCapture()V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setStorageStatus(I)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto :goto_0

    .line 299
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 300
    const-string v0, "ShotAndMore"

    const-string v1, "onShotAndMoreCaptureProgress - getShotAndMoreState is not SHOT_AND_MORE_STATE_START, return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    :cond_3
    if-nez p1, :cond_4

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x5

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xfa0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    .line 309
    :cond_4
    add-int/lit8 v0, p2, -0x1

    if-le p1, v0, :cond_5

    .line 310
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->onShotAndMoreCapturingStop()V

    goto :goto_0

    .line 312
    :cond_5
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

    .line 318
    const-string v4, "ShotAndMore"

    const-string v5, "onShotAndMoreComplete"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 322
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreState()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 368
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 329
    const-string v4, "ShotAndMore"

    const-string v5, "onShotAndMoreComplete - return - shot and more already cancel "

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->cancelShotAndMoreCapture()V

    .line 332
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->reset(Z)V

    .line 333
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->removeTempFile()V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreTempFileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->renamePostSavingFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "outputFileName":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 340
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

    .line 341
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->pushInputString(Ljava/lang/String;)V

    .line 343
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentThumbnailSize()[I

    move-result-object v3

    .line 344
    .local v3, "thumbnailSize":[I
    aget v4, v3, v7

    aget v5, v3, v8

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 345
    .local v2, "thumbnailBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 346
    .local v0, "orientation":I
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v4, v2, v0, v7}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 351
    .end local v0    # "orientation":I
    .end local v2    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "thumbnailSize":[I
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 352
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/util/ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addUriListInSecureCamera(Landroid/net/Uri;)V

    .line 354
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateLatestMedia()V

    .line 356
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->reset(Z)V

    .line 357
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    .line 358
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 360
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4, v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 361
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4, v10, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 363
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4, v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 364
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4, v9, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 367
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->launchShotAndMoreStudio()V

    goto/16 :goto_0

    .line 348
    :cond_5
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
    .line 372
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

    .line 374
    if-nez p1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 7
    .param p1, "captureMethod"    # I

    .prologue
    const/16 v6, 0x1a

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 394
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    const-string v2, "ShotAndMore"

    const-string v3, "Return, isCapturing"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return v1

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->checkShotAndMoreDumpDir()V

    .line 400
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x10

    .line 401
    .local v0, "maxCaptureCount":I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainCount()I

    move-result v3

    if-ge v3, v0, :cond_2

    .line 402
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setStorageStatus(I)V

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v3, 0x191

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    move v1, v2

    .line 404
    goto :goto_0

    .line 400
    .end local v0    # "maxCaptureCount":I
    :cond_1
    const/16 v0, 0x20

    goto :goto_1

    .line 406
    .restart local v0    # "maxCaptureCount":I
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v4, 0x200

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 407
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v4, -0x181

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 409
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 411
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isContinuousAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->isHalfShutter()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 412
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    .line 415
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartShotAndMore()V

    .line 417
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->getShotAndMoreState()I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 418
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setShotAndMoreState(I)V

    .line 420
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 421
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v6, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 422
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 423
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 425
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->lockAEAWB()V

    .line 426
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->setOutputFile()V

    .line 428
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusState(I)V

    .line 429
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->removeResetTouchFocusMessage()V

    .line 430
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopAFWaitTimer()V

    .line 431
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeAFmessage()V

    .line 432
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestTransientAudioFocus()V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 437
    goto/16 :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 442
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 446
    return-void
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method
