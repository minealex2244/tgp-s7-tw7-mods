.class public Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;
.super Ljava/lang/Object;
.source "ShootingModeProviderImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PrepareSetShootingModeListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PrepareStartingPreviewListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$TimerEventListener;


# static fields
.field private static final STATE_ACTIVATED:I = 0x2

.field private static final STATE_ACTIVATING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_INACTIVATING:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "ShootingModeProvider"


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

.field private mCurrentShootingModeId:I

.field private mCurrentShootingModeState:I

.field private mIsSingleCapturing:Z

.field private mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

.field private mShootingModeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/interfaces/ShootingMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 3
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 51
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 53
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    .line 55
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    .line 56
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    .line 58
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .line 61
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 62
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 63
    return-void
.end method

.method private clearInactiveShootingMode()V
    .locals 6

    .prologue
    .line 346
    const-string v3, "ShootingModeProvider"

    const-string v4, "clearInactiveShootingMode"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 348
    .local v2, "shootingModeListClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/interfaces/ShootingMode;>;"
    const/4 v1, 0x0

    .line 349
    .local v1, "key":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 350
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 351
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    if-eq v3, v4, :cond_0

    .line 352
    const-string v3, "ShootingModeProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearing shooting mode class - id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 349
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    return-void
.end method

.method private clearRecordingController()V
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->isRecordingMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .line 362
    :cond_0
    return-void
.end method

.method private isRecordingMode(I)Z
    .locals 1
    .param p1, "shootingModeId"    # I

    .prologue
    .line 372
    sparse-switch p1, :sswitch_data_0

    .line 383
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 381
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 372
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3b -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x45 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4b -> :sswitch_0
    .end sparse-switch
.end method

.method private loadRecordingController(I)V
    .locals 3
    .param p1, "shootingModeId"    # I

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->isRecordingMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    .line 391
    :cond_0
    return-void
.end method

.method private loadShootingMode(I)V
    .locals 4
    .param p1, "shootingModeId"    # I

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->loadRecordingController(I)V

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    packed-switch p1, :pswitch_data_0

    .line 499
    :pswitch_0
    const-string v1, "ShootingModeProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong shooting mode id, Failed! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :goto_0
    return-void

    .line 403
    :pswitch_1
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/AnimatedGif;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 502
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    goto :goto_0

    .line 406
    :pswitch_2
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Antifog;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Antifog;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 407
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 409
    :pswitch_3
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Aqua;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Aqua;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 410
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 412
    :pswitch_4
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Auto;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Auto;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 413
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 415
    :pswitch_5
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Beauty;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Beauty;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 416
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 418
    :pswitch_6
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/BurstPanorama;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 419
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 421
    :pswitch_7
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Continuous;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Continuous;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 422
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 424
    :pswitch_8
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ContinuousLite;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ContinuousLite;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 425
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 427
    :pswitch_9
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Dual;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Dual;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    .line 428
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 430
    :pswitch_a
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/TagShot;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 431
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 433
    :pswitch_b
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/FastMotion;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/FastMotion;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    .line 434
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 436
    :pswitch_c
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Food;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Food;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 437
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto :goto_1

    .line 439
    :pswitch_d
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/HyperMotion;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/HyperMotion;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    .line 440
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 442
    :pswitch_e
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 443
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 445
    :pswitch_f
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Night;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Night;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 446
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 448
    :pswitch_10
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/NightScene;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/NightScene;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 449
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 451
    :pswitch_11
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Pro;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    .line 452
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 454
    :pswitch_12
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ProLite;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    .line 455
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 457
    :pswitch_13
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RearSelfie;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/RearSelfie;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 458
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 460
    :pswitch_14
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Recording;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Recording;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    .line 461
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 463
    :pswitch_15
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RichTone;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/RichTone;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 464
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 466
    :pswitch_16
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 467
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 469
    :pswitch_17
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Selfie;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Selfie;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 470
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 472
    :pswitch_18
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ShotAndMore;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 473
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 475
    :pswitch_19
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    .line 476
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 478
    :pswitch_1a
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SoundAndShot;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 479
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 481
    :pswitch_1b
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Sports;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Sports;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 482
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 484
    :pswitch_1c
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    .line 485
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 487
    :pswitch_1d
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 488
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 490
    :pswitch_1e
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 491
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 493
    :pswitch_1f
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 494
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 496
    :pswitch_20
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;

    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/MotionWideSelfie;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    .line 497
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    goto/16 :goto_1

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
        :pswitch_6
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_1b
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_18
        :pswitch_9
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_13
        :pswitch_0
        :pswitch_1
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_19
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_12
        :pswitch_0
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public isActivated()Z
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActivating()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 72
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 77
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->isChangingShootingModeDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isZoomDisabled()Z
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->isZoomDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v3, 0x2

    .line 101
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    if-ne v0, v3, :cond_0

    .line 102
    const-string v0, "ShootingModeProvider"

    const-string v1, "ShootingMode can not activate because it was already activated."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v0, "ShootingModeProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivate - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V

    .line 108
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    .line 109
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getScreenIdByShootingModeId(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 114
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 123
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 6
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 127
    const-string v0, "ShootingModeProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V

    .line 129
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onImageStoringCompleted()Z

    move-result v0

    goto :goto_0
.end method

.method public onInactivate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 142
    const-string v0, "ShootingModeProvider"

    const-string v1, "ShootingMode can not inactivate because it was not activated."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v0, "ShootingModeProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInactivate - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onInactivate()V

    .line 148
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    .line 149
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 154
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 162
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized onLowMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->clearInactiveShootingMode()V

    .line 171
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->clearRecordingController()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onMenuSelected(II)Z
    .locals 2
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 176
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onMenuSelected(II)Z

    move-result v0

    goto :goto_0
.end method

.method public onRecordKeyCanceled()Z
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onRecordKeyCanceled()Z

    move-result v0

    goto :goto_0
.end method

.method public onRecordKeyPressed()Z
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 195
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onRecordKeyPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onRecordKeyReleased()Z
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    .line 203
    :cond_0
    const-string v0, "ShootingModeProvider"

    const-string v1, "onRecordKeyReleased"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onRecordKeyReleased()Z

    move-result v0

    goto :goto_0
.end method

.method public onSetShootingModePrepared(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 209
    const-string v0, "ShootingModeProvider"

    const-string v1, "onSetShootingModePrepared"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 212
    const-string v0, "ShootingModeProvider"

    const-string v1, "Recording mode does not Engine.setShootingMode at this time."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setShootingMode(I)V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    .line 223
    :cond_0
    const-string v0, "ShootingModeProvider"

    const-string v1, "onShutterKeyLongPressed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterKeyLongPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onShutterKeyPressed()Z
    .locals 2

    .prologue
    .line 229
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterKeyPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 3
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    .line 237
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    .line 240
    :cond_0
    const-string v0, "ShootingModeProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterKeyReleased - capture method : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleCaptureCancelCompleted()V
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    .line 250
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onSingleCaptureEvent(I)V

    goto :goto_0
.end method

.method public onSingleCaptureCompleted()V
    .locals 2

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    .line 262
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onSingleCaptureEvent(I)V

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 274
    return-void
.end method

.method public onSingleCaptureRequestCancelled()V
    .locals 2

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    .line 282
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onSingleCaptureEvent(I)V

    goto :goto_0
.end method

.method public onSingleCaptureRequested()V
    .locals 2

    .prologue
    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    .line 294
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onSingleCaptureEvent(I)V

    goto :goto_0
.end method

.method public onSingleCaptureStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mIsSingleCapturing:Z

    .line 306
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    if-eq v0, v1, :cond_0

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onSingleCaptureEvent(I)V

    goto :goto_0
.end method

.method public onStartingPreviewPrepared(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 314
    const-string v0, "ShootingModeProvider"

    const-string v1, "onStartingPreviewPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V

    .line 316
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->clearInactiveShootingMode()V

    .line 321
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 325
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onTimerEvent(I)V

    goto :goto_0
.end method

.method public setShootingMode(I)V
    .locals 4
    .param p1, "shootingModeId"    # I

    .prologue
    .line 333
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    if-eq v1, p1, :cond_0

    .line 334
    const-string v1, "ShootingModeProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShootingMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/ShootingMode;

    .line 336
    .local v0, "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    if-nez v0, :cond_1

    .line 337
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->loadShootingMode(I)V

    .line 341
    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    .line 343
    .end local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    :cond_0
    return-void

    .line 339
    .restart local v0    # "newShootingMode":Lcom/sec/android/app/camera/interfaces/ShootingMode;
    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    goto :goto_0
.end method
