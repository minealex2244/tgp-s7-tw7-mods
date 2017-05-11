.class public Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;
.super Ljava/lang/Object;
.source "SemApexRecorderListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "apex_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->native_init()V

    .line 34
    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->TAG:Ljava/lang/String;

    const-string v2, "SemApexRecorderListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-direct {v1, v0}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    .line 52
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->native_setup(Ljava/lang/Object;)V

    .line 53
    return-void

    .line 46
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v1, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-direct {v1, v0}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 7
    .param p0, "listener_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 89
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->TAG:Ljava/lang/String;

    const-string v3, "postEventFromNative: %d, %d, %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 89
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "listener_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    .line 92
    .local v0, "l":Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;
    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 98
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 58
    iput-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    .line 60
    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->setOnInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->setOnErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;)V

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->native_finalize()V

    .line 64
    return-void
.end method

.method public setOnErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;)V
    .locals 2
    .param p1, "onErrorListener"    # Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;

    .prologue
    .line 74
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->TAG:Ljava/lang/String;

    const-string v1, "setOnErrorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->setOnErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;)V

    .line 78
    :cond_0
    return-void
.end method

.method public setOnInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;)V
    .locals 2
    .param p1, "onInfoListener"    # Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;

    .prologue
    .line 81
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->TAG:Ljava/lang/String;

    const-string v1, "setOnErrorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->setOnInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setToken(I)V
    .locals 2
    .param p1, "token"    # I

    .prologue
    .line 67
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->TAG:Ljava/lang/String;

    const-string v1, "setToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->mEventHandler:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->setToken(I)V

    .line 71
    :cond_0
    return-void
.end method
