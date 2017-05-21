.class public Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;
.super Ljava/lang/Object;
.source "SemApexRecorder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

.field private mNativeContext:J

.field private mToken:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "apex_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "listener should not null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->mListener:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_setup(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->mToken:I

    .line 77
    iget v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->mToken:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->setToken(I)V

    .line 78
    return-void
.end method

.method public static deinit()V
    .locals 0

    .prologue
    .line 60
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_deinit()V

    .line 61
    return-void
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_init()V

    .line 54
    return-void
.end method

.method private static final native native_deinit()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getSurface()Landroid/view/Surface;
.end method

.method private static final native native_init()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;)I
.end method

.method private final native native_start(Ljava/lang/String;)V
.end method

.method private final native native_stop()V
.end method

.method private final native native_store(J)I
.end method

.method private final native native_store(Ljava/lang/String;)I
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->mToken:I

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->mListener:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_finalize()V

    .line 91
    return-void
.end method

.method public setErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;)V
    .locals 1
    .param p1, "errorListener"    # Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->mListener:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->mListener:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->setOnErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;)V

    .line 175
    :cond_0
    return-void
.end method

.method public setInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;)V
    .locals 1
    .param p1, "infoListener"    # Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->mListener:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->mListener:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->setOnInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;)V

    .line 186
    :cond_0
    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameters"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_setParameters(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 3
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_start(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_stop()V

    .line 118
    return-void
.end method

.method public store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)I
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_store(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public store(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_store(J)I

    .line 137
    return-void
.end method

.method public store(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_store(Ljava/lang/String;)I

    .line 146
    return-void
.end method
