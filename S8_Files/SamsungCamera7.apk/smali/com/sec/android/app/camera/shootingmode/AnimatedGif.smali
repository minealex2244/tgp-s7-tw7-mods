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
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

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

.field private mStoringDirOriginPath:Ljava/lang/String;

.field private mStoringDirVirtualPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 74
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 75
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 76
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 77
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    .line 81
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLastCaptureCount:I

    .line 82
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    .line 84
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirVirtualPath:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirOriginPath:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 89
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 90
    return-void
.end method

.method private calculateOrientationForPicture(I)I
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 318
    move v0, p1

    .line 319
    .local v0, "rotation":I
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    .line 328
    :cond_1
    :goto_0
    return v0

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 324
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method private makeAnimatedGif()V
    .locals 34

    .prologue
    .line 332
    const-string v30, "AnimatedGif"

    const-string v31, "makeAnimatedGif E"

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v30, v0

    if-nez v30, :cond_0

    .line 512
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 338
    .local v8, "dateTaken":J
    invoke-static {v8, v9}, Lcom/sec/android/app/camera/util/ImageUtils;->createName(J)Ljava/lang/String;

    move-result-object v22

    .line 341
    .local v22, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v30

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v10

    .line 343
    .local v10, "directory":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ".gif"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 344
    .local v13, "fileName":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 346
    .local v14, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v30

    const-string v31, "com.sec.agif_maker"

    invoke-static/range {v30 .. v31}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_c

    .line 347
    new-instance v4, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;

    invoke-direct {v4}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;-><init>()V

    .line 350
    .local v4, "agif":Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentOrientation:I

    move/from16 v23, v0

    .line 351
    .local v23, "orientation":I
    const-string v30, "QURAM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "orientation = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    rem-int/lit8 v30, v23, 0x2

    if-eqz v30, :cond_3

    .line 353
    const/16 v29, 0x1e0

    .line 354
    .local v29, "width":I
    const/16 v18, 0x280

    .line 360
    .local v18, "height":I
    :goto_1
    const/16 v30, 0x3

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setMaxTaskTP(I)V

    .line 361
    const/16 v30, 0xc8

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setDelay(I)V

    .line 362
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setDispose(I)V

    .line 365
    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setPosition(II)V

    .line 366
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setRepeat(I)V

    .line 367
    move/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setGlobalSize(II)V

    .line 368
    move/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setSize(II)V

    .line 369
    const/16 v30, -0x1

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setTransparent(I)V

    .line 370
    const/16 v30, 0x2

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setWriteFunc(I)V

    .line 371
    invoke-virtual {v4, v14}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->start(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_1

    .line 372
    const-string v30, "QURAM"

    const-string v31, "start error"

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1
    const/16 v19, 0x0

    .local v19, "index":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v19

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    mul-int/lit8 v31, v23, 0x5a

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->calculateOrientationForPicture(I)I

    move-result v31

    move-object/from16 v0, v30

    move/from16 v1, v29

    move/from16 v2, v18

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->loadBitmapToDesiredDimension(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 379
    .local v25, "tempBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->addFrameTP(Landroid/graphics/Bitmap;)Z

    move-result v30

    if-nez v30, :cond_2

    .line 380
    const-string v30, "QURAM"

    const-string v31, "addFrame error"

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 356
    .end local v18    # "height":I
    .end local v19    # "index":I
    .end local v25    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v29    # "width":I
    :cond_3
    const/16 v29, 0x280

    .line 357
    .restart local v29    # "width":I
    const/16 v18, 0x1e0

    .restart local v18    # "height":I
    goto/16 :goto_1

    .line 384
    .restart local v19    # "index":I
    :cond_4
    invoke-virtual {v4}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->finish()Z

    move-result v30

    if-nez v30, :cond_5

    .line 385
    const-string v30, "QURAM"

    const-string v31, "finish error"

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_5
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->removeTempGifBurstPics(Z)Z

    .line 390
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .local v5, "agifFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 392
    .local v16, "fileSize":J
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_6

    .line 393
    const-string v30, "AnimatedGif"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " is not exists.."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 398
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v8, v9, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->insertUTCToSEF(JLjava/io/File;)V

    .line 400
    const-string v21, "Animated_Gif_Info"

    .line 402
    .local v21, "keyName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v30

    const/16 v31, 0x960

    const/16 v32, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-static {v5, v0, v1, v2, v3}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_3
    const/4 v15, 0x0

    .line 409
    .local v15, "fileUri":Landroid/net/Uri;
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 410
    .local v28, "values":Landroid/content/ContentValues;
    const-string v30, "title"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v30, "_display_name"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v30, "datetaken"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 417
    const-string v30, "mime_type"

    const-string v31, "image/gif"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v30, "orientation"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    const-string v30, "_data"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v30, "height"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const-string v30, "width"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v30, "_size"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 424
    const-string v30, "langagecode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v30, "addr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getAddressValue()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v30, "date_modified"

    const-wide/16 v32, 0x3e8

    div-long v32, v8, v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 430
    :try_start_1
    const-string v30, "AnimatedGif"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "db insert E"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    sget-object v31, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 432
    const-string v30, "AnimatedGif"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "db insert X"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    if-eqz v15, :cond_9

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getAddressValue()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_7

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getImageIDListHaveAddress()Ljava/util/ArrayList;

    move-result-object v30

    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v30

    if-eqz v30, :cond_8

    .line 440
    const-string v30, "GATE"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<GATE-M>PICTURE_TAKEN : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " </GATE-M>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentUri(Landroid/net/Uri;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentFilePath(Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->setContentVideoType(Z)V

    .line 447
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v7, "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v30

    if-eqz v30, :cond_b

    .line 449
    const-string v30, "Z002"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Landroid/content/ContentValues;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->broadcastMultipleGeneralEventForLogging(Landroid/content/Context;[Landroid/content/ContentValues;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    .line 460
    .end local v7    # "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v30

    new-instance v31, Landroid/content/Intent;

    const-string v32, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v33

    invoke-direct/range {v31 .. v33}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/Engine;->getCurrentThumbnailSize()Landroid/util/Size;

    move-result-object v27

    .line 463
    .local v27, "thumbnailSize":Landroid/util/Size;
    invoke-virtual/range {v27 .. v27}, Landroid/util/Size;->getWidth()I

    move-result v30

    invoke-virtual/range {v27 .. v27}, Landroid/util/Size;->getHeight()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v14, v0, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 464
    .local v26, "thumbnailBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v30

    if-eqz v30, :cond_a

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addUriListInSecureCamera(Landroid/net/Uri;)V

    .line 470
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateLatestMedia()V

    .line 511
    .end local v4    # "agif":Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;
    .end local v5    # "agifFile":Ljava/io/File;
    .end local v15    # "fileUri":Landroid/net/Uri;
    .end local v16    # "fileSize":J
    .end local v18    # "height":I
    .end local v21    # "keyName":Ljava/lang/String;
    .end local v23    # "orientation":I
    .end local v26    # "thumbnailBitmap":Landroid/graphics/Bitmap;
    .end local v27    # "thumbnailSize":Landroid/util/Size;
    .end local v28    # "values":Landroid/content/ContentValues;
    .end local v29    # "width":I
    :goto_6
    const-string v30, "AnimatedGif"

    const-string v31, "makeAnimatedGif X"

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 404
    .restart local v4    # "agif":Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;
    .restart local v5    # "agifFile":Ljava/io/File;
    .restart local v16    # "fileSize":J
    .restart local v18    # "height":I
    .restart local v21    # "keyName":Ljava/lang/String;
    .restart local v23    # "orientation":I
    .restart local v29    # "width":I
    :catch_0
    move-exception v11

    .line 405
    .local v11, "e":Ljava/io/IOException;
    const-string v30, "AnimatedGif"

    const-string v31, "error while addSEFData in AnimatedGif"

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 451
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v7    # "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v15    # "fileUri":Landroid/net/Uri;
    .restart local v28    # "values":Landroid/content/ContentValues;
    :cond_b
    :try_start_2
    const-string v30, "Z001"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 455
    .end local v7    # "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_1
    move-exception v24

    .line 456
    .local v24, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v30, "AnimatedGif"

    const-string v31, "Not enough space in database"

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v30, v0

    const v31, 0x7f0901c8

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 472
    .end local v4    # "agif":Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;
    .end local v5    # "agifFile":Ljava/io/File;
    .end local v15    # "fileUri":Landroid/net/Uri;
    .end local v16    # "fileSize":J
    .end local v18    # "height":I
    .end local v19    # "index":I
    .end local v21    # "keyName":Ljava/lang/String;
    .end local v23    # "orientation":I
    .end local v24    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    .end local v28    # "values":Landroid/content/ContentValues;
    .end local v29    # "width":I
    :cond_c
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 473
    .local v20, "intent":Landroid/content/Intent;
    const-string v30, "com.sec.agif_maker"

    const-string v31, "com.sec.agif_maker.GifMakerActivity"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v30, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    new-array v6, v0, [Ljava/lang/String;

    .line 478
    .local v6, "capturedFilePath":[Ljava/lang/String;
    const/16 v19, 0x0

    .restart local v19    # "index":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v19

    move/from16 v1, v30

    if-ge v0, v1, :cond_e

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v6, v19

    .line 481
    aget-object v30, v6, v19

    if-nez v30, :cond_d

    .line 482
    const-string v30, "AnimatedGif"

    const-string v31, "[AGIF] showAnimatedGifMode return error! : file Path is null!! "

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 478
    :cond_d
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 488
    :cond_e
    const-string v30, "FilePaths"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v30, "ResultFilePath"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v30

    if-eqz v30, :cond_11

    .line 494
    const-string v30, "Orientation"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentOrientation:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x5a

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Lcom/sec/android/app/camera/util/Util;->calculateOrientation(IZ)I

    move-result v31

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isFromLockScreen()Z

    move-result v30

    if-nez v30, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 500
    :cond_f
    const-string v30, "createdByLockscreen"

    const/16 v31, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 504
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const/16 v31, 0x7e8

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const v31, 0x7f050002

    const v32, 0x7f050003

    invoke-virtual/range {v30 .. v32}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    .line 506
    :catch_2
    move-exception v12

    .line 507
    .local v12, "ex":Landroid/content/ActivityNotFoundException;
    const-string v30, "AnimatedGif"

    const-string v31, "Activity is not found"

    invoke-static/range {v30 .. v31}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 496
    .end local v12    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_11
    const-string v30, "Orientation"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentOrientation:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x5a

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_8
.end method

.method private removeTempGifBurstPics(Z)Z
    .locals 8
    .param p1, "removeDir"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 515
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirVirtualPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    .local v2, "storingDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 540
    :cond_0
    :goto_0
    return v3

    .line 520
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 522
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_3

    .line 523
    array-length v6, v1

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v0, v1, v5

    .line 524
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 525
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_2

    .line 526
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

    .line 527
    goto :goto_0

    .line 523
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 533
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    if-eqz p1, :cond_0

    .line 534
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 535
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

    .line 536
    goto :goto_0
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 3
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v2, 0x0

    .line 109
    const-string v0, "AnimatedGif"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v1, v2, [I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    .line 118
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

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

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirVirtualPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->makeDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
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

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirVirtualPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->convertOriginFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirOriginPath:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public onBurstCaptureCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    const-string v0, "AnimatedGif"

    const-string v1, "onBurstCaptureCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->terminateBurstCapture()V

    .line 137
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    .line 139
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLastCaptureCount:I

    .line 140
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideCaptureProgressText()V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x27e

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 153
    return-void
.end method

.method public onBurstCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 157
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

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    .line 159
    if-nez p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showCaptureProgressText()V

    .line 162
    :cond_0
    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 2

    .prologue
    .line 166
    const-string v0, "AnimatedGif"

    const-string v1, "onBurstCaptureStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->ANIMATED_GIF_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x27e

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    .line 175
    return-void
.end method

.method public onBurstCaptureStopped(I)Z
    .locals 2
    .param p1, "lastImageNum"    # I

    .prologue
    .line 179
    const-string v0, "AnimatedGif"

    const-string v1, "onBurstCaptureStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLastCaptureCount:I

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    .line 186
    return-void
.end method

.method public onBurstStringProgress([B)Z
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 190
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    .line 191
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

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCapturedFileList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->convertVirtualFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->requestBurstCaptureString()V

    .line 197
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentStringProgressCount:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mLastCaptureCount:I

    if-ne v0, v1, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->makeAnimatedGif()V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->burstCaptureCompleted()V

    .line 201
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 206
    const-string v0, "picture-size"

    const-string v1, "640x480"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 211
    const-string v0, "AnimatedGif"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 213
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    const-string v0, "AnimatedGif"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 225
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelBurstCapture()V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    .line 229
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->removeTempGifBurstPics(Z)Z

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureStoringFilePath(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 232
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 236
    const-string v0, "AnimatedGif"

    const-string v1, "onKeyDown"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 242
    const-string v0, "AnimatedGif"

    const-string v1, "onKeyUp"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    packed-switch p1, :pswitch_data_0

    .line 251
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 245
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x1

    goto :goto_0

    .line 243
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
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 2

    .prologue
    .line 282
    const-string v0, "AnimatedGif"

    const-string v1, "onShutterKeyPressed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mStoringDirOriginPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureStoringFilePath(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->disableChangeBurstShootingMode()V

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterPressed()V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "3421"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 294
    :goto_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCurrentOrientation:I

    .line 295
    const/4 v0, 0x1

    .line 297
    :goto_1
    return v0

    .line 292
    :cond_0
    const-string v0, "3401"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 2
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    .line 302
    const-string v0, "AnimatedGif"

    const-string v1, "onShutterKeyReleased"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    .line 306
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 311
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 315
    return-void
.end method
