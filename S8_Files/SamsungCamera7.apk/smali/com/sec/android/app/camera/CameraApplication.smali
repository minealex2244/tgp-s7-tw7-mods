.class public Lcom/sec/android/app/camera/CameraApplication;
.super Landroid/app/Application;
.source "CameraApplication.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CameraApplication;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 37
    new-instance v0, Lcom/sec/android/app/camera/CameraApplication$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraApplication$1;-><init>(Lcom/sec/android/app/camera/CameraApplication;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraApplication;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraApplication;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CameraApplication;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraApplication;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sec/android/app/camera/CameraApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 72
    sget-object v1, Lcom/sec/android/app/camera/CameraApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/CameraApplication;->mContext:Landroid/content/Context;

    .line 74
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraApplication;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraApplication;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraApplication;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setStartStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;)V

    .line 77
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature-LoadingStart**Point["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/sec/android/app/camera/feature/FeatureLoader;->loadFeatureFile()V

    .line 79
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature-LoadingEnd**Point["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->init(Landroid/app/Application;)V

    .line 82
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 83
    return-void

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
