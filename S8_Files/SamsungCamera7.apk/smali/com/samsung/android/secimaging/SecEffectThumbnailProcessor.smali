.class public Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;
.super Ljava/lang/Object;
.source "SecEffectThumbnailProcessor.java"


# static fields
.field public static final EFFECT_NORMAL:I = 0x0

.field public static final STRING_NO_EFFECT:Ljava/lang/String; = "com.samsung.android.provider.filterprovider.libnoeffect.so"

.field public static final STRING_SMART_FILTER:Ljava/lang/String; = "com.samsung.android.provider.filterprovider.libsmartfilter.so"

.field private static sEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;


# instance fields
.field public mIsFrontCamera:Z

.field private mIsInitialized:Z

.field private mNativeContext:J

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureHeight:I

.field private mTextureWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "secimaging"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_init()V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsFrontCamera:Z

    .line 42
    iput-boolean v1, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 45
    iput v1, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mTextureWidth:I

    .line 46
    iput v1, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mTextureHeight:I

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_setup(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->sEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    invoke-direct {v0}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;-><init>()V

    sput-object v0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->sEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    .line 56
    :cond_0
    sget-object v0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->sEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native native_draw([F[F[FF)V
.end method

.method private static final native native_init()V
.end method

.method private native native_initExternalEffect(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native native_initialize(I)V
.end method

.method private native native_release()V
.end method

.method private native native_setEffect(I)V
.end method

.method private native native_setEffect_parameter(I[B)V
.end method

.method private native native_setPreviewData(II[B)V
.end method

.method private native native_setSurfaceTexture(Ljava/lang/Object;II)V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    .prologue
    .line 60
    const-class v1, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->sEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->sEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->release()V

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->sEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit v1

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized draw([F[F[FF)V
    .locals 1
    .param p1, "matrix"    # [F
    .param p2, "rect"    # [F
    .param p3, "coord"    # [F
    .param p4, "alpha"    # F

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_draw([F[F[FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initExternalEffect(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "effectId"    # I
    .param p2, "libraryName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z

    .line 80
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_initExternalEffect(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_initialize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFrontCamera()Z
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsFrontCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 112
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_release()V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 111
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEffect(I)V
    .locals 1
    .param p1, "effectID"    # I

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 119
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_setEffect(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEffectParameter(I[B)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "data"    # [B

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 126
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_setEffect_parameter(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFrontCamera(Z)V
    .locals 1
    .param p1, "isFrontCamera"    # Z

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsFrontCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPreviewData(II[B)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "previewData"    # [B

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mTextureWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mTextureHeight:I

    if-eq v0, p2, :cond_2

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 135
    iput p1, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mTextureWidth:I

    .line 136
    iput p2, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mTextureHeight:I

    .line 138
    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_setSurfaceTexture(Ljava/lang/Object;II)V

    .line 140
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_setPreviewData(II[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
