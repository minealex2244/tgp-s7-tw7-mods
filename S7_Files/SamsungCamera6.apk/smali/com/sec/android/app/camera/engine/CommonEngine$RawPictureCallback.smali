.class final Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/samsung/android/camera/core/SemCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawPictureCallback"
.end annotation


# instance fields
.field private isJpegCallbackCompleted:Z

.field private isRawCallbackCompleted:Z

.field private mJpegData:[B

.field private mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

.field private mRawFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 10177
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10178
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isRawCallbackCompleted:Z

    .line 10179
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isJpegCallbackCompleted:Z

    .line 10181
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mRawFilePath:Ljava/lang/String;

    .line 10183
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    .line 10184
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CommonEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/engine/CommonEngine;
    .param p2, "x1"    # Lcom/sec/android/app/camera/engine/CommonEngine$1;

    .prologue
    .line 10177
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    return-void
.end method

.method private getRawPictureSize(I)[I
    .locals 14
    .param p1, "jpegResolution"    # I

    .prologue
    .line 10301
    const/4 v8, 0x2

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 10302
    .local v2, "rawPictureSize":[I
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getAspectRatio(I)D

    move-result-wide v0

    .line 10303
    .local v0, "currentRatio":D
    iget-object v8, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mParameters:Lcom/samsung/android/camera/core/SemCamera$Parameters;
    invoke-static {v8}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2100(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera$Parameters;

    move-result-object v8

    const-string v9, "dng-picture-size-values"

    invoke-virtual {v8, v9}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10305
    .local v4, "rawPictureSizeValue":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 10306
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 10307
    .local v3, "rawPictureSizeArray":[Ljava/lang/String;
    array-length v9, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v5, v3, v8

    .line 10308
    .local v5, "rawSize":Ljava/lang/String;
    const-string v10, "x"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 10309
    .local v6, "resolution":[Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v2, v10

    .line 10310
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v2, v10

    .line 10314
    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    invoke-static {v10, v11}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v10

    sub-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v10, v10, v12

    if-gez v10, :cond_3

    .line 10320
    .end local v3    # "rawPictureSizeArray":[Ljava/lang/String;
    .end local v5    # "rawSize":Ljava/lang/String;
    .end local v6    # "resolution":[Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    aget v8, v2, v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    aget v8, v2, v8

    if-nez v8, :cond_2

    .line 10321
    :cond_1
    const-string v8, "CommonEngine"

    const-string v9, "RawPictureCallback.getRawPictureSize : rawPictureSize is null. use JPEG picture size"

    invoke-static {v8, v9}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 10324
    const-wide v8, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-static {v0, v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 10325
    sget-object v7, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Ljava/lang/String;

    .line 10331
    .local v7, "resolutionString":Ljava/lang/String;
    :goto_1
    const/4 v8, 0x0

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v9

    aput v9, v2, v8

    .line 10332
    const/4 v8, 0x1

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v9

    aput v9, v2, v8

    .line 10335
    .end local v7    # "resolutionString":Ljava/lang/String;
    :cond_2
    const-string v8, "CommonEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RawPictureCallback.getRawPictureSize : rawPictureSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 10336
    return-object v2

    .line 10307
    .restart local v3    # "rawPictureSizeArray":[Ljava/lang/String;
    .restart local v5    # "rawSize":Ljava/lang/String;
    .restart local v6    # "resolution":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 10326
    .end local v3    # "rawPictureSizeArray":[Ljava/lang/String;
    .end local v5    # "rawSize":Ljava/lang/String;
    .end local v6    # "resolution":[Ljava/lang/String;
    :cond_4
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 10327
    sget-object v7, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    .restart local v7    # "resolutionString":Ljava/lang/String;
    goto :goto_1

    .line 10329
    .end local v7    # "resolutionString":Ljava/lang/String;
    :cond_5
    sget-object v7, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    .restart local v7    # "resolutionString":Ljava/lang/String;
    goto :goto_1

    .line 10301
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private insertToDBForRawImage(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 13
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "dateTaken"    # J
    .param p5, "orientationForPicture"    # I

    .prologue
    .line 10340
    const-string v7, "CommonEngine"

    const-string v8, "insertToDBForRawImage"

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 10342
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 10344
    .local v5, "values":Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->getRawPictureSize(I)[I

    move-result-object v3

    .line 10345
    .local v3, "rawPictureSize":[I
    const/4 v7, 0x0

    aget v6, v3, v7

    .line 10346
    .local v6, "width":I
    const/4 v7, 0x1

    aget v1, v3, v7

    .line 10348
    .local v1, "height":I
    const-string v7, "title"

    iget-object v8, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->removeFileExtension(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6800(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10349
    const-string v7, "_display_name"

    invoke-virtual {v5, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10350
    const-string v7, "datetaken"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10351
    const-string v7, "date_modified"

    const-wide/16 v8, 0x3e8

    div-long v8, p3, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10352
    const-string v7, "mime_type"

    const-string v8, "image/x-adobe-dng"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10353
    const-string v7, "_data"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10354
    const-string v7, "height"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10355
    const-string v7, "width"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10356
    const-string v7, "orientation"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10357
    const-string v7, "langagecode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10358
    const-string v7, "addr"

    iget-object v8, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mAddressValue:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4300(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10360
    const/4 v2, 0x0

    .line 10361
    .local v2, "location":Landroid/location/Location;
    iget-object v7, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v7, :cond_0

    .line 10362
    iget-object v7, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 10364
    :cond_0
    if-eqz v2, :cond_1

    .line 10365
    const-string v7, "latitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 10366
    const-string v7, "longitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 10370
    :cond_1
    const-string v7, "_size"

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10373
    :try_start_0
    const-string v7, "DB Insert"

    invoke-static {v7}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 10374
    const-string v7, "AXLOG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DB Insert**StartU["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]**"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10375
    iget-object v7, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4400(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 10376
    const-string v7, "AXLOG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DB Insert**EndU["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]**"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10377
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10384
    :goto_0
    return-void

    .line 10378
    :catch_0
    move-exception v4

    .line 10379
    .local v4, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v7, "CommonEngine"

    const-string v8, "Not enough space in database"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10380
    iget-object v7, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v8, 0x7f0a01c2

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 10381
    .end local v4    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 10382
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "CommonEngine"

    const-string v8, "ContentResolver insert failed"

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private storeRawImage(Ljava/lang/String;Lcom/sec/android/app/camera/util/ImageStoringInfo;)V
    .locals 7
    .param p1, "rawFilePath"    # Ljava/lang/String;
    .param p2, "jpegInfo"    # Lcom/sec/android/app/camera/util/ImageStoringInfo;

    .prologue
    .line 10387
    const-string v1, "CommonEngine"

    const-string v2, "RawPictureCallback.storeRawImage"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 10389
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/util/ImageStoringInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/util/ImageStoringInfo;->getDirectory()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->regenerateFileNameIfExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6900(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10390
    .local v0, "jpegFileName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v4, ".jpg"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dng"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10392
    .local v3, "newRawFileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sec/android/app/camera/util/ImageStoringInfo;->getDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->renameRawFile(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$7000(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/String;Ljava/lang/String;)V

    .line 10394
    invoke-virtual {p2}, Lcom/sec/android/app/camera/util/ImageStoringInfo;->getDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/util/ImageStoringInfo;->getDateTaken()J

    move-result-wide v4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mOrientationOnTake:I
    invoke-static {v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4200(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/engine/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->insertToDBForRawImage(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 10395
    return-void
.end method


# virtual methods
.method public handleJpegPictureTaken([BLcom/sec/android/app/camera/util/ImageStoringInfo;)V
    .locals 2
    .param p1, "jpegData"    # [B
    .param p2, "jpegInfo"    # Lcom/sec/android/app/camera/util/ImageStoringInfo;

    .prologue
    .line 10193
    const-string v0, "CommonEngine"

    const-string v1, "RawPictureCallback.handleJpegPictureTaken"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 10195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isJpegCallbackCompleted:Z

    .line 10197
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isRawCallbackCompleted:Z

    if-eqz v0, :cond_1

    .line 10198
    const-string v0, "CommonEngine"

    const-string v1, "Both JPEG and RAW callback state are completed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 10199
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mRawFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 10200
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mRawFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->storeRawImage(Ljava/lang/String;Lcom/sec/android/app/camera/util/ImageStoringInfo;)V

    .line 10206
    :cond_0
    :goto_0
    return-void

    .line 10203
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    .line 10204
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    goto :goto_0
.end method

.method public initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 10212
    const-string v1, "CommonEngine"

    const-string v2, "RawPictureCallback.initialize"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 10214
    iput-boolean v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isRawCallbackCompleted:Z

    .line 10215
    iput-boolean v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isJpegCallbackCompleted:Z

    .line 10217
    iput-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mRawFilePath:Ljava/lang/String;

    .line 10219
    iput-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    .line 10220
    iput-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    .line 10222
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDevice:Lcom/samsung/android/camera/core/SemCamera;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$800(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core/SemCamera;->addRawImageCallbackBuffer([B)V

    .line 10224
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->getRawFilePath()Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6300(Lcom/sec/android/app/camera/engine/CommonEngine;)Ljava/lang/String;

    move-result-object v0

    .line 10225
    .local v0, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 10226
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mParameters:Lcom/samsung/android/camera/core/SemCamera$Parameters;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$2100(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/samsung/android/camera/core/SemCamera$Parameters;

    move-result-object v1

    const-string v2, "capture-raw-filepath"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 10228
    :cond_0
    return-void
.end method

.method public isRawPictureCallbackCompleted()Z
    .locals 1

    .prologue
    .line 10236
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isRawCallbackCompleted:Z

    return v0
.end method

.method public onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    .locals 7
    .param p1, "rawData"    # [B
    .param p2, "camera"    # Lcom/samsung/android/camera/core/SemCamera;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x3

    .line 10241
    const-string v1, "CommonEngine"

    const-string v2, "RawPictureCallback.onPictureTaken"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 10243
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/engine/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/AbstractCeState;->getId()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 10298
    :cond_0
    :goto_0
    return-void

    .line 10249
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIsRawPictureFormatEnabled:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6400(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10250
    const-string v1, "CommonEngine"

    const-string v2, "Returned because RawPictureFormat is not enabled"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10254
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isRawCallbackCompleted:Z

    .line 10256
    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->isJpegCallbackCompleted:Z

    if-eqz v1, :cond_7

    .line 10257
    const-string v1, "CommonEngine"

    const-string v2, "Both JPEG and RAW callback state are completed"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 10259
    if-eqz p1, :cond_3

    .line 10260
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 10261
    .local v0, "srcFilePath":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    if-eqz v1, :cond_3

    .line 10262
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->convertVirtualFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->storeRawImage(Ljava/lang/String;Lcom/sec/android/app/camera/util/ImageStoringInfo;)V

    .line 10266
    .end local v0    # "srcFilePath":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    if-eqz v1, :cond_4

    .line 10267
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->savePicture([BLcom/sec/android/app/camera/util/ImageStoringInfo;)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6500(Lcom/sec/android/app/camera/engine/CommonEngine;[BLcom/sec/android/app/camera/util/ImageStoringInfo;)V

    .line 10268
    iput-object v6, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegData:[B

    .line 10269
    iput-object v6, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mJpegInfo:Lcom/sec/android/app/camera/util/ImageStoringInfo;

    .line 10272
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/CeRequestQueue;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/engine/CeRequestQueue;->isFirstRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10273
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/engine/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/engine/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 10274
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 10275
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mSingleCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$4500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;->onSingleCaptureCompleted()V

    .line 10278
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIntervalCaptureCount:I
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6600(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 10279
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # operator++ for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIntervalCaptureCount:I
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6608(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    .line 10280
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIntervalCaptureCount:I
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6600(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v1

    if-le v1, v4, :cond_6

    .line 10281
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/camera/engine/CommonEngine;->mIntervalCaptureCount:I
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6602(Lcom/sec/android/app/camera/engine/CommonEngine;I)I

    goto/16 :goto_0

    .line 10283
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/engine/CommonEngine;->startIntervalCapture()V
    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6700(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    goto/16 :goto_0

    .line 10289
    :cond_7
    const-string v1, "CommonEngine"

    const-string v2, "RawPictureCallback.onPictureTaken - JPEG callback state is not completed"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 10291
    if-eqz p1, :cond_0

    .line 10292
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 10293
    .restart local v0    # "srcFilePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 10294
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->convertVirtualFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$RawPictureCallback;->mRawFilePath:Ljava/lang/String;

    goto/16 :goto_0
.end method
