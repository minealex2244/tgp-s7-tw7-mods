.class Lcom/sec/android/app/camera/DimController$DimArray;
.super Ljava/lang/Object;
.source "DimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/DimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimArray"
.end annotation


# instance fields
.field private mDimArray:[Z

.field private final mMenuId:I

.field final synthetic this$0:Lcom/sec/android/app/camera/DimController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/DimController;I)V
    .locals 4
    .param p2, "menuId"    # I

    .prologue
    const/16 v3, 0x25

    .line 1381
    iput-object p1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1379
    new-array v1, v3, [Z

    iput-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mDimArray:[Z

    .line 1382
    iput p2, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mMenuId:I

    .line 1383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1384
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mDimArray:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 1383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1386
    :cond_0
    return-void
.end method


# virtual methods
.method public getArray()[Z
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mDimArray:[Z

    return-object v0
.end method

.method public getMenuId()I
    .locals 1

    .prologue
    .line 1393
    iget v0, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mMenuId:I

    return v0
.end method

.method public restoreUserSettingValues()V
    .locals 3

    .prologue
    .line 1397
    const/4 v0, 0x0

    .local v0, "key":I
    :goto_0
    const/16 v1, 0x25

    if-ge v0, v1, :cond_1

    .line 1398
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mDimArray:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 1397
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1401
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/app/camera/DimController;->restoreSettings(IZ)V
    invoke-static {v1, v0, v2}, Lcom/sec/android/app/camera/DimController;->access$000(Lcom/sec/android/app/camera/DimController;IZ)V

    goto :goto_1

    .line 1403
    :cond_1
    return-void
.end method

.method public varargs saveSettingMulti([I)V
    .locals 8
    .param p1, "indices"    # [I

    .prologue
    const/4 v7, 0x1

    .line 1406
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p1, v2

    .line 1408
    .local v1, "index":I
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    # getter for: Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/DimController;->access$100(Lcom/sec/android/app/camera/DimController;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    .line 1410
    .local v0, "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    if-eqz v0, :cond_0

    if-ltz v1, :cond_0

    const/16 v4, 0x25

    if-lt v1, v4, :cond_1

    .line 1530
    .end local v0    # "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .end local v1    # "index":I
    :cond_0
    return-void

    .line 1414
    .restart local v0    # "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .restart local v1    # "index":I
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1406
    :cond_2
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1416
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0xc

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto :goto_1

    .line 1419
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x8

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    .line 1420
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x5a

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto :goto_1

    .line 1423
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x12

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto :goto_1

    .line 1426
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/4 v5, 0x3

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto :goto_1

    .line 1429
    :pswitch_5
    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v4, :cond_2

    .line 1430
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0xaa

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto :goto_1

    .line 1434
    :pswitch_6
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/4 v5, 0x7

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto :goto_1

    .line 1437
    :pswitch_7
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x75

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto :goto_1

    .line 1440
    :pswitch_8
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 1441
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x7d

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto :goto_1

    .line 1445
    :pswitch_9
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/4 v5, 0x4

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1448
    :pswitch_a
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/4 v5, 0x6

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1451
    :pswitch_b
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x11

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1454
    :pswitch_c
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x2a

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1457
    :pswitch_d
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x16

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1460
    :pswitch_e
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x13

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1463
    :pswitch_f
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-nez v4, :cond_2

    .line 1464
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x17

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1468
    :pswitch_10
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0xbb9

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1471
    :pswitch_11
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0xbbf

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1474
    :pswitch_12
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 1475
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x26

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1479
    :pswitch_13
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x47

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1482
    :pswitch_14
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x15

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1485
    :pswitch_15
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x14

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1488
    :pswitch_16
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x138

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1491
    :pswitch_17
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x49

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1494
    :pswitch_18
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x13b

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1497
    :pswitch_19
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x13c

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQRCodeDetection()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1500
    :pswitch_1a
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 1501
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x73

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTapToTakePictures()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1505
    :pswitch_1b
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 1506
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x74

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1510
    :pswitch_1c
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x91

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1513
    :pswitch_1d
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-nez v4, :cond_2

    .line 1514
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0x33

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRearLensDistortionCorrection()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1518
    :pswitch_1e
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/4 v5, 0x5

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1521
    :pswitch_1f
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0xb5

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFloatingCameraButton()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1524
    :pswitch_20
    iget-object v4, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    const/16 v5, 0xbe

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v6

    # invokes: Lcom/sec/android/app/camera/DimController;->saveSetting(II)Z
    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/DimController;->access$200(Lcom/sec/android/app/camera/DimController;II)Z

    goto/16 :goto_1

    .line 1414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_10
        :pswitch_14
        :pswitch_12
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_8
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_7
        :pswitch_18
        :pswitch_1d
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_5
        :pswitch_c
        :pswitch_1c
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public set(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "dimmed"    # Z

    .prologue
    .line 1533
    if-ltz p1, :cond_0

    const/16 v0, 0x25

    if-lt p1, v0, :cond_1

    .line 1540
    :cond_0
    :goto_0
    return-void

    .line 1537
    :cond_1
    if-eqz p2, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mDimArray:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    goto :goto_0
.end method

.method public varargs setDimMulti([I)V
    .locals 4
    .param p1, "indices"    # [I

    .prologue
    .line 1543
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 1544
    .local v0, "index":I
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->set(IZ)V

    .line 1543
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1546
    .end local v0    # "index":I
    :cond_0
    return-void
.end method
