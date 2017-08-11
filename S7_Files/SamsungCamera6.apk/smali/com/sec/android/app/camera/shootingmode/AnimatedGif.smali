.class public Lcom/sec/android/app/camera/shootingmode/AnimatedGif;
.super Ljava/lang/Object;
.source "AnimatedGif.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;


# static fields
.field private static final DEFAULT_PLAY_SPEED:I = 0xc8

.field protected static final TAG:Ljava/lang/String; = "AnimatedGif"


# instance fields
.field private final CAPTURE_PROGRESS_TEXT_BOTTOM_MARGIN:F

.field private final CAPTURE_PROGRESS_TEXT_BOTTOM_POS_X:F

.field private final CAPTURE_PROGRESS_TEXT_BOTTOM_POS_Y:F

.field private final CAPTURE_PROGRESS_TEXT_HEIGHT:F

.field private final CAPTURE_PROGRESS_TEXT_SIZE:F

.field private final CAPTURE_PROGRESS_TEXT_WIDTH:F

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureProgressText:Lcom/samsung/android/glview/GLText;

.field private mCapturedFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentOrientation:I

.field private mCurrentStringProgressCount:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mIsBurstCapturing:Z

.field private mLastCaptureCount:I

.field private mLowDeviceStorageToast:Landroid/widget/Toast;

.field private mStoringDirOriginPath:Ljava/lang/String;

.field private mStoringDirVirtualPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 4
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const v0, 0x7f0b0258

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->CAPTURE_PROGRESS_TEXT_SIZE:F

    .line 70
    const v0, 0x7f0b0257

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->CAPTURE_PROGRESS_TEXT_HEIGHT:F

    .line 71
    const v0, 0x7f0b0259

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->CAPTURE_PROGRESS_TEXT_WIDTH:F

    .line 72
    const v0, 0x7f0b0056

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->CAPTURE_PROGRESS_TEXT_BOTTOM_MARGIN:F

    .line 73
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->CAPTURE_PROGRESS_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->CAPTURE_PROGRESS_TEXT_BOTTOM_POS_X:F

    .line 74
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->CAPTURE_PROGRESS_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->CAPTURE_PROGRESS_TEXT_BOTTOM_POS_Y:F

    .line 76
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 77
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 78
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 79
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 80
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    .line 81
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    .line 83
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLastCaptureCount:I

    .line 84
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    .line 85
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirVirtualPath:Ljava/lang/String;

    .line 86
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirOriginPath:Ljava/lang/String;

    .line 87
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    .line 88
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLowDeviceStorageToast:Landroid/widget/Toast;

    .line 91
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 92
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 93
    return-void
.end method

.method private calculateOrientationForPicture(I)I
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 357
    move v0, p1

    .line 358
    .local v0, "rotation":I
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 360
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    .line 367
    :cond_1
    :goto_0
    return v0

    .line 362
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 363
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method private makeAnimatedGif()V
    .locals 33

    .prologue
    .line 371
    const-string v29, "AnimatedGif"

    const-string v30, "makeAnimatedGif E"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    .line 547
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 377
    .local v8, "dateTaken":J
    invoke-static {v8, v9}, Lcom/sec/android/app/camera/util/ImageUtils;->createName(J)Ljava/lang/String;

    move-result-object v21

    .line 380
    .local v21, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v10

    .line 382
    .local v10, "directory":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".gif"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 383
    .local v12, "fileName":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 385
    .local v13, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v29

    const-string v30, "com.sec.agif_maker"

    invoke-static/range {v29 .. v30}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_c

    .line 386
    new-instance v4, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    invoke-direct {v4}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;-><init>()V

    .line 387
    .local v4, "agif":Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;
    const/16 v28, 0x0

    .line 388
    .local v28, "width":I
    const/16 v17, 0x0

    .line 389
    .local v17, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentOrientation:I

    move/from16 v22, v0

    .line 390
    .local v22, "orientation":I
    const-string v29, "QURAM"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "orientation = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    rem-int/lit8 v29, v22, 0x2

    if-eqz v29, :cond_3

    .line 392
    const/16 v28, 0x1e0

    .line 393
    const/16 v17, 0x280

    .line 399
    :goto_1
    const/16 v29, 0x3

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setMaxTaskTP(I)V

    .line 400
    const/16 v29, 0xc8

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setDelay(I)V

    .line 401
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setDispose(I)V

    .line 404
    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setPosition(II)V

    .line 405
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setRepeat(I)V

    .line 406
    move/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setGlobalSize(II)V

    .line 407
    move/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setSize(II)V

    .line 408
    const/16 v29, -0x1

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setTransparent(I)V

    .line 409
    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setWriteFunc(I)V

    .line 410
    invoke-virtual {v4, v13}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->start(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_1

    .line 411
    const-string v29, "QURAM"

    const-string v30, "start error"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_1
    const/16 v18, 0x0

    .local v18, "index":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    mul-int/lit8 v30, v22, 0x5a

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->calculateOrientationForPicture(I)I

    move-result v30

    move-object/from16 v0, v29

    move/from16 v1, v28

    move/from16 v2, v17

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->loadBitmapToDesiredDimension(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 418
    .local v24, "tempBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->addFrameTP(Landroid/graphics/Bitmap;)Z

    move-result v29

    if-nez v29, :cond_2

    .line 419
    const-string v29, "QURAM"

    const-string v30, "addFrame error"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 395
    .end local v18    # "index":I
    .end local v24    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_3
    const/16 v28, 0x280

    .line 396
    const/16 v17, 0x1e0

    goto/16 :goto_1

    .line 423
    .restart local v18    # "index":I
    :cond_4
    invoke-virtual {v4}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->finish()Z

    move-result v29

    if-nez v29, :cond_5

    .line 424
    const-string v29, "QURAM"

    const-string v30, "finish error"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_5
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->removeTempGifBurstPics(Z)Z

    .line 429
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v5, "agifFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 431
    .local v14, "fileSize":J
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_6

    .line 432
    const-string v29, "AnimatedGif"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " is not exists.."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v8, v9, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->insertUTCToSEF(JLjava/io/File;)V

    .line 439
    const-string v20, "Animated_Gif_Info"

    .line 441
    .local v20, "keyName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v29

    const/16 v30, 0x960

    const/16 v31, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-static {v5, v0, v1, v2, v3}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_3
    const/16 v16, 0x0

    .line 448
    .local v16, "fileUri":Landroid/net/Uri;
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 449
    .local v27, "values":Landroid/content/ContentValues;
    const-string v29, "title"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v29, "_display_name"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v29, "datetaken"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 456
    const-string v29, "mime_type"

    const-string v30, "image/gif"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v29, "orientation"

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    const-string v29, "_data"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v29, "height"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    const-string v29, "width"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    const-string v29, "_size"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 463
    const-string v29, "langagecode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v29, "addr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/Engine;->getAddressValue()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v29, "date_modified"

    const-wide/16 v30, 0x3e8

    div-long v30, v8, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 469
    :try_start_1
    const-string v29, "AnimatedGif"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "db insert E"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    sget-object v30, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 471
    const-string v29, "AnimatedGif"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "db insert X"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-eqz v16, :cond_9

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->getAddressValue()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_7

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getImageIDListHaveAddress()Ljava/util/ArrayList;

    move-result-object v29

    invoke-static/range {v16 .. v16}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v29

    if-eqz v29, :cond_8

    .line 479
    const-string v29, "GATE"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "<GATE-M>PICTURE_TAKEN : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " </GATE-M>"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentUri(Landroid/net/Uri;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v13}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentFilePath(Ljava/lang/String;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/util/ContentData;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/sec/android/app/camera/util/ContentData;->setContentVideoType(Z)V

    .line 486
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v7, "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v29

    if-eqz v29, :cond_b

    .line 488
    const-string v29, "Z002"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [Landroid/content/ContentValues;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->broadcastMultipleGeneralEventForLogging(Landroid/content/Context;[Landroid/content/ContentValues;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    .line 499
    .end local v7    # "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v29

    new-instance v30, Landroid/content/Intent;

    const-string v31, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v32

    invoke-direct/range {v30 .. v32}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentThumbnailSize()[I

    move-result-object v26

    .line 502
    .local v26, "thumbnailSize":[I
    const/16 v29, 0x0

    aget v29, v26, v29

    const/16 v30, 0x1

    aget v30, v26, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v13, v0, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 503
    .local v25, "thumbnailBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v29

    if-eqz v29, :cond_a

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addUriListInSecureCamera(Landroid/net/Uri;)V

    .line 509
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateLatestMedia()V

    .line 546
    .end local v4    # "agif":Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;
    .end local v5    # "agifFile":Ljava/io/File;
    .end local v14    # "fileSize":J
    .end local v16    # "fileUri":Landroid/net/Uri;
    .end local v17    # "height":I
    .end local v20    # "keyName":Ljava/lang/String;
    .end local v22    # "orientation":I
    .end local v25    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    .end local v26    # "thumbnailSize":[I
    .end local v27    # "values":Landroid/content/ContentValues;
    .end local v28    # "width":I
    :goto_6
    const-string v29, "AnimatedGif"

    const-string v30, "makeAnimatedGif X"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 443
    .restart local v4    # "agif":Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;
    .restart local v5    # "agifFile":Ljava/io/File;
    .restart local v14    # "fileSize":J
    .restart local v17    # "height":I
    .restart local v20    # "keyName":Ljava/lang/String;
    .restart local v22    # "orientation":I
    .restart local v28    # "width":I
    :catch_0
    move-exception v11

    .line 444
    .local v11, "e":Ljava/io/IOException;
    const-string v29, "AnimatedGif"

    const-string v30, "error while addSEFData in AnimatedGif"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 490
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v7    # "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v16    # "fileUri":Landroid/net/Uri;
    .restart local v27    # "values":Landroid/content/ContentValues;
    :cond_b
    :try_start_2
    const-string v29, "Z001"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 494
    .end local v7    # "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_1
    move-exception v23

    .line 495
    .local v23, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v29, "AnimatedGif"

    const-string v30, "Not enough space in database"

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v29, v0

    const v30, 0x7f0a01c2

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 511
    .end local v4    # "agif":Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;
    .end local v5    # "agifFile":Ljava/io/File;
    .end local v14    # "fileSize":J
    .end local v16    # "fileUri":Landroid/net/Uri;
    .end local v17    # "height":I
    .end local v18    # "index":I
    .end local v20    # "keyName":Ljava/lang/String;
    .end local v22    # "orientation":I
    .end local v23    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    .end local v27    # "values":Landroid/content/ContentValues;
    .end local v28    # "width":I
    :cond_c
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 512
    .local v19, "intent":Landroid/content/Intent;
    const-string v29, "com.sec.agif_maker"

    const-string v30, "com.sec.agif_maker.GifMakerActivity"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const-string v29, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v6, v0, [Ljava/lang/String;

    .line 517
    .local v6, "capturedFilePath":[Ljava/lang/String;
    const/16 v18, 0x0

    .restart local v18    # "index":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_e

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v6, v18

    .line 520
    aget-object v29, v6, v18

    if-nez v29, :cond_d

    .line 521
    const-string v29, "AnimatedGif"

    const-string v30, "[AGIF] showAnimatedGifMode return error! : file Path is null!! "

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 517
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 527
    :cond_e
    const-string v29, "FilePaths"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string v29, "ResultFilePath"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v29

    if-eqz v29, :cond_11

    .line 533
    const-string v29, "Orientation"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentOrientation:I

    move/from16 v30, v0

    mul-int/lit8 v30, v30, 0x5a

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Lcom/sec/android/app/camera/util/Util;->calculateOrientation(IZ)I

    move-result v30

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isFromLockScreen()Z

    move-result v29

    if-nez v29, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 539
    :cond_f
    const-string v29, "createdByLockscreen"

    const/16 v30, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 542
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const/16 v30, 0x7e8

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const v30, 0x7f050002

    const v31, 0x7f050003

    invoke-virtual/range {v29 .. v31}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_6

    .line 535
    :cond_11
    const-string v29, "Orientation"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentOrientation:I

    move/from16 v30, v0

    mul-int/lit8 v30, v30, 0x5a

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_8
.end method

.method private removeTempGifBurstPics(Z)Z
    .locals 8
    .param p1, "removeDir"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 550
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirVirtualPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    .local v2, "storingDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 575
    :cond_0
    :goto_0
    return v3

    .line 555
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 557
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_3

    .line 558
    array-length v6, v1

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v0, v1, v5

    .line 559
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 560
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_2

    .line 561
    const-string v3, "AnimatedGif"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to delete file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 562
    goto :goto_0

    .line 558
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 568
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    if-eqz p1, :cond_0

    .line 569
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 570
    const-string v3, "AnimatedGif"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to delete directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 571
    goto :goto_0
.end method

.method private showLowDeviceStorageToast()V
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLowDeviceStorageToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLowDeviceStorageToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLowDeviceStorageToast:Landroid/widget/Toast;

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a01d4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLowDeviceStorageToast:Landroid/widget/Toast;

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 587
    :cond_2
    return-void
.end method


# virtual methods
.method public hideCaptureProgressText()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 5
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 116
    const-string v0, "AnimatedGif"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v1, v4, [I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainCount(I)I

    move-result v0

    if-gt v0, v3, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x191

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->showLowDeviceStorageToast()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    .line 133
    :cond_1
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.AgifPic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirVirtualPath:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirVirtualPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->makeDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    const-string v0, "AnimatedGif"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to make directory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirVirtualPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->convertOriginFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.AgifPic"

    const-string v2, "/.AgifPic"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirOriginPath:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public onBurstCaptureCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    const-string v0, "AnimatedGif"

    const-string v1, "onBurstCaptureCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->terminateBurstCapture()V

    .line 152
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    .line 154
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLastCaptureCount:I

    .line 155
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->hideCaptureProgressText()V

    .line 163
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->setCapturingProgress(I)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x27e

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 168
    return-void
.end method

.method public onBurstCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 172
    const-string v0, "AnimatedGif"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstCaptureProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->setCapturingProgress(I)V

    .line 175
    if-nez p1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->showCaptureProgressText()V

    .line 178
    :cond_0
    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 2

    .prologue
    .line 182
    const-string v0, "AnimatedGif"

    const-string v1, "onBurstCaptureStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureSound(I)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x27e

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    .line 191
    return-void
.end method

.method public onBurstCaptureStopped(I)Z
    .locals 2
    .param p1, "lastImageNum"    # I

    .prologue
    .line 195
    const-string v0, "AnimatedGif"

    const-string v1, "onBurstCaptureStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLastCaptureCount:I

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    .line 202
    return-void
.end method

.method public onBurstStringProgress([B)Z
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 206
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    .line 207
    const-string v0, "AnimatedGif"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstStringProgress, stringProgressedCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new String(data) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->convertVirtualFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->requestBurstCaptureString()V

    .line 213
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLastCaptureCount:I

    if-ne v0, v1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->makeAnimatedGif()V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->burstCaptureCompleted()V

    .line 217
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 222
    const-string v0, "picture-size"

    const-string v1, "640x480"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 9
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 227
    const-string v0, "AnimatedGif"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 230
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->CAPTURE_PROGRESS_TEXT_BOTTOM_POS_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->CAPTURE_PROGRESS_TEXT_BOTTOM_POS_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->CAPTURE_PROGRESS_TEXT_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->CAPTURE_PROGRESS_TEXT_HEIGHT:F

    const-string v6, ""

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->CAPTURE_PROGRESS_TEXT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 231
    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    const v8, 0x7f0d0025

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x7f0d0023

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 242
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 251
    const-string v0, "AnimatedGif"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 254
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelBurstCapture()V

    .line 256
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v4, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    .line 266
    :cond_2
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->removeTempGifBurstPics(Z)Z

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureStoringFilePath(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 269
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 273
    const-string v0, "AnimatedGif"

    const-string v1, "onKeyDown"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 279
    const-string v0, "AnimatedGif"

    const-string v1, "onKeyUp"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    packed-switch p1, :pswitch_data_0

    .line 288
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 282
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x1

    goto :goto_0

    .line 280
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
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 309
    const-string v2, "AnimatedGif"

    const-string v3, "onShutterKeyPressed"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 313
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirOriginPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureStoringFilePath(Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->disableChangeBurstShootingMode()V

    .line 315
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterPressed()V

    .line 316
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentOrientation:I

    .line 318
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainCount(I)I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->showLowDeviceStorageToast()V

    .line 323
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 2
    .param p1, "captureMethod"    # I

    .prologue
    .line 328
    const-string v0, "AnimatedGif"

    const-string v1, "onShutterKeyReleased"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterReleased(I)V

    .line 332
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 337
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 341
    return-void
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public setCapturingProgress(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public showCaptureProgressText()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 354
    return-void
.end method
