.class public Lcom/quramsoft/qrb/QuramBitmapFactory;
.super Ljava/lang/Object;
.source "QuramBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/qrb/QuramBitmapFactory$MidPointerData;,
        Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEC_CANCELED:I = 0x6

.field public static final DEC_FAIL:I = 0x0

.field public static final DEC_PROGRESS:I = 0x4

.field public static final DEC_SUCCESS:I = 0x1

.field public static final LENGTH_OF_MID_POINTER:I = 0x44

.field public static final Quram_JPEG:Ljava/lang/String; = "Quram_JPEG"

.field private static final TAG:Ljava/lang/String; = "QuramBitmapFactory"

.field protected static final USE_AUTO_BUFFERMODE:I = 0x2

.field protected static final USE_AUTO_FILEMODE:I = 0x0

.field public static final USE_FULLSIZE_BUFFER:I = 0x0

.field public static final USE_ITERSIZE_BUFFER:I = 0x1

.field public static final USE_MAKE_REGIONMAP:I = 0x2

.field protected static final USE_POWER_PROCESS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    :try_start_0
    const-string v0, "Qjpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native AbortJPEGFromFileIter(J)I
.end method

.method public static native CompareJPEG(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;IIJJJI)D
.end method

.method public static native DecodeCancel(J)V
.end method

.method static native DecodeJPEGFromFileIter(JLandroid/graphics/Bitmap;IIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTN(JLandroid/graphics/Bitmap;IIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTNToBuffer(JLjava/nio/Buffer;IIIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTNToBufferMidpoint(JLjava/nio/Buffer;IIIIII)I
.end method

.method static native DecodeJPEGFromFileIter4LTNToNativeBufferArray(JIII[JIII)I
.end method

.method static native DecodeJPEGFromFileIterToBuffer(JLjava/nio/Buffer;IIIII)I
.end method

.method static native DecodeJPEGFromFileMultiOutBuf(J[Landroid/graphics/Bitmap;IIII)I
.end method

.method public static native DecodeJPEGGetMidpoint(JLandroid/graphics/Bitmap;[BIIII)I
.end method

.method public static native DecodeJPEGThumbnail(JLandroid/graphics/Bitmap;III)I
.end method

.method static native DecodeJPEGThumbnailToNativeBuffer(J[JII)I
.end method

.method public static native DecodeJpegFromStream(Ljava/io/InputStream;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;[BILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method static native DecodePNGIterToNativeBufferArray(JJJIII[JII)I
.end method

.method static native GetJPEGMidPoint(JII)I
.end method

.method public static native GetJpegOffsetFromSRWFile(Ljava/lang/String;[I)I
.end method

.method public static native GetMidpoint([B)I
.end method

.method public static native PDecodeJPEGFromFile(JLandroid/graphics/Bitmap;III)I
.end method

.method static native PrepareJPEGFromFileIter(JII)I
.end method

.method static native PrepareJPEGFromFileIterMidpoint(J[BIII)I
.end method

.method public static native RegionMapCancel(J)V
.end method

.method public static abortFileIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 4
    .param p0, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    const-wide/16 v2, 0x0

    .line 1061
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->AbortJPEGFromFileIter(J)I

    .line 1063
    invoke-virtual {p0, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 1065
    :cond_0
    return-void
.end method

.method public static abortIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 4
    .param p0, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    const-wide/16 v2, 0x0

    .line 1053
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->AbortJPEGFromFileIter(J)I

    .line 1055
    invoke-virtual {p0, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 1057
    :cond_0
    return-void
.end method

.method public static native asyncTest(I)V
.end method

.method public static cancelDecode(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 4
    .param p0, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 1183
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    if-eqz v0, :cond_1

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    .line 1186
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeCancel(J)V

    goto :goto_0
.end method

.method public static cancelRegionMap(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 4
    .param p0, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    if-eqz v0, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    .line 1196
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->RegionMapCancel(J)V

    goto :goto_0
.end method

.method public static compressToByte(Landroid/graphics/Bitmap;Ljava/lang/String;[BII)I
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "compressFormat"    # Ljava/lang/String;
    .param p2, "out"    # [B
    .param p3, "out_bufsize"    # I
    .param p4, "quality"    # I

    .prologue
    .line 1128
    const/4 v0, 0x0

    .line 1129
    .local v0, "ret":I
    const-string v1, "Quram_JPEG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1131
    const/4 v1, 0x0

    .line 1136
    :goto_0
    return v1

    .line 1134
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p2, p3, p4, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeEncodeByteArray(Landroid/graphics/Bitmap;[BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v0

    move v1, v0

    .line 1136
    goto :goto_0
.end method

.method public static compressToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "compressFormat"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 1149
    const/4 v6, 0x0

    .line 1151
    .local v6, "ret":I
    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    const/4 v0, 0x0

    .line 1159
    :goto_0
    return v0

    .line 1157
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeEncodeFile(Landroid/graphics/Bitmap;Ljava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v6

    move v0, v6

    .line 1159
    goto :goto_0
.end method

.method public static compressToFile([BLjava/lang/String;Ljava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "compressFormat"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "quality"    # I
    .param p6, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 1164
    const/4 v6, 0x0

    .line 1166
    .local v6, "ret":I
    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1168
    const/4 v0, 0x0

    .line 1174
    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 1172
    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeEncodeFileFromByte([BLjava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v6

    move v0, v6

    .line 1174
    goto :goto_0
.end method

.method public static createDecInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    const/4 v0, 0x0

    .line 674
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 683
    :cond_0
    :goto_0
    return v0

    .line 677
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v0

    .line 679
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 680
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    goto :goto_0
.end method

.method public static createDecInfo([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 688
    if-eqz p0, :cond_0

    if-nez p3, :cond_2

    .line 689
    :cond_0
    const/4 v0, 0x0

    .line 697
    :cond_1
    :goto_0
    return v0

    .line 691
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecBufferInfo([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v0

    .line 693
    .local v0, "ret":I
    if-nez v0, :cond_1

    .line 694
    const-wide/16 v2, 0x0

    invoke-virtual {p3, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    goto :goto_0
.end method

.method public static decodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    const/4 v1, 0x0

    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-gez p1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-object v1

    .line 264
    :cond_1
    if-lez p2, :cond_0

    .line 269
    array-length v2, p0

    add-int v3, p2, p1

    if-lt v2, v3, :cond_0

    .line 274
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 279
    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 280
    goto :goto_0
.end method

.method public static decodeFile(Landroid/content/Context;Landroid/net/Uri;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 1379
    const/4 v4, 0x0

    .line 1380
    .local v4, "imageFd":Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    .line 1381
    .local v5, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1384
    .local v3, "fos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "r"

    invoke-virtual {v10, p1, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1388
    :goto_0
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move-object v5, v6

    .line 1394
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_1
    if-nez v5, :cond_0

    .line 1395
    const-string v10, "QuramBitmapFactory"

    const-string v11, "inputstream is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :goto_2
    const/4 v10, 0x0

    :goto_3
    return-object v10

    .line 1385
    :catch_0
    move-exception v2

    .line 1386
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1390
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    .line 1391
    .local v9, "var9":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1398
    .end local v9    # "var9":Ljava/lang/Exception;
    :cond_0
    const/high16 v10, 0x10000

    new-array v0, v10, [B

    .line 1399
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 1402
    .local v1, "buffer":[B
    :goto_4
    :try_start_3
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    const/4 v10, -0x1

    if-ne v7, v10, :cond_1

    .line 1405
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1406
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1407
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1408
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1416
    .end local v7    # "len":I
    :goto_5
    if-nez v1, :cond_2

    .line 1417
    const-string v10, "QuramBitmapFactory"

    const-string v11, "buffer is Null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1403
    .restart local v7    # "len":I
    :cond_1
    const/4 v10, 0x0

    :try_start_4
    invoke-virtual {v3, v0, v10, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 1409
    .end local v7    # "len":I
    :catch_2
    move-exception v8

    .line 1410
    .local v8, "var7":Ljava/io/IOException;
    const-string v10, "QuramBitmapFactory"

    const-string v11, "IOException happens"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const/4 v1, 0x0

    .line 1412
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1419
    .end local v8    # "var7":Ljava/io/IOException;
    :cond_2
    const-string v10, "QuramBitmapFactory"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "buffer size is "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const/4 v10, 0x0

    array-length v11, v1

    invoke-static {v1, v10, v11, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_3
.end method

.method public static decodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 492
    const/4 v0, 0x0

    .line 494
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-object v3

    .line 501
    :cond_1
    iget v4, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-le v4, v6, :cond_3

    .line 503
    iget v2, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 505
    .local v2, "sampleSize":I
    iput v6, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 507
    invoke-static {p0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 509
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 511
    # getter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I
    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$0(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v4

    if-lt v4, v2, :cond_0

    # getter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I
    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$1(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v4

    if-lt v4, v2, :cond_0

    .line 514
    # getter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I
    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$0(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v3

    int-to-double v4, v3

    int-to-double v6, v2

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v3, v4

    # getter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I
    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$1(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v4

    int-to-double v4, v4

    int-to-double v6, v2

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 516
    iput v2, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 524
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "sampleSize":I
    :cond_2
    :goto_1
    invoke-virtual {p1, v10, v11}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    move-object v3, v0

    .line 525
    goto :goto_0

    .line 521
    :cond_3
    invoke-static {p0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static decodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "origId"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 235
    const/4 v1, 0x0

    .line 244
    :goto_0
    return-object v1

    .line 238
    :cond_0
    invoke-virtual {p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    .line 239
    invoke-virtual {p1, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    .line 241
    invoke-static {p0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    invoke-virtual {p1, v4, v5}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    move-object v1, v0

    .line 244
    goto :goto_0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 1373
    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;-><init>()V

    .line 1374
    .local v0, "option":Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "outpadding"    # Landroid/graphics/Rect;
    .param p2, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    .line 1430
    const/4 v0, 0x0

    .line 1431
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 1433
    .local v1, "bytearray":[B
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1435
    .local v4, "fis":Ljava/io/FileInputStream;
    invoke-virtual {p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 1437
    const-string v7, "QuramBitmapFactory"

    const-string v8, "option Fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :goto_0
    return-object v6

    .line 1441
    :cond_0
    const/4 v5, 0x0

    .line 1444
    .local v5, "len":I
    :try_start_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 1445
    new-array v1, v5, [B

    .line 1446
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1452
    :goto_1
    const/4 v7, 0x0

    invoke-static {v1, v7, v5, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1469
    invoke-virtual {p2, v10, v11}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 1471
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1479
    const/4 v1, 0x0

    move-object v6, v0

    .line 1480
    goto :goto_0

    .line 1447
    :catch_0
    move-exception v3

    .line 1449
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1473
    .end local v3    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1475
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "QuramBitmapFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static decodeFileFromThumbnail(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "origId"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x0

    .line 84
    :goto_0
    return-object v1

    .line 78
    :cond_0
    invoke-virtual {p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    .line 79
    invoke-virtual {p1, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    .line 81
    invoke-static {p0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    invoke-virtual {p1, v4, v5}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    move-object v1, v0

    .line 84
    goto :goto_0
.end method

.method public static decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Landroid/graphics/Bitmap;IIII)I
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "retBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "sampledWidth"    # I
    .param p4, "sampledHeight"    # I
    .param p5, "iterType"    # I
    .param p6, "decodeStep"    # I

    .prologue
    .line 822
    const/4 v7, 0x0

    .line 824
    .local v7, "ret":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 825
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 826
    :cond_0
    const/4 v0, 0x0

    .line 864
    :goto_0
    return v0

    .line 829
    :cond_1
    packed-switch p5, :pswitch_data_0

    .line 849
    :goto_1
    :pswitch_0
    if-nez v7, :cond_3

    .line 850
    if-eqz p2, :cond_2

    .line 851
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 852
    const/4 p2, 0x0

    .line 855
    :cond_2
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 858
    const/4 v0, 0x0

    goto :goto_0

    .line 832
    :pswitch_1
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    .line 834
    const/4 v5, 0x0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 831
    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter(JLandroid/graphics/Bitmap;IIII)I

    move-result v7

    .line 835
    goto :goto_1

    .line 842
    :pswitch_2
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 841
    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTN(JLandroid/graphics/Bitmap;IIII)I

    move-result v7

    goto :goto_1

    .line 860
    :cond_3
    const/4 v0, 0x1

    if-ne v7, v0, :cond_5

    .line 861
    if-eqz p5, :cond_4

    const/4 v0, 0x1

    if-ne p5, v0, :cond_5

    .line 862
    :cond_4
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    :cond_5
    move v0, v7

    .line 864
    goto :goto_0

    .line 829
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIII)I
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "buffer"    # Ljava/nio/Buffer;
    .param p3, "bufferHeight"    # I
    .param p4, "sampledWidth"    # I
    .param p5, "sampledHeight"    # I
    .param p6, "iterType"    # I
    .param p7, "decodeStep"    # I

    .prologue
    .line 877
    const/4 v8, 0x0

    .line 879
    .local v8, "ret":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 880
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 881
    :cond_0
    const/4 v0, 0x0

    .line 921
    :goto_0
    return v0

    .line 884
    :cond_1
    packed-switch p6, :pswitch_data_0

    .line 906
    :goto_1
    :pswitch_0
    if-nez v8, :cond_4

    .line 907
    if-eqz p2, :cond_2

    .line 909
    const/4 p2, 0x0

    .line 912
    :cond_2
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 915
    const/4 v0, 0x0

    goto :goto_0

    .line 887
    :pswitch_1
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    .line 889
    const/4 v6, 0x0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v7, p7

    .line 886
    invoke-static/range {v0 .. v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIterToBuffer(JLjava/nio/Buffer;IIIII)I

    move-result v8

    .line 890
    goto :goto_1

    .line 894
    :pswitch_2
    add-int/lit8 v0, p7, 0x2

    if-ne v0, p3, :cond_3

    .line 897
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 896
    invoke-static/range {v0 .. v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToBuffer(JLjava/nio/Buffer;IIIII)I

    move-result v8

    .line 900
    goto :goto_1

    .line 901
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 917
    :cond_4
    const/4 v0, 0x1

    if-ne v8, v0, :cond_6

    .line 918
    if-eqz p6, :cond_5

    const/4 v0, 0x1

    if-ne p6, v0, :cond_6

    .line 919
    :cond_5
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    :cond_6
    move v0, v8

    .line 921
    goto :goto_0

    .line 884
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileIterToNativeBufferArray(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III[JIII)I
    .locals 10
    .param p0, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p1, "iterType"    # I
    .param p2, "sampledWidth"    # I
    .param p3, "sampledHeight"    # I
    .param p4, "nativeHandleArray"    # [J
    .param p5, "iterWidthStep"    # I
    .param p6, "iterHeightStep"    # I
    .param p7, "midOrder"    # I

    .prologue
    .line 1016
    const/4 v9, 0x0

    .line 1018
    .local v9, "ret":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1019
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1020
    :cond_0
    const/4 v0, 0x0

    .line 1048
    :goto_0
    return v0

    .line 1023
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1038
    :goto_1
    :pswitch_0
    if-nez v9, :cond_2

    .line 1039
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 1042
    const/4 v0, 0x0

    goto :goto_0

    .line 1025
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1030
    :pswitch_2
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 1029
    invoke-static/range {v0 .. v8}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToNativeBufferArray(JIII[JIII)I

    move-result v9

    goto :goto_1

    .line 1044
    :cond_2
    const/4 v0, 0x1

    if-ne v9, v0, :cond_4

    .line 1045
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 1046
    :cond_3
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    :cond_4
    move v0, v9

    .line 1048
    goto :goto_0

    .line 1023
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileIterWithMidPointer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIIIZ)I
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "buffer"    # Ljava/nio/Buffer;
    .param p3, "bufferHeight"    # I
    .param p4, "sampledWidth"    # I
    .param p5, "sampledHeight"    # I
    .param p6, "iterType"    # I
    .param p7, "decodeStep"    # I
    .param p8, "useMidPoint"    # Z

    .prologue
    .line 948
    const/4 v11, 0x0

    .line 950
    .local v11, "ret":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 951
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 952
    :cond_0
    const/4 v2, 0x0

    .line 1003
    :goto_0
    return v2

    .line 955
    :cond_1
    packed-switch p6, :pswitch_data_0

    .line 988
    :goto_1
    :pswitch_0
    if-nez v11, :cond_5

    .line 989
    if-eqz p2, :cond_2

    .line 991
    const/4 p2, 0x0

    .line 994
    :cond_2
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 997
    const/4 v2, 0x0

    goto :goto_0

    .line 958
    :pswitch_1
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    .line 960
    const/4 v8, 0x0

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    .line 957
    invoke-static/range {v2 .. v9}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIterToBuffer(JLjava/nio/Buffer;IIIII)I

    move-result v11

    .line 961
    goto :goto_1

    .line 965
    :pswitch_2
    add-int/lit8 v2, p7, 0x2

    if-ne v2, p3, :cond_4

    .line 967
    if-eqz p8, :cond_3

    .line 969
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    const/4 v5, 0x2

    move-object v4, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 968
    invoke-static/range {v2 .. v10}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToBufferMidpoint(JLjava/nio/Buffer;IIIIII)I

    move-result v11

    .line 972
    goto :goto_1

    .line 978
    :cond_3
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 977
    invoke-static/range {v2 .. v9}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFileIter4LTNToBuffer(JLjava/nio/Buffer;IIIII)I

    move-result v11

    .line 982
    goto :goto_1

    .line 983
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 999
    :cond_5
    const/4 v2, 0x1

    if-ne v11, v2, :cond_7

    .line 1000
    if-eqz p6, :cond_6

    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_7

    .line 1001
    :cond_6
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    :cond_7
    move v2, v11

    .line 1003
    goto :goto_0

    .line 955
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static decodeFileStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "inputstream"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 343
    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileToBuffer(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "origId"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-object v2

    .line 188
    :cond_1
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 189
    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 200
    :goto_1
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 202
    invoke-virtual {p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    .line 203
    invoke-virtual {p1, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    .line 205
    invoke-static {p0, v0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeFileToBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v1

    .line 207
    .local v1, "ret":I
    invoke-virtual {p1, v6, v7}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 209
    if-eqz v1, :cond_0

    move-object v2, v0

    .line 214
    goto :goto_0

    .line 190
    .end local v1    # "ret":I
    :cond_2
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    if-nez v3, :cond_3

    .line 191
    mul-int v3, p2, p3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    .line 192
    :cond_3
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 193
    mul-int v3, p2, p3

    add-int/lit8 v4, p2, 0x1

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, p3, 0x1

    shr-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    .line 196
    :cond_4
    invoke-virtual {p1, v6, v7}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    goto :goto_0
.end method

.method public static decodeFileToThumbnail(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;IIIZI)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "origId"    # I
    .param p5, "makeMidPoint"    # Z
    .param p6, "countOfMidPoint"    # I

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, "retBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    .line 102
    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v10

    .line 103
    .local v10, "ret":I
    if-nez v10, :cond_1

    .line 105
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 106
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :cond_1
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 110
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 114
    :goto_1
    if-nez v2, :cond_3

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 116
    :cond_3
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v0, :cond_4

    .line 117
    const/4 v0, 0x1

    iput v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 119
    :cond_4
    if-eqz p5, :cond_7

    .line 120
    mul-int/lit8 v0, p6, 0x44

    add-int/lit8 v0, v0, 0x4

    new-array v3, v0, [B

    .line 121
    .local v3, "midInfo":[B
    if-eqz v3, :cond_5

    .line 122
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const/4 v7, 0x1

    move/from16 v4, p6

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGGetMidpoint(JLandroid/graphics/Bitmap;[BIIII)I

    move-result v10

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setMidpoint([BI)V

    .line 129
    .end local v3    # "midInfo":[B
    :cond_5
    :goto_2
    if-nez v10, :cond_8

    .line 131
    if-eqz v2, :cond_6

    .line 133
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    const/4 v2, 0x0

    .line 137
    :cond_6
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 140
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_7
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v4

    const/4 v9, 0x1

    move-object v6, v2

    move v7, p2

    move v8, p3

    invoke-static/range {v4 .. v9}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGThumbnail(JLandroid/graphics/Bitmap;III)I

    move-result v10

    goto :goto_2

    .line 143
    :cond_8
    const/4 v0, 0x6

    if-ne v10, v0, :cond_9

    .line 147
    if-eqz v2, :cond_9

    .line 149
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    const/4 v2, 0x0

    .line 157
    :cond_9
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    move-object v0, v2

    .line 158
    goto :goto_0
.end method

.method public static decodeImageToBuffer(Ljava/lang/String;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;Lcom/quramsoft/qrb/ImageBufferData;)I
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p4, "output"    # Lcom/quramsoft/qrb/ImageBufferData;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 439
    const/4 v1, 0x1

    .line 441
    .local v1, "ret":I
    if-nez p0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return v2

    .line 446
    :cond_1
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 451
    if-eqz p4, :cond_0

    .line 456
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    .line 461
    const/4 v3, 0x2

    invoke-static {p0, p3, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v1

    .line 462
    if-eqz v1, :cond_3

    .line 463
    new-array v0, v6, [J

    .line 464
    .local v0, "nativeHandle":[J
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v4

    invoke-static {v4, v5, v0, p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGThumbnailToNativeBuffer(J[JII)I

    move-result v1

    .line 466
    if-ne v1, v6, :cond_2

    .line 467
    sget-object v3, Lcom/quramsoft/qrb/ImageBufferData$Type;->HANDLE:Lcom/quramsoft/qrb/ImageBufferData$Type;

    iput-object v3, p4, Lcom/quramsoft/qrb/ImageBufferData;->type:Lcom/quramsoft/qrb/ImageBufferData$Type;

    .line 468
    iput p1, p4, Lcom/quramsoft/qrb/ImageBufferData;->width:I

    .line 469
    iput p2, p4, Lcom/quramsoft/qrb/ImageBufferData;->height:I

    .line 470
    aget-wide v2, v0, v2

    iput-wide v2, p4, Lcom/quramsoft/qrb/ImageBufferData;->handle:J

    .line 472
    :cond_2
    if-nez v1, :cond_3

    .line 479
    .end local v0    # "nativeHandle":[J
    :cond_3
    invoke-virtual {p3, v8, v9}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    move v2, v1

    .line 480
    goto :goto_0
.end method

.method public static decodeIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Landroid/graphics/Bitmap;IIII)I
    .locals 7
    .param p0, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p1, "retBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "sampledWidth"    # I
    .param p3, "sampledHeight"    # I
    .param p4, "iterType"    # I
    .param p5, "decodeStep"    # I

    .prologue
    .line 792
    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Landroid/graphics/Bitmap;IIII)I

    move-result v0

    return v0
.end method

.method public static decodeIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIII)I
    .locals 8
    .param p0, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p1, "buffer"    # Ljava/nio/Buffer;
    .param p2, "bufferHeight"    # I
    .param p3, "sampledWidth"    # I
    .param p4, "sampledHeight"    # I
    .param p5, "iterType"    # I
    .param p6, "decodeStep"    # I

    .prologue
    .line 804
    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;Ljava/nio/Buffer;IIIII)I

    move-result v0

    return v0
.end method

.method public static decodeStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "inputstream"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    const/4 v5, 0x0

    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 289
    .local v1, "data":[B
    const/4 v4, 0x0

    .line 291
    .local v4, "ret":I
    const/4 v3, 0x0

    .line 293
    .local v3, "len":I
    if-nez p0, :cond_0

    .line 295
    const-string v6, "QuramBitmapFactory"

    const-string v7, "inputstream is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_0
    return-object v5

    .line 301
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 309
    :goto_1
    if-gtz v3, :cond_1

    .line 311
    const-string v6, "QuramBitmapFactory"

    const-string v7, "inpustream open fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :catch_0
    move-exception v2

    .line 305
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 306
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 315
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    new-array v1, v3, [B

    .line 319
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 327
    :goto_2
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 329
    const-string v6, "QuramBitmapFactory"

    const-string v7, "option Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :catch_1
    move-exception v2

    .line 323
    .restart local v2    # "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 324
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 333
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p3, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    .line 334
    invoke-virtual {p3, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    .line 336
    const/4 v5, 0x0

    invoke-static {v1, v5, v3, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v5, v0

    .line 338
    goto :goto_0
.end method

.method public static decodeThumbnailByteArrayToBuffer([BIILcom/quramsoft/qrb/ImageBufferData;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 10
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "output"    # Lcom/quramsoft/qrb/ImageBufferData;
    .param p4, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    const/4 v4, 0x1

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 358
    const/4 v2, 0x0

    .line 359
    .local v2, "width":I
    const/4 v0, 0x0

    .line 361
    .local v0, "height":I
    const/4 v1, 0x0

    .line 363
    .local v1, "ret":I
    if-gez p1, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v3

    .line 368
    :cond_1
    if-lez p2, :cond_0

    .line 373
    array-length v5, p0

    add-int v6, p2, p1

    if-lt v5, v6, :cond_0

    .line 378
    if-eqz p3, :cond_0

    .line 383
    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 388
    invoke-static {p0, p1, p2, p4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeGetImageInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v1

    .line 390
    iget v5, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v5, :cond_2

    .line 391
    iput v4, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 393
    :cond_2
    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v2

    .line 394
    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v0

    .line 396
    if-nez v1, :cond_3

    .line 398
    invoke-virtual {p4, v8, v9}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    goto :goto_0

    .line 402
    :cond_3
    iget v5, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    .line 403
    mul-int v5, v2, v0

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    .line 414
    :goto_1
    iget-object v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 416
    invoke-virtual {p4, v2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    .line 417
    invoke-virtual {p4, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    .line 419
    iget-object v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p0, v5, p1, p2, p4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v1

    .line 421
    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v5

    iput v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->width:I

    .line 422
    invoke-virtual {p4}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v5

    iput v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->height:I

    .line 424
    invoke-virtual {p4, v8, v9}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 426
    iget-object v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_0

    move v3, v4

    .line 429
    goto :goto_0

    .line 404
    :cond_4
    iget v5, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    if-nez v5, :cond_5

    .line 405
    mul-int v5, v2, v0

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 406
    :cond_5
    iget v5, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 407
    mul-int v5, v2, v0

    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p3, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 410
    :cond_6
    invoke-virtual {p4, v8, v9}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    goto/16 :goto_0
.end method

.method public static getExifData(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    .prologue
    .line 702
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 703
    :cond_0
    const/4 v0, 0x0

    .line 711
    :cond_1
    :goto_0
    return v0

    .line 705
    :cond_2
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    invoke-static {p0, v2, v3, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeGetExifData(Ljava/lang/String;JLcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v0

    .line 707
    .local v0, "ret":I
    if-nez v0, :cond_1

    .line 708
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setExif(J)V

    goto :goto_0
.end method

.method public static getJPEGMidPointer(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I
    .locals 6
    .param p0, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p1, "midNum"    # I

    .prologue
    .line 926
    const/4 v0, 0x0

    .line 928
    .local v0, "ret":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 929
    :cond_0
    const/4 v1, 0x0

    .line 934
    :goto_0
    return v1

    .line 932
    :cond_1
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    iget v1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    invoke-static {v2, v3, v1, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->GetJPEGMidPoint(JII)I

    move-result v0

    move v1, v0

    .line 934
    goto :goto_0
.end method

.method public static native nativeCreateDecBufferInfo([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeCreateDecFileInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I
.end method

.method public static native nativeDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native nativeDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native nativeDecodeFileToBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeDecodeJPEG(JLandroid/graphics/Bitmap;III)I
.end method

.method public static native nativeEncodeByteArray(Landroid/graphics/Bitmap;[BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeEncodeFile(Landroid/graphics/Bitmap;Ljava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeEncodeFileFromByte([BLjava/lang/String;IIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeGetExifData(Ljava/lang/String;JLcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeGetImageInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativeGetImageInfoFromFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativePartialDecodeByteArray([BIIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static native nativePartialDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native nativePartialDecodeFile(Ljava/lang/String;IIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public static partialDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I

    .prologue
    .line 537
    const/4 v10, 0x0

    .line 538
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    iget v13, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 539
    .local v13, "sampleSize":I
    const/4 v14, 0x0

    .line 540
    .local v14, "width":I
    const/4 v12, 0x0

    .line 542
    .local v12, "height":I
    if-gez p1, :cond_0

    .line 544
    const/4 v2, 0x0

    .line 584
    :goto_0
    return-object v2

    .line 547
    :cond_0
    if-gtz p2, :cond_1

    .line 549
    const/4 v2, 0x0

    goto :goto_0

    .line 552
    :cond_1
    array-length v2, p0

    add-int v3, p2, p1

    if-ge v2, v3, :cond_2

    .line 554
    const/4 v2, 0x0

    goto :goto_0

    .line 557
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 559
    const/4 v2, 0x0

    goto :goto_0

    .line 562
    :cond_3
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v2, :cond_5

    .line 563
    const/4 v2, 0x1

    move-object/from16 v0, p3

    iput v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 567
    :cond_4
    :goto_1
    sub-int v7, p5, p4

    sub-int v8, p7, p6

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v9, p3

    invoke-static/range {v2 .. v9}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativePartialDecodeByteArray([BIIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 569
    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 571
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v14

    .line 572
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v12

    .line 574
    if-nez v10, :cond_6

    .line 575
    const/4 v2, 0x0

    goto :goto_0

    .line 564
    :cond_5
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_4

    .line 565
    const/16 v2, 0x8

    move-object/from16 v0, p3

    iput v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 577
    :cond_6
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-ge v2, v13, :cond_7

    .line 578
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v2, v14

    div-int/2addr v2, v13

    move-object/from16 v0, p3

    iget v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v3, v12

    div-int/2addr v3, v13

    const/4 v4, 0x0

    invoke-static {v10, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 579
    .local v11, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 580
    move-object v10, v11

    .line 581
    move-object/from16 v0, p3

    iput v13, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .end local v11    # "bm":Landroid/graphics/Bitmap;
    :cond_7
    move-object v2, v10

    .line 584
    goto :goto_0
.end method

.method public static partialDecodeByteArrayToBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;IIIILcom/quramsoft/qrb/ImageBufferData;)I
    .locals 14
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "output"    # Lcom/quramsoft/qrb/ImageBufferData;

    .prologue
    .line 595
    const/4 v12, 0x0

    .line 599
    .local v12, "ret":I
    if-gez p1, :cond_0

    .line 601
    const/4 v2, 0x0

    .line 669
    :goto_0
    return v2

    .line 604
    :cond_0
    if-gtz p2, :cond_1

    .line 606
    const/4 v2, 0x0

    goto :goto_0

    .line 609
    :cond_1
    array-length v2, p0

    add-int v3, p2, p1

    if-ge v2, v3, :cond_2

    .line 611
    const/4 v2, 0x0

    goto :goto_0

    .line 614
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 616
    const/4 v2, 0x0

    goto :goto_0

    .line 619
    :cond_3
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_4

    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-gez v2, :cond_5

    .line 621
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 624
    :cond_5
    if-nez p8, :cond_6

    .line 626
    const/4 v2, 0x0

    goto :goto_0

    .line 629
    :cond_6
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v2, :cond_8

    .line 630
    const/4 v2, 0x1

    move-object/from16 v0, p3

    iput v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 634
    :cond_7
    :goto_1
    invoke-static/range {p0 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativeGetImageInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v12

    .line 636
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p3

    iget v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v13

    .line 637
    .local v13, "width":I
    invoke-virtual/range {p3 .. p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p3

    iget v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v11

    .line 639
    .local v11, "height":I
    if-nez v12, :cond_9

    .line 641
    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 642
    const/4 v2, 0x0

    goto :goto_0

    .line 631
    .end local v11    # "height":I
    .end local v13    # "width":I
    :cond_8
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_7

    .line 632
    const/16 v2, 0x8

    move-object/from16 v0, p3

    iput v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 645
    .restart local v11    # "height":I
    .restart local v13    # "width":I
    :cond_9
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_a

    .line 646
    mul-int v2, v13, v11

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p8

    iput-object v2, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    .line 657
    :goto_2
    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 659
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setWidth(I)V

    .line 660
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHeight(I)V

    .line 662
    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    sub-int v8, p5, p4

    sub-int v9, p7, p6

    move-object v2, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p6

    move-object/from16 v10, p3

    invoke-static/range {v2 .. v10}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativePartialDecodeByteArrayToBuffer([BLjava/nio/ByteBuffer;IIIIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v12

    .line 664
    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 666
    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_d

    .line 667
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 647
    :cond_a
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    if-nez v2, :cond_b

    .line 648
    mul-int v2, v13, v11

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p8

    iput-object v2, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 649
    :cond_b
    move-object/from16 v0, p3

    iget v2, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 650
    mul-int v2, v13, v11

    add-int/lit8 v3, v13, 0x1

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v11, 0x1

    shr-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p8

    iput-object v2, v0, Lcom/quramsoft/qrb/ImageBufferData;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 653
    :cond_c
    const-wide/16 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 654
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 669
    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public static partialDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "option"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1075
    const/4 v9, 0x0

    .line 1076
    .local v9, "ret":I
    const/4 v6, 0x0

    .line 1077
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget v10, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 1078
    .local v10, "sampleSize":I
    const/4 v11, 0x0

    .line 1079
    .local v11, "width":I
    const/4 v8, 0x0

    .line 1081
    .local v8, "height":I
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1085
    const/4 v0, 0x0

    .line 1114
    :goto_0
    return-object v0

    .line 1088
    :cond_0
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v0, :cond_2

    .line 1089
    const/4 v0, 0x1

    iput v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 1093
    :cond_1
    :goto_1
    sub-int v3, p3, p2

    sub-int v4, p5, p4

    move-object v0, p0

    move v1, p2

    move/from16 v2, p4

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->nativePartialDecodeFile(Ljava/lang/String;IIIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1095
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    .line 1097
    if-nez v6, :cond_3

    .line 1098
    const/4 v0, 0x0

    goto :goto_0

    .line 1090
    :cond_2
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 1091
    const/16 v0, 0x8

    iput v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 1100
    :cond_3
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v11

    .line 1101
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v8

    .line 1103
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-ge v0, v10, :cond_4

    .line 1105
    sub-int v0, p3, p2

    iget v1, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    div-int v11, v0, v1

    .line 1106
    sub-int v0, p5, p4

    iget v1, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    div-int v8, v0, v1

    .line 1108
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v0, v11

    div-int/2addr v0, v10

    iget v1, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v1, v8

    div-int/2addr v1, v10

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1109
    .local v7, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1110
    move-object v6, v7

    .line 1111
    iput v10, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .end local v7    # "bm":Landroid/graphics/Bitmap;
    :cond_4
    move-object v0, v6

    .line 1114
    goto :goto_0
.end method

.method public static prepareDecodeFileIter(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;IIZ)I
    .locals 10
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2, "decWidth"    # I
    .param p3, "decHeight"    # I
    .param p4, "makeMidPoint"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 726
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 727
    if-lez p2, :cond_0

    if-gtz p3, :cond_2

    .line 730
    :cond_0
    const/4 v6, 0x0

    .line 747
    :cond_1
    :goto_0
    return v6

    .line 733
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getMidpoint()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 735
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    .line 736
    # getter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpoint:[B
    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$2(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)[B

    move-result-object v2

    # getter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mMidpointOffset:I
    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$3(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v3

    move v4, p2

    move v5, p3

    .line 734
    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->PrepareJPEGFromFileIterMidpoint(J[BIII)I

    move-result v6

    .line 742
    .local v6, "ret":I
    :goto_1
    if-nez v6, :cond_1

    .line 743
    invoke-virtual {p1, v8, v9}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    goto :goto_0

    .line 739
    .end local v6    # "ret":I
    :cond_3
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->PrepareJPEGFromFileIter(JII)I

    move-result v6

    .restart local v6    # "ret":I
    goto :goto_1
.end method

.method public static prepareDecodeIter(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p1, "decWidth"    # I
    .param p2, "decHeight"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 759
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 760
    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    .line 763
    :cond_0
    const/4 v0, 0x0

    .line 773
    :cond_1
    :goto_0
    return v0

    .line 766
    :cond_2
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lcom/quramsoft/qrb/QuramBitmapFactory;->PrepareJPEGFromFileIter(JII)I

    move-result v0

    .line 768
    .local v0, "ret":I
    if-nez v0, :cond_1

    .line 769
    invoke-virtual {p0, v4, v5}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(J)V

    goto :goto_0
.end method

.method public static native recycleNativeBuffer(J)V
.end method

.method public static round(F)I
    .locals 1
    .param p0, "val"    # F

    .prologue
    .line 54
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static translateBitmapFactoryOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .locals 4
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v3, 0x7

    .line 1350
    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;-><init>()V

    .line 1351
    .local v0, "qrbOptions":Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    iget-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 1353
    iput v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    .line 1364
    :goto_0
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 1365
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$4(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V

    .line 1366
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$5(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V

    .line 1368
    return-object v0

    .line 1355
    :cond_0
    iget-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    .line 1357
    const/4 v1, 0x0

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    goto :goto_0

    .line 1361
    :cond_1
    iput v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    goto :goto_0
.end method
