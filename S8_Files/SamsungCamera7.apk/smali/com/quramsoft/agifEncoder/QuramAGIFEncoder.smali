.class public Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;
.super Ljava/lang/Object;
.source "QuramAGIFEncoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuramAGIFEncoder"


# instance fields
.field protected mHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->loadLib()V

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    .line 131
    invoke-virtual {p0, p0}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeInitHandle(Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;)V

    .line 132
    return-void
.end method

.method public static loadLib()V
    .locals 4

    .prologue
    .line 24
    :try_start_0
    const-string v1, "quramagifencoder"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 26
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 28
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "QuramAGIFEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load library fail : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static makeContactAGIF(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "maxSideLength"    # I

    .prologue
    .line 127
    invoke-static {p0, p1, p2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeMakeContactImage(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static makeContactAGIF(Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Rect;)I
    .locals 8
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 111
    iget v4, p4, Landroid/graphics/Rect;->left:I

    .line 112
    .local v4, "x":I
    iget v5, p4, Landroid/graphics/Rect;->top:I

    .line 113
    .local v5, "y":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 114
    .local v6, "w":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .local v7, "h":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 116
    invoke-static/range {v0 .. v7}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeMakeContactResizeImageRect(Ljava/lang/String;Ljava/lang/String;IIIIII)I

    move-result v0

    return v0
.end method

.method public static makeContactAGIF(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)I
    .locals 6
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 93
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 94
    .local v2, "x":I
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 95
    .local v3, "y":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 96
    .local v4, "w":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .local v5, "h":I
    move-object v0, p0

    move-object v1, p1

    .line 98
    invoke-static/range {v0 .. v5}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeMakeContactImageRect(Ljava/lang/String;Ljava/lang/String;IIII)I

    move-result v0

    return v0
.end method

.method public static makeContactAGIF([BII)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "datasize"    # I
    .param p2, "maxSideLength"    # I

    .prologue
    .line 44
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeMakeContactBuffer([BIII)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 45
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 46
    .local v1, "out":[B
    return-object v1
.end method

.method public static makeContactAGIF([BIIILandroid/graphics/Rect;)[B
    .locals 11
    .param p0, "data"    # [B
    .param p1, "datasize"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 75
    iget v5, p4, Landroid/graphics/Rect;->left:I

    .line 76
    .local v5, "x":I
    iget v6, p4, Landroid/graphics/Rect;->top:I

    .line 77
    .local v6, "y":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 78
    .local v7, "w":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 80
    .local v8, "h":I
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v8}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeMakeContactRectResizeBuffer([BIIIIIIII)Ljava/io/ByteArrayOutputStream;

    move-result-object v9

    .line 81
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 82
    .local v10, "out":[B
    return-object v10
.end method

.method public static makeContactAGIF([BILandroid/graphics/Rect;)[B
    .locals 9
    .param p0, "data"    # [B
    .param p1, "datasize"    # I
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 56
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 57
    .local v3, "x":I
    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 58
    .local v4, "y":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 59
    .local v5, "w":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 61
    .local v6, "h":I
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeMakeContactRectBuffer([BIIIIII)Ljava/io/ByteArrayOutputStream;

    move-result-object v7

    .line 62
    .local v7, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 63
    .local v8, "out":[B
    return-object v8
.end method

.method protected static native nativeMakeContactBuffer([BIII)Ljava/io/ByteArrayOutputStream;
.end method

.method protected static native nativeMakeContactImage(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method protected static native nativeMakeContactImageRect(Ljava/lang/String;Ljava/lang/String;IIII)I
.end method

.method protected static native nativeMakeContactRectBuffer([BIIIIII)Ljava/io/ByteArrayOutputStream;
.end method

.method protected static native nativeMakeContactRectResizeBuffer([BIIIIIIII)Ljava/io/ByteArrayOutputStream;
.end method

.method protected static native nativeMakeContactResizeImageRect(Ljava/lang/String;Ljava/lang/String;IIIIII)I
.end method


# virtual methods
.method public addFrame(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "im"    # Landroid/graphics/Bitmap;

    .prologue
    .line 305
    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setSize(II)V

    .line 307
    :cond_0
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeAddFrame(JLandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public addFrameMP(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "im"    # Landroid/graphics/Bitmap;

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setSize(II)V

    .line 314
    :cond_0
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeAddFrameMP(JLandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public addFrameTP(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "im"    # Landroid/graphics/Bitmap;

    .prologue
    .line 318
    if-eqz p1, :cond_0

    .line 319
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->setSize(II)V

    .line 328
    :cond_0
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeAddFrameTP(JLandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public finish()Z
    .locals 2

    .prologue
    .line 346
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeFinish(J)Z

    move-result v0

    return v0
.end method

.method protected native nativeAddFrame(JLandroid/graphics/Bitmap;)Z
.end method

.method protected native nativeAddFrameMP(JLandroid/graphics/Bitmap;)Z
.end method

.method protected native nativeAddFrameTP(JLandroid/graphics/Bitmap;)Z
.end method

.method protected native nativeAddIntBufferTP(J[I)Z
.end method

.method protected native nativeFinish(J)Z
.end method

.method protected native nativeInitHandle(Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;)V
.end method

.method protected native nativeSetDelay(JI)V
.end method

.method protected native nativeSetDispose(JI)V
.end method

.method protected native nativeSetDither(JI)V
.end method

.method protected native nativeSetFrameRate(JF)V
.end method

.method protected native nativeSetGlobalSize(JII)V
.end method

.method protected native nativeSetMaxResolution(JI)V
.end method

.method protected native nativeSetMaxTask(JI)V
.end method

.method protected native nativeSetMaxTaskTP(JI)V
.end method

.method protected native nativeSetPosition(JII)V
.end method

.method protected native nativeSetQuality(JI)V
.end method

.method protected native nativeSetRepeat(JI)V
.end method

.method protected native nativeSetSize(JII)V
.end method

.method protected native nativeSetTransparent(JI)V
.end method

.method protected native nativeSetWriteFunc(JI)V
.end method

.method protected native nativeStart(JLjava/lang/String;)Z
.end method

.method protected native nativeStartFD(JLjava/io/FileDescriptor;)Z
.end method

.method public setDelay(I)V
    .locals 2
    .param p1, "ms"    # I

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetDelay(JI)V

    .line 143
    return-void
.end method

.method public setDispose(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetDispose(JI)V

    .line 155
    return-void
.end method

.method public setDither(I)V
    .locals 2
    .param p1, "method"    # I

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetDither(JI)V

    .line 165
    return-void
.end method

.method public setFrameRate(F)V
    .locals 2
    .param p1, "fps"    # F

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetFrameRate(JF)V

    .line 212
    return-void
.end method

.method public setGlobalSize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 247
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetGlobalSize(JII)V

    .line 248
    return-void
.end method

.method public setMaxResolution(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetMaxResolution(JI)V

    .line 235
    return-void
.end method

.method public setMaxTask(I)V
    .locals 2
    .param p1, "numberOfTask"    # I

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetMaxTask(JI)V

    .line 221
    return-void
.end method

.method public setMaxTaskTP(I)V
    .locals 2
    .param p1, "numberOfTask"    # I

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetMaxTaskTP(JI)V

    .line 225
    return-void
.end method

.method public setPosition(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetPosition(JII)V

    .line 274
    return-void
.end method

.method public setRepeat(I)V
    .locals 2
    .param p1, "iter"    # I

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetRepeat(JI)V

    .line 179
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 260
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetSize(JII)V

    .line 261
    return-void
.end method

.method public setTransparent(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetTransparent(JI)V

    .line 201
    return-void
.end method

.method public setWriteFunc(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 338
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeSetWriteFunc(JI)V

    .line 339
    return-void
.end method

.method public start(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeStart(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startFD(Ljava/io/FileDescriptor;)Z
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->mHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/quramsoft/agifEncoder/QuramAGIFEncoder;->nativeStartFD(JLjava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method
