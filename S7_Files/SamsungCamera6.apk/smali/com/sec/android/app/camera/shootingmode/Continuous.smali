.class public Lcom/sec/android/app/camera/shootingmode/Continuous;
.super Ljava/lang/Object;
.source "Continuous.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "Continuous"


# instance fields
.field private final CAPTURE_PROGRESS_TEXT_HEIGHT:F

.field private final CAPTURE_PROGRESS_TEXT_SIZE:F

.field private final CAPTURE_PROGRESS_TEXT_WIDTH:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

.field private final SHUTTER_BUTTON_WIDTH:F

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureProgressText:Lcom/samsung/android/glview/GLText;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mIsBurstCapturing:Z

.field private mLowDeviceStorageToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const v0, 0x7f0b02ad

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->CAPTURE_PROGRESS_TEXT_WIDTH:F

    .line 48
    const v0, 0x7f0b02ab

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->CAPTURE_PROGRESS_TEXT_HEIGHT:F

    .line 49
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->SCREEN_WIDTH:I

    .line 50
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->SCREEN_HEIGHT:I

    .line 51
    const v0, 0x7f0b01d9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->SHUTTER_BUTTON_WIDTH:F

    .line 52
    const v0, 0x7f0b034e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    .line 53
    const v0, 0x7f0b02ac

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->CAPTURE_PROGRESS_TEXT_SIZE:F

    .line 55
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 56
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 57
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 58
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mLowDeviceStorageToast:Landroid/widget/Toast;

    .line 59
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mIsBurstCapturing:Z

    .line 63
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    .line 66
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 67
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 68
    return-void
.end method

.method private setCapturingProgress(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method private showLowDeviceStorageToast()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mLowDeviceStorageToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mLowDeviceStorageToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mLowDeviceStorageToast:Landroid/widget/Toast;

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a01d4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mLowDeviceStorageToast:Landroid/widget/Toast;

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 307
    :cond_2
    return-void
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mIsBurstCapturing:Z

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 87
    const-string v0, "Continuous"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v1, v3, [I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainCount(I)I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x191

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Continuous;->showLowDeviceStorageToast()V

    .line 98
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraQuality(I)V

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 103
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mIsBurstCapturing:Z

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 105
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public onBurstCaptureCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    const-string v0, "Continuous"

    const-string v1, "onBurstCaptureCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->terminateBurstCapture()V

    .line 118
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mIsBurstCapturing:Z

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 121
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Continuous;->setCapturingProgress(I)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x27e

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 126
    return-void
.end method

.method public onBurstCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 130
    const-string v0, "Continuous"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstCaptureProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-nez p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 135
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Continuous;->setCapturingProgress(I)V

    .line 136
    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "Continuous"

    const-string v1, "onBurstCaptureStarted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mIsBurstCapturing:Z

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x27e

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 146
    return-void
.end method

.method public onBurstCaptureStopped(I)Z
    .locals 1
    .param p1, "lastImageNum"    # I

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    const/4 v2, 0x1

    .line 155
    const-string v0, "Continuous"

    const-string v1, "onBurstCaptureThumbnailTaken"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1, p2, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    goto :goto_0
.end method

.method public onBurstStringProgress([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 170
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FIXED_BURST_RESOLUTION:Z

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "picture-size"

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BURST_RESOLUTION:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 9
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 177
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 179
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->CAPTURE_PROGRESS_TEXT_WIDTH:F

    sub-float v2, v0, v1

    .line 180
    .local v2, "CAPTURE_PROGRESS_TEXT_BOTTOM_POS_X":F
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->CAPTURE_PROGRESS_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    .line 183
    .local v3, "CAPTURE_PROGRESS_TEXT_BOTTOM_POS_Y":F
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->CAPTURE_PROGRESS_TEXT_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->CAPTURE_PROGRESS_TEXT_HEIGHT:F

    const-string v6, ""

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->CAPTURE_PROGRESS_TEXT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 184
    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    const v8, 0x7f0d0025

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x7f0d0023

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 194
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    const-string v0, "Continuous"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v4, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 210
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mIsBurstCapturing:Z

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelBurstCapture()V

    .line 212
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mIsBurstCapturing:Z

    .line 214
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraQuality(I)V

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 219
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 228
    const-string v0, "Continuous"

    const-string v1, "onKeyUp"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    packed-switch p1, :pswitch_data_0

    .line 237
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 231
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x1

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 258
    const-string v2, "Continuous"

    const-string v3, "onShutterKeyPressed"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->disableChangeBurstShootingMode()V

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterPressed()V

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainCount(I)I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Continuous;->showLowDeviceStorageToast()V

    .line 269
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 2
    .param p1, "captureMethod"    # I

    .prologue
    .line 274
    const-string v0, "Continuous"

    const-string v1, "onShutterKeyReleased"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Continuous;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterReleased(I)V

    .line 278
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 283
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 287
    return-void
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method
