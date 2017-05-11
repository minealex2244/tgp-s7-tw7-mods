.class public abstract Lcom/samsung/android/glview/GLTexture;
.super Lcom/samsung/android/glview/GLView;
.source "GLTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GLTexture"


# instance fields
.field private mAsyncLoadingInProgress:Z

.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapSizeChanged:Z

.field private mBitmapUpdated:Z

.field protected mCoordBuffer:[F

.field protected mFlip:Z

.field protected mIndexBuffer:Ljava/nio/ByteBuffer;

.field mIndices:[B

.field protected mNewProgramType:I

.field protected mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field protected mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field protected mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field protected mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field protected mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field protected mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field protected mObjTintColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

.field protected mProgramID:I

.field protected mProgramType:I

.field protected mTexCoordBuffer:Ljava/nio/ByteBuffer;

.field protected mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

.field protected mTextureLoaded:Z

.field protected mTextureReloaded:Z

.field protected mTextureSharing:Z

.field protected mTextures:[I

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;

.field mVertices:[F

.field protected mViewMatrix:[F


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 3
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/16 v2, 0x3e9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mFlip:Z

    .line 68
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureReloaded:Z

    .line 69
    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    .line 70
    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    .line 71
    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    .line 72
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 75
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 76
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 77
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTintColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 79
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mViewMatrix:[F

    .line 83
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    .line 84
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureSharing:Z

    .line 93
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLoadingInProgress:Z

    .line 94
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapUpdated:Z

    .line 95
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapSizeChanged:Z

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFF)V
    .locals 3
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "z"    # F

    .prologue
    const/16 v2, 0x3e9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFF)V

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mFlip:Z

    .line 68
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureReloaded:Z

    .line 69
    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    .line 70
    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    .line 71
    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    .line 72
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 75
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 76
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 77
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTintColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 79
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mViewMatrix:[F

    .line 83
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    .line 84
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureSharing:Z

    .line 93
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLoadingInProgress:Z

    .line 94
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapUpdated:Z

    .line 95
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapSizeChanged:Z

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 3
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/16 v2, 0x3e9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mFlip:Z

    .line 68
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureReloaded:Z

    .line 69
    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    .line 70
    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    .line 71
    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    .line 72
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 75
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 76
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 77
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTintColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 79
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mViewMatrix:[F

    .line 83
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    .line 84
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureSharing:Z

    .line 93
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLoadingInProgress:Z

    .line 94
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapUpdated:Z

    .line 95
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapSizeChanged:Z

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFF)V
    .locals 3
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "z"    # F

    .prologue
    const/16 v2, 0x3e9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFFF)V

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mFlip:Z

    .line 68
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureReloaded:Z

    .line 69
    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    .line 70
    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    .line 71
    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    .line 72
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 75
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 76
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 77
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTintColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 79
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mViewMatrix:[F

    .line 83
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    .line 84
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureSharing:Z

    .line 93
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLoadingInProgress:Z

    .line 94
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapUpdated:Z

    .line 95
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapSizeChanged:Z

    .line 145
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/glview/GLTexture;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/glview/GLTexture;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLoadingInProgress:Z

    return p1
.end method

.method private doUpdate()V
    .locals 3

    .prologue
    const/16 v2, 0xde1

    const/4 v1, 0x0

    .line 724
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    aget v0, v0, v1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 726
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapSizeChanged:Z

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 731
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 734
    :cond_0
    return-void

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v1, v1, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->clearBuffers()V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLContext;->addTextureToDelete(Lcom/samsung/android/glview/GLTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_1
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected clearBitmap()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 358
    :cond_0
    return-void
.end method

.method protected clearBuffers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 367
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 368
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 371
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 372
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 375
    :cond_2
    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    .line 376
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 377
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 379
    :cond_3
    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    .line 380
    return-void
.end method

.method public clearTexture()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    if-eqz v0, :cond_0

    .line 167
    new-array v0, v3, [I

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    aget v1, v1, v2

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    .line 170
    :cond_0
    return-void
.end method

.method protected generateTexture()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 383
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    if-nez v0, :cond_0

    .line 384
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 387
    return-void
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    return v0
.end method

.method protected declared-synchronized initBuffers()V
    .locals 4

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->clearBuffers()V

    .line 394
    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "offset":I
    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    if-nez v2, :cond_0

    .line 398
    const/4 v2, 0x6

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    const/4 v3, 0x0

    aput-byte v3, v2, v0

    .line 400
    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    const/4 v3, 0x1

    aput-byte v3, v2, v1

    .line 401
    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .restart local v1    # "offset":I
    const/4 v3, 0x3

    aput-byte v3, v2, v0

    .line 402
    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    const/4 v3, 0x0

    aput-byte v3, v2, v1

    .line 403
    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .restart local v1    # "offset":I
    const/4 v3, 0x3

    aput-byte v3, v2, v0

    .line 404
    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    const/4 v3, 0x2

    aput-byte v3, v2, v1

    .line 406
    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 408
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    .line 409
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    .line 411
    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    if-nez v2, :cond_1

    .line 412
    const/16 v2, 0x8

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->initCoordBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    .line 393
    .end local v1    # "offset":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected initCoordBuffer()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "offset":I
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    aput v3, v1, v0

    .line 423
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v3, v1, v0

    .line 424
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v3, v1, v0

    .line 425
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v4, v1, v0

    .line 426
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v4, v1, v0

    .line 427
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v3, v1, v0

    .line 428
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v4, v1, v0

    .line 429
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v4, v1, v0

    .line 431
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 433
    const/4 v0, 0x0

    .line 434
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    aput v4, v1, v0

    .line 435
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v3, v1, v0

    .line 436
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v4, v1, v0

    .line 437
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v4, v1, v0

    .line 438
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v3, v1, v0

    .line 439
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v3, v1, v0

    .line 440
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v3, v1, v0

    .line 441
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v0, 0x1

    aput v4, v1, v0

    .line 443
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLTexture;->mCoordBuffer:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 445
    return-void
.end method

.method public declared-synchronized initSize()V
    .locals 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract loadBitmap()Landroid/graphics/Bitmap;
.end method

.method protected declared-synchronized loadGLTexture()V
    .locals 5

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 472
    :goto_0
    monitor-exit p0

    return-void

    .line 462
    :cond_0
    const/4 v0, 0x0

    .line 463
    .local v0, "err":I
    const/16 v1, 0xde1

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 464
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 465
    if-eqz v0, :cond_1

    .line 466
    const-string v1, "GLTexture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTag()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : texImage2D - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->clearBitmap()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    .end local v0    # "err":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected loadProgram()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 475
    iget v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    packed-switch v1, :pswitch_data_0

    .line 551
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgramStorage;->getProgram(I)Lcom/samsung/android/glview/GLProgram;

    move-result-object v0

    .line 552
    .local v0, "program":Lcom/samsung/android/glview/GLProgram;
    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgram;->getProgramID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    .line 554
    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 555
    const-string v1, "a_texcoord"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 556
    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 557
    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 558
    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 559
    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 560
    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mObjTintColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 477
    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v1

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgramStorage;->getProgram(I)Lcom/samsung/android/glview/GLProgram;

    move-result-object v0

    .line 478
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgram;->getProgramID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    .line 480
    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 481
    const-string v1, "a_texcoord"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 482
    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 483
    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 484
    const-string v1, "u_step"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 485
    const-string v1, "u_param"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 486
    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mObjTintColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    goto :goto_0

    .line 491
    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v1

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgramStorage;->getProgram(I)Lcom/samsung/android/glview/GLProgram;

    move-result-object v0

    .line 492
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgram;->getProgramID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    .line 494
    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 495
    const-string v1, "a_texcoord"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 496
    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 497
    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 498
    const-string v1, "u_step"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 499
    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 500
    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mObjTintColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    goto/16 :goto_0

    .line 506
    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v1

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgramStorage;->getProgram(I)Lcom/samsung/android/glview/GLProgram;

    move-result-object v0

    .line 507
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgram;->getProgramID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    .line 509
    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 510
    const-string v1, "a_texcoord"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 511
    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 512
    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 513
    const-string v1, "u_step"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 514
    const-string v1, "u_param"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 515
    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mObjTintColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    goto/16 :goto_0

    .line 521
    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v1

    const/16 v2, 0x3f1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgramStorage;->getProgram(I)Lcom/samsung/android/glview/GLProgram;

    move-result-object v0

    .line 522
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgram;->getProgramID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    .line 524
    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 525
    const-string v1, "a_texcoord"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 526
    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 527
    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 528
    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 529
    const-string v1, "u_param"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 530
    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mObjTintColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    goto/16 :goto_0

    .line 536
    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProgramStorage()Lcom/samsung/android/glview/GLProgramStorage;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgramStorage;->getProgram(I)Lcom/samsung/android/glview/GLProgram;

    move-result-object v0

    .line 537
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgram;->getProgramID()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    .line 539
    const-string v1, "a_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 540
    const-string v1, "a_texcoord"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 541
    const-string v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 542
    const-string v1, "u_alpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 543
    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 544
    iput-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    .line 545
    const-string v1, "u_tint_color"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mObjTintColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    goto/16 :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onAlphaUpdated()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 199
    return-void
.end method

.method public onDraw()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 206
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mLayoutUpdated:Z

    if-eqz v0, :cond_d

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->setVertices()V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    invoke-static {v0}, Lcom/samsung/android/glview/GLUtil;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 215
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 218
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLTexture;->mLayoutUpdated:Z

    .line 227
    :cond_3
    :goto_1
    iget v0, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    iget v1, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    if-eq v0, v1, :cond_4

    .line 228
    iget v0, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    iput v0, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->loadProgram()V

    .line 232
    :cond_4
    iget v0, p0, Lcom/samsung/android/glview/GLTexture;->mProgramID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 234
    const/4 v6, 0x0

    .line 236
    .local v6, "err":I
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 237
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v6

    .line 238
    if-eqz v6, :cond_5

    .line 239
    const-string v0, "GLTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTag()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] : glActiveTexture - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_5
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 242
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v6

    .line 243
    if-eqz v6, :cond_6

    .line 244
    const-string v0, "GLTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTag()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] : glBindTexture - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTintColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    if-eqz v0, :cond_7

    .line 248
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTintColor:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mTintColor:[F

    invoke-static {v0, v5, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mViewMatrix:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getProjMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getMatrix()[F

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/samsung/android/glview/GLUtil;->multiplyMM([F[F[F)V

    .line 252
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjMVPMatrix:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mViewMatrix:[F

    invoke-static {v0, v5, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjAlpha:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    if-eqz v0, :cond_8

    .line 255
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjStep:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget v1, p0, Lcom/samsung/android/glview/GLTexture;->mShaderStep:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 257
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    if-eqz v0, :cond_9

    .line 258
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjParam:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget v1, p0, Lcom/samsung/android/glview/GLTexture;->mShaderParameter:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 260
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 267
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mFlip:Z

    if-eqz v0, :cond_f

    .line 268
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget-object v5, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    move v1, v7

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 272
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextureReloaded:Z

    if-eqz v0, :cond_a

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->loadGLTexture()V

    .line 274
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLTexture;->mTextureReloaded:Z

    .line 276
    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapUpdated:Z

    if-eqz v0, :cond_b

    .line 277
    invoke-direct {p0}, Lcom/samsung/android/glview/GLTexture;->doUpdate()V

    .line 279
    :cond_b
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mIndices:[B

    array-length v1, v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 280
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v6

    .line 281
    if-eqz v6, :cond_c

    .line 282
    const-string v0, "GLTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] : glDrawElements  - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjPosition:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    goto/16 :goto_0

    .line 220
    .end local v6    # "err":I
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    .line 221
    :cond_e
    const-string v0, "GLTexture"

    const-string v1, "init buffers on onDraw"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->setVertices()V

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->initBuffers()V

    goto/16 :goto_1

    .line 270
    .restart local v6    # "err":I
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mObjTextureCoord:Lcom/samsung/android/glview/GLProgram$NameIndexerObj;

    iget v0, v0, Lcom/samsung/android/glview/GLProgram$NameIndexerObj;->mHandle:I

    iget-object v5, p0, Lcom/samsung/android/glview/GLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    move v1, v7

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto/16 :goto_2
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mLayoutUpdated:Z

    .line 295
    return-void
.end method

.method protected onLoad()Z
    .locals 7

    .prologue
    const v6, 0x47012f00    # 33071.0f

    const v5, 0x46180400    # 9729.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v4, 0xde1

    .line 572
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLoad:Z

    if-eqz v3, :cond_2

    .line 573
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLoadingInProgress:Z

    if-nez v3, :cond_0

    .line 574
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/glview/GLTexture$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/glview/GLTexture$1;-><init>(Lcom/samsung/android/glview/GLTexture;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 611
    .local v0, "t":Ljava/lang/Thread;
    const-string v3, "AsyncLoadingThread"

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 613
    iget-boolean v3, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLTexture;->mAsyncLoadingInProgress:Z

    if-nez v3, :cond_1

    .line 641
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_1
    move v1, v2

    .line 613
    goto :goto_0

    .line 616
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->initSize()V

    .line 617
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->generateTexture()V

    .line 618
    iget-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLTexture;->mTextureSharing:Z

    if-nez v3, :cond_3

    move v1, v2

    .line 619
    goto :goto_0

    .line 622
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->setVertices()V

    .line 623
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->initBuffers()V

    .line 625
    iget-object v3, p0, Lcom/samsung/android/glview/GLTexture;->mTextures:[I

    aget v2, v3, v2

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 627
    const/16 v2, 0x2801

    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 628
    const/16 v2, 0x2800

    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 630
    const/16 v2, 0x2802

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 631
    const/16 v2, 0x2803

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 633
    iget v2, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    iget v3, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    if-eq v2, v3, :cond_4

    .line 634
    iget v2, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    iput v2, p0, Lcom/samsung/android/glview/GLTexture;->mProgramType:I

    .line 636
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->loadProgram()V

    .line 637
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->loadGLTexture()V

    .line 639
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    goto :goto_0
.end method

.method public declared-synchronized onReset()V
    .locals 1

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 303
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized reLoad()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 645
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 662
    :goto_0
    monitor-exit p0

    return v0

    .line 648
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    .line 650
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 654
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 656
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->setVertices()V

    .line 657
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->initBuffers()V

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextureLoaded:Z

    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLTexture;->mTextureReloaded:Z

    .line 661
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 662
    goto :goto_0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetTint()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 312
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    .line 313
    return-void
.end method

.method public setFlip(Z)V
    .locals 0
    .param p1, "flip"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLTexture;->mFlip:Z

    .line 317
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 326
    iput p1, p0, Lcom/samsung/android/glview/GLTexture;->mNewProgramType:I

    .line 327
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 332
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLTexture;->setShaderProgram(I)V

    .line 333
    return-void
.end method

.method protected setVertices()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 669
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    if-nez v0, :cond_0

    .line 670
    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    .line 674
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getAlignToPixel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getLeft()F

    move-result v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v2

    .line 676
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTop()F

    move-result v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v5

    .line 677
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    aput v3, v0, v6

    .line 681
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getLeft()F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 682
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getBottom()F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 683
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 687
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getRight()F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 688
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTop()F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 689
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 693
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getRight()F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 694
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getBottom()F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 695
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 721
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getLeft()F

    move-result v1

    aput v1, v0, v2

    .line 699
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTop()F

    move-result v1

    aput v1, v0, v5

    .line 700
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    aput v3, v0, v6

    .line 704
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getLeft()F

    move-result v2

    aput v2, v0, v1

    .line 705
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getBottom()F

    move-result v2

    aput v2, v0, v1

    .line 706
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 710
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getRight()F

    move-result v2

    aput v2, v0, v1

    .line 711
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getTop()F

    move-result v2

    aput v2, v0, v1

    .line 712
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 716
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getRight()F

    move-result v2

    aput v2, v0, v1

    .line 717
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getBottom()F

    move-result v2

    aput v2, v0, v1

    .line 718
    iget-object v0, p0, Lcom/samsung/android/glview/GLTexture;->mVertices:[F

    const/16 v1, 0xb

    aput v3, v0, v1

    goto :goto_0
.end method

.method public declared-synchronized updateTexture(Landroid/graphics/Bitmap;Z)Z
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "sizeChanged"    # Z

    .prologue
    const/4 v0, 0x1

    .line 336
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getHeight()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 337
    :cond_0
    const/4 v0, 0x0

    .line 350
    :goto_0
    monitor-exit p0

    return v0

    .line 339
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapUpdated:Z

    .line 340
    iput-boolean p2, p0, Lcom/samsung/android/glview/GLTexture;->mBitmapSizeChanged:Z

    .line 342
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 343
    iget-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 344
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 347
    :cond_2
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/glview/GLTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 349
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
