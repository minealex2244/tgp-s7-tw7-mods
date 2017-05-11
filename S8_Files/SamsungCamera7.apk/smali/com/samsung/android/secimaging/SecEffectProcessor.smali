.class public Lcom/samsung/android/secimaging/SecEffectProcessor;
.super Ljava/lang/Object;
.source "SecEffectProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;,
        Lcom/samsung/android/secimaging/SecEffectProcessor$EffectProcessorListener;
    }
.end annotation


# static fields
.field private static final SEC_EFFECT_PROCESSOR_MSG_INFO:I = 0x1

.field private static final SEC_EFFECT_PROCESSOR_MSG_SNAP_IMAGE:I = 0x3

.field private static final SEC_EFFECT_PROCESSOR_MSG_STILL_IMAGE:I = 0x2

.field public static final STRING_SMART_FILTER:Ljava/lang/String; = "com.samsung.android.provider.filterprovider,libsmartfilter.so"

.field private static final TAG:Ljava/lang/String; = "SecEffectProcessor"

.field public static final TYPE_EFFECT_CUSTOM_COLOR:I = 0x1a9

.field public static final TYPE_EFFECT_DISTORTION_CORRECTION:I = 0x1bf

.field public static final TYPE_EFFECT_DISTORTION_SPOTLIGHT:I = 0x1c0

.field public static final TYPE_EFFECT_FOOD:I = 0x1c2

.field public static final TYPE_EFFECT_NONE:I = 0x190

.field public static final TYPE_EFFECT_OUT_FOCUS:I = 0x1c3

.field public static final TYPE_EFFECT_WATERMARK:I = 0x138a

.field public static final TYPE_PARM_DEPTH_MAP:I = 0x0

.field public static final TYPE_PARM_FACE:I = 0x1

.field public static final TYPE_PARM_SMARTFILTER:I = 0x4

.field public static final TYPE_PARM_WATERMARK_CAPTURE:I = 0x3

.field public static final TYPE_PARM_WATERMARK_PREVIEW:I = 0x2


# instance fields
.field private mEffectProcessorListener:Lcom/samsung/android/secimaging/SecEffectProcessor$EffectProcessorListener;

.field private mEventHandler:Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;

.field private mIsProcessing:Z

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "secimaging"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_init()V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v2, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mEffectProcessorListener:Lcom/samsung/android/secimaging/SecEffectProcessor$EffectProcessorListener;

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mIsProcessing:Z

    .line 69
    iput-object v2, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mEffectProcessorListener:Lcom/samsung/android/secimaging/SecEffectProcessor$EffectProcessorListener;

    .line 72
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 73
    new-instance v1, Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;-><init>(Lcom/samsung/android/secimaging/SecEffectProcessor;Lcom/samsung/android/secimaging/SecEffectProcessor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mEventHandler:Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;

    .line 79
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_setup(Ljava/lang/Object;)V

    .line 80
    return-void

    .line 74
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    new-instance v1, Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;-><init>(Lcom/samsung/android/secimaging/SecEffectProcessor;Lcom/samsung/android/secimaging/SecEffectProcessor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mEventHandler:Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;

    goto :goto_0

    .line 77
    :cond_1
    iput-object v2, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mEventHandler:Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/secimaging/SecEffectProcessor;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/secimaging/SecEffectProcessor;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/samsung/android/secimaging/SecEffectProcessor;)Lcom/samsung/android/secimaging/SecEffectProcessor$EffectProcessorListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/secimaging/SecEffectProcessor;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mEffectProcessorListener:Lcom/samsung/android/secimaging/SecEffectProcessor$EffectProcessorListener;

    return-object v0
.end method

.method private static native native_init()V
.end method

.method private native native_initialize()V
.end method

.method private native native_release()V
.end method

.method private native native_setCameraMode(I)V
.end method

.method private native native_setEffect_assetManager(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method private native native_setEffect_external(Ljava/lang/String;)Z
.end method

.method private native native_setEffect_internal(I)Z
.end method

.method private native native_setEffect_parameter(Ljava/lang/String;)Z
.end method

.method private native native_setEffect_parameter_generic(ILjava/lang/Object;II)Z
.end method

.method private native native_setEffect_parameters(I[B)Z
.end method

.method private native native_setInputSurface(Ljava/lang/Object;)V
.end method

.method private native native_setOutputSurface(Ljava/lang/Object;)V
.end method

.method private native native_setProcessor_parameter(Ljava/lang/String;)Z
.end method

.method private native native_setRecordingSurface(Ljava/lang/Object;)V
.end method

.method private native native_setSaveAsFlipped(I)V
.end method

.method private native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_snapcapture()V
.end method

.method private native native_snapshot()V
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_takepicture_array([B)V
.end method

.method private native native_takepicture_buffer(Ljava/lang/Object;I)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .param p0, "sec_effect_processor_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 86
    if-eqz p0, :cond_0

    .line 87
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "sec_effect_processor_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/secimaging/SecEffectProcessor;

    .line 88
    .local v1, "processor":Lcom/samsung/android/secimaging/SecEffectProcessor;
    if-nez v1, :cond_1

    .line 98
    .end local v1    # "processor":Lcom/samsung/android/secimaging/SecEffectProcessor;
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v1    # "processor":Lcom/samsung/android/secimaging/SecEffectProcessor;
    :cond_1
    iget-object v2, v1, Lcom/samsung/android/secimaging/SecEffectProcessor;->mEventHandler:Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, v1, Lcom/samsung/android/secimaging/SecEffectProcessor;->mEventHandler:Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 93
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, v1, Lcom/samsung/android/secimaging/SecEffectProcessor;->mEventHandler:Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 95
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    const-string v2, "SecEffectProcessor"

    const-string v3, "mEventHandler is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized initialize()V
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_initialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mIsProcessing:Z

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mIsProcessing:Z

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_stop()Z

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_release()V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mEventHandler:Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mEventHandler:Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/secimaging/SecEffectProcessor$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_1
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCameraMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_setCameraMode(I)V

    .line 118
    return-void
.end method

.method public setEffect(I)V
    .locals 0
    .param p1, "effect"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_setEffect_internal(I)Z

    .line 122
    return-void
.end method

.method public setEffect(Ljava/lang/String;)V
    .locals 0
    .param p1, "effect"    # Ljava/lang/String;

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_setEffect_external(Ljava/lang/String;)Z

    .line 128
    :cond_0
    return-void
.end method

.method public setEffect(Ljava/lang/String;Landroid/content/res/AssetManager;)V
    .locals 0
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "assetMgr"    # Landroid/content/res/AssetManager;

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_setEffect_assetManager(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public setEffectParameter(ILjava/lang/Object;II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_setEffect_parameter_generic(ILjava/lang/Object;II)Z

    .line 144
    return-void
.end method

.method public setEffectParameter(I[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_setEffect_parameters(I[B)Z

    .line 140
    return-void
.end method

.method public setEffectParameter(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_setEffect_parameter(Ljava/lang/String;)Z

    .line 136
    return-void
.end method

.method public declared-synchronized setEffectProcessorListener(Lcom/samsung/android/secimaging/SecEffectProcessor$EffectProcessorListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/secimaging/SecEffectProcessor$EffectProcessorListener;

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    const-string v0, "SecEffectProcessor"

    const-string v1, "setEffectProcessorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object p1, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mEffectProcessorListener:Lcom/samsung/android/secimaging/SecEffectProcessor$EffectProcessorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInputSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_setInputSurface(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_setOutputSurface(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public setProcessorParameter(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_setProcessor_parameter(Ljava/lang/String;)Z

    .line 161
    return-void
.end method

.method public setRecordingSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_setRecordingSurface(Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public setSaveAsFlipped(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_setSaveAsFlipped(I)V

    .line 169
    return-void
.end method

.method public declared-synchronized snapshot()V
    .locals 1

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_snapshot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startProcessing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 176
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mIsProcessing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 181
    :goto_0
    monitor-exit p0

    return v0

    .line 179
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mIsProcessing:Z

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_start()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopProcessing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 185
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mIsProcessing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 191
    :goto_0
    monitor-exit p0

    return v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectProcessor;->mIsProcessing:Z

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_stop()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized takepicture()V
    .locals 1

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_snapcapture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized takepicture(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "jpegdata"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 199
    monitor-enter p0

    if-nez p1, :cond_0

    .line 200
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JPEG is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 202
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_takepicture_buffer(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized takepicture([B)V
    .locals 2
    .param p1, "jpegdata"    # [B

    .prologue
    .line 208
    monitor-enter p0

    if-nez p1, :cond_0

    .line 209
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JPEG is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 211
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/secimaging/SecEffectProcessor;->native_takepicture_array([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    monitor-exit p0

    return-void
.end method
