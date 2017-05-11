.class public Lcom/sec/android/app/camera/util/MotionPhotoManager;
.super Ljava/lang/Object;
.source "MotionPhotoManager.java"


# static fields
.field private static final KEY_MOTION_PHOTO_SERVICE_ENABLED:Ljava/lang/String; = "pref_global_motion_photo_service_enabled"

.field private static final TAG:Ljava/lang/String; = "MotionPhotoManager"


# instance fields
.field private mIsEffectRecording:Z

.field private mIsMotionPhotoStarted:Z

.field private mMotionPhotoCaptureIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mIsMotionPhotoStarted:Z

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoCaptureIds:Ljava/util/LinkedList;

    .line 44
    return-void
.end method

.method private getEffectProcessorSurfaceSize(Lcom/samsung/android/camera/core/SemCamera$Size;)V
    .locals 5
    .param p1, "size"    # Lcom/samsung/android/camera/core/SemCamera$Size;

    .prologue
    .line 263
    iget v3, p1, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    iget v4, p1, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v0

    .line 264
    .local v0, "aspectRatio":D
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v2

    .line 265
    .local v2, "aspectRatioType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 266
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_1_1:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v3

    iput v3, p1, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    .line 267
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_1_1:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v3

    iput v3, p1, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 269
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_4_3:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v3

    iput v3, p1, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    .line 270
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_4_3:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v3

    iput v3, p1, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    goto :goto_0

    .line 271
    :cond_2
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 273
    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 274
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_18DOT5_9:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v3

    iput v3, p1, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    .line 275
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_18DOT5_9:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v3

    iput v3, p1, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    goto :goto_0

    .line 277
    :cond_3
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_16_9:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v3

    iput v3, p1, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    .line 278
    sget-object v3, Lcom/sec/android/app/camera/feature/Feature;->REAL_PREVIEW_SIZE_16_9:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v3

    iput v3, p1, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    goto :goto_0
.end method

.method private static isMotionPhotoComposerEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 60
    const-string v1, "pref_global_motion_photo_service_enabled"

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const-string v1, "pref_global_motion_photo_key"

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    .local v0, "defValue":Z
    const-string v1, "pref_global_motion_photo_service_enabled"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 67
    .end local v0    # "defValue":Z
    :goto_0
    return v0

    :cond_0
    const-string v1, "pref_global_motion_photo_service_enabled"

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static setMotionPhotoComposerEnable(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 53
    const-string v0, "pref_global_motion_photo_service_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 54
    const-string v0, "MotionPhotoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMotionPhotoComposerEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "pref_global_motion_photo_service_enabled"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public createMotionPhotoComposer(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-static {p1}, Lcom/sec/android/app/camera/util/MotionPhotoManager;->isMotionPhotoComposerEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "MotionPhotoManager"

    const-string v1, "createMotionPhotoComposer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Factory;->create(Landroid/content/Context;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    .line 80
    :cond_0
    return-void
.end method

.method public getMotionPhotoSurface()Landroid/view/Surface;
    .locals 5

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "surface":Landroid/view/Surface;
    const-string v2, "MotionPhotoManager"

    const-string v3, "getMotionPhotoSurface"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v2, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v2, :cond_0

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getSurface()Landroid/view/Surface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MotionPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMotionPhotoSurface failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "MotionPhotoManager"

    const-string v3, "getMotionPhotoSurface mMotionPhotoComposer is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMotionPhotoToken()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getToken()I

    move-result v0

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isMotionPhotoEffectRecording()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mIsEffectRecording:Z

    return v0
.end method

.method public releaseMotionPhotoComposer()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "MotionPhotoManager"

    const-string v1, "releaseMotionPhotoComposer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->release()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    .line 134
    :cond_0
    return-void
.end method

.method public requestMotionPhotoId(I)J
    .locals 6
    .param p1, "rotation"    # I

    .prologue
    .line 145
    const-wide/16 v2, -0x1

    .line 146
    .local v2, "ret":J
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v1, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->store(I)J

    move-result-wide v2

    .line 149
    const-string v1, "MotionPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestMotionPhotoId returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoCaptureIds:Ljava/util/LinkedList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-wide v2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MotionPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestMotionPhotoId failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "MotionPhotoManager"

    const-string v4, "requestMotionPhotoId mMotionPhotoComposer is null"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMotionPhotoFilePath(Ljava/lang/String;)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoCaptureIds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoCaptureIds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 167
    .local v2, "id":J
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoCaptureIds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 168
    const-string v1, "MotionPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMotionPhotoFilePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->setStorePath(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v2    # "id":J
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MotionPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMotionPhotoFilePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "MotionPhotoManager"

    const-string v4, "setMotionPhotoFilePath mMotionPhotoComposer is null"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMotionPhotoInfoListener(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->setOnInfoListener(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;)V

    .line 185
    :cond_0
    return-void
.end method

.method public setUseIntrinsicTimestamp(Z)V
    .locals 3
    .param p1, "useIntrinsicTimestamp"    # Z

    .prologue
    .line 193
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v1, :cond_0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    new-instance v2, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    invoke-direct {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;-><init>()V

    .line 196
    invoke-virtual {v2, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setUseIntrinsicTimestamp(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->build()Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;

    move-result-object v2

    .line 195
    invoke-virtual {v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->setParameters(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startMotionPhotoComposer(Lcom/samsung/android/camera/core/SemCamera$Parameters;I)V
    .locals 10
    .param p1, "param"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;
    .param p2, "effectProcessorMode"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 211
    iget-object v6, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v6, :cond_1

    .line 212
    const-string v6, "MotionPhotoManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startMotionPhotoComposer : effectProcessorMode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput-boolean v5, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mIsMotionPhotoStarted:Z

    .line 215
    const/4 v6, 0x6

    if-ne p2, v6, :cond_2

    move v2, v4

    .line 216
    .local v2, "isUseIntrinsicTimestamp":Z
    :goto_0
    if-nez p2, :cond_3

    :goto_1
    iput-boolean v4, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mIsEffectRecording:Z

    .line 218
    new-array v1, v9, [I

    .line 219
    .local v1, "fpsRange":[I
    invoke-virtual {p1, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewFpsRange([I)V

    .line 222
    invoke-virtual {p1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewSize()Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v3

    .line 223
    .local v3, "size":Lcom/samsung/android/camera/core/SemCamera$Size;
    iget-boolean v4, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mIsEffectRecording:Z

    if-eqz v4, :cond_0

    .line 224
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/util/MotionPhotoManager;->getEffectProcessorSurfaceSize(Lcom/samsung/android/camera/core/SemCamera$Size;)V

    .line 228
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    new-instance v5, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    invoke-direct {v5}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;-><init>()V

    iget v6, v3, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    iget v7, v3, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    .line 229
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setPreviewSize(II)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v5

    .line 230
    invoke-virtual {v5, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setPreviewFpsRange([I)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v5

    const/4 v6, 0x2

    .line 231
    invoke-virtual {v5, v6}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setFpsFactor(I)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mIsEffectRecording:Z

    .line 232
    invoke-virtual {v5, v6}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setEffectRecording(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v5

    .line 233
    invoke-virtual {v5, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setUseIntrinsicTimestamp(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v5

    .line 234
    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->build()Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;

    move-result-object v5

    .line 228
    invoke-virtual {v4, v5}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->start(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v1    # "fpsRange":[I
    .end local v2    # "isUseIntrinsicTimestamp":Z
    .end local v3    # "size":Lcom/samsung/android/camera/core/SemCamera$Size;
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v5

    .line 215
    goto :goto_0

    .restart local v2    # "isUseIntrinsicTimestamp":Z
    :cond_3
    move v4, v5

    .line 216
    goto :goto_1

    .line 235
    .restart local v1    # "fpsRange":[I
    .restart local v3    # "size":Lcom/samsung/android/camera/core/SemCamera$Size;
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MotionPhotoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startMotionPhotoComposer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public stopMotionPhotoComposer()V
    .locals 4

    .prologue
    .line 245
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mIsMotionPhotoStarted:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 246
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mIsMotionPhotoStarted:Z

    .line 247
    const-string v1, "MotionPhotoManager"

    const-string v2, "stopMotionPhotoComposer"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/MotionPhotoManager;->mMotionPhotoCaptureIds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 255
    :cond_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MotionPhotoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionPhotoComposer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
