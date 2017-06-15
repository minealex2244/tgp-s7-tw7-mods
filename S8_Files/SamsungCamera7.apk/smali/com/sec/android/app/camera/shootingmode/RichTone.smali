.class public Lcom/sec/android/app/camera/shootingmode/RichTone;
.super Ljava/lang/Object;
.source "RichTone.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RichTone"


# instance fields
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 1
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 43
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 44
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 45
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 46
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 47
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 50
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 51
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 52
    return-void
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 71
    const-string v0, "RichTone"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSaveRichTone()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setRichTonePictureMode(I)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setRichToneMode(Z)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setRichToneListener(Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;)V

    .line 79
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 88
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 0
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 92
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 93
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 94
    return-void
.end method

.method public onHdrAllProgressCompleted(Z)V
    .locals 6
    .param p1, "arg0"    # Z

    .prologue
    const/16 v5, 0xbb

    const/16 v4, 0x1a

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 98
    const-string v0, "RichTone"

    const-string v1, "onHdrAllProgressCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->captureCompleted()V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 107
    :cond_2
    return-void
.end method

.method public onHdrResultCompleted(Z)V
    .locals 2
    .param p1, "arg0"    # Z

    .prologue
    .line 111
    const-string v0, "RichTone"

    const-string v1, "onHdrResultCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 113
    return-void
.end method

.method public onHdrResultProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    .line 118
    return-void
.end method

.method public onHdrResultStarted()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "RichTone"

    const-string v1, "onHdrResultStarted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    .line 128
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 4

    .prologue
    .line 132
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_ENABLE_POST_PROCESSED_THUMBNAIL_CALLBACK:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getOrientation()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 135
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onInactivate()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "RichTone"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setRichToneMode(Z)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setRichToneListener(Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;)V

    .line 146
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 1
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    const/16 v4, 0xbb

    const/16 v3, 0x1a

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 213
    const-string v0, "RichTone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 220
    :cond_1
    if-nez p1, :cond_2

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 229
    :cond_2
    :goto_0
    return-void

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RichTone;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0
.end method
