.class public Lcom/sec/android/app/camera/menu/SimpleBaseMenu;
.super Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
.source "SimpleBaseMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;


# static fields
.field private static final COVER_CAMERA_CLOSE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SimpleBaseMenu"


# instance fields
.field private BASEMENU_GROUP_HEIGHT:I

.field private BASEMENU_GROUP_ICON_GAP:I

.field private mCurrentMultiWindowMode:I

.field private mNavigatorHeight:I

.field private mRecordingButtonDiameter:I

.field private mRecordingButtonWidth:I

.field private mRecordingButtonX:I

.field private mRecordingButtonY:I

.field private mScreenHeightForInit:I

.field private mScreenOrientation:I

.field private mScreenWidthForInit:I

.field private mShutterButtonExpandArea:I

.field private mShutterButtonProgressWidth:I

.field private mShutterButtonWidth:I

.field private mShutterButtonX:I

.field private mShutterButtonY:I

.field private mSimpleQuickSettingHeight:I

.field private mSimpleQuickSettingWidth:I

.field private mSimpleQuickSettingX:I

.field private mSimpleQuickSettingY:I

.field private mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

.field private mThumbnailButtonWidth:I

.field private mThumbnailButtonX:I

.field private mThumbnailButtonY:I


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 5
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p7, "zOrder"    # I

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 58
    iput v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonExpandArea:I

    .line 71
    iput v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCurrentMultiWindowMode:I

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenWidthForInit:I

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenHeightForInit:I

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCurrentMultiWindowMode:I

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 91
    iget v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenWidthForInit:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenHeightForInit:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->init(III)V

    .line 92
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->resetBaseLayout()V

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeBaseMenuVIAnimation()V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->setPreviewTouchEnabled(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->setAttachMode(Z)V

    .line 101
    new-instance v0, Lcom/sec/android/app/camera/provider/CameraGestureManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/provider/CameraGestureManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    .line 105
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimpleBaseMenu-loading**added["

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

    .line 106
    const-string v0, "Add View"

    invoke-static {v0, v4}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 107
    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenWidthForInit:I

    .line 84
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenHeightForInit:I

    .line 85
    const-string v0, "SimpleBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimpleBaseMenu : Invalid MultiWindow Size!! set size temporary. w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenWidthForInit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenHeightForInit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private init(III)V
    .locals 7
    .param p1, "orientation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const v6, 0x7f0a02ae

    const v5, 0x7f0a02a2

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 601
    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mNavigatorHeight:I

    .line 602
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 603
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getNavigatorHeightPixels()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mNavigatorHeight:I

    .line 605
    :cond_0
    const v1, 0x7f0a0013

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_HEIGHT:I

    .line 606
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 607
    const v1, 0x7f0a02ac

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    .line 612
    :goto_0
    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleQuickSettingX:I

    .line 613
    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleQuickSettingY:I

    .line 614
    const v1, 0x7f0a02a4

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonWidth:I

    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, "baseMenuWeight":I
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_HEIGHT:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 619
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    if-ne v1, v4, :cond_4

    .line 620
    :cond_1
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleQuickSettingWidth:I

    .line 621
    iput p3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleQuickSettingHeight:I

    .line 622
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonWidth:I

    sub-int v1, p2, v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonX:I

    .line 623
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonWidth:I

    sub-int v1, p3, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonY:I

    .line 631
    :goto_1
    const v1, 0x7f0a01f1

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonExpandArea:I

    .line 632
    const v1, 0x7f0a02a5

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonProgressWidth:I

    .line 633
    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonWidth:I

    .line 634
    const v1, 0x7f0a02a1

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonDiameter:I

    .line 635
    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonWidth:I

    .line 637
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    if-ne v1, v4, :cond_5

    .line 638
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonX:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonX:I

    .line 639
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonY:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonY:I

    .line 640
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonY:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonY:I

    .line 641
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonX:I

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonX:I

    .line 649
    :goto_2
    const-string v1, "SimpleBaseMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init : orientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", shutterButton ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), recordingButton ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), thumbnailButton ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void

    .line 609
    .end local v0    # "baseMenuWeight":I
    :cond_3
    const v1, 0x7f0a02ab

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    goto/16 :goto_0

    .line 625
    .restart local v0    # "baseMenuWeight":I
    :cond_4
    iput p2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleQuickSettingWidth:I

    .line 626
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleQuickSettingHeight:I

    .line 627
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonWidth:I

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonX:I

    .line 628
    sub-int v1, p3, v0

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mNavigatorHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonY:I

    goto/16 :goto_1

    .line 643
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonX:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonX:I

    .line 644
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonY:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonWidth:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonY:I

    .line 645
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonX:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonX:I

    .line 646
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonY:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonWidth:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonY:I

    goto/16 :goto_2
.end method

.method private makeRecordingButton()Lcom/samsung/android/glview/GLButton;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 656
    const v6, 0x7f02010d

    .line 658
    .local v6, "recNormalRsc":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v1

    if-ne v1, v10, :cond_0

    .line 659
    const v6, 0x7f02010e

    .line 661
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonWidth:I

    int-to-float v5, v5

    move v8, v7

    move v9, v7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    .line 662
    .local v0, "recordingButton":Lcom/samsung/android/glview/GLButton;
    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 663
    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 664
    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 665
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0901f9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 667
    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 668
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonDiameter:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 669
    return-object v0
.end method

.method private makeShutterButton()Lcom/samsung/android/glview/GLButton;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 673
    const v6, 0x7f0200fd

    .line 674
    .local v6, "shutterNormalRsc":I
    const v7, 0x7f0200ff

    .line 675
    .local v7, "shutterPressedRsc":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v1

    if-ne v1, v10, :cond_0

    .line 676
    const v6, 0x7f0200fe

    .line 677
    const v7, 0x7f020100

    .line 679
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonX:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonExpandArea:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonY:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonExpandArea:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonWidth:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonExpandArea:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonWidth:I

    iget v9, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonExpandArea:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    int-to-float v5, v5

    move v9, v8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    .line 682
    .local v0, "shutterButton":Lcom/samsung/android/glview/GLButton;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 683
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonExpandArea:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonExpandArea:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 684
    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 685
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090229

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 687
    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 688
    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 689
    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 690
    return-object v0
.end method

.method private makeShutterProgressWheel()Lcom/sec/android/app/camera/widget/gl/ProgressWheel;
    .locals 13

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v4, 0x40000000    # 2.0f

    .line 695
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonX:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonExpandArea:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonWidth:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonExpandArea:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-int v2, v2

    add-int v7, v1, v2

    .line 696
    .local v7, "centerX":I
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonY:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonExpandArea:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonWidth:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonExpandArea:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-int v2, v2

    add-int v8, v1, v2

    .line 697
    .local v8, "centerY":I
    iget v10, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonProgressWidth:I

    .line 698
    .local v10, "width":I
    iget v9, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonProgressWidth:I

    .line 700
    .local v9, "height":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 701
    int-to-float v1, v10

    mul-float/2addr v1, v5

    float-to-int v10, v1

    .line 702
    int-to-float v1, v9

    mul-float/2addr v1, v5

    float-to-int v9, v1

    .line 705
    :cond_0
    int-to-float v1, v10

    div-float/2addr v1, v4

    float-to-int v1, v1

    sub-int v11, v7, v1

    .line 706
    .local v11, "x":I
    int-to-float v1, v9

    div-float/2addr v1, v4

    float-to-int v1, v1

    sub-int v12, v8, v1

    .line 708
    .local v12, "y":I
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    int-to-float v2, v11

    int-to-float v3, v12

    int-to-float v4, v10

    int-to-float v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    .line 710
    .local v0, "shutterProgressWheel":Lcom/sec/android/app/camera/widget/gl/ProgressWheel;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    .line 711
    return-object v0
.end method

.method private makeThumbnailButton()Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;
    .locals 4

    .prologue
    .line 715
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonY:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    .line 716
    .local v0, "thumbnailButton":Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;
    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setTag(I)V

    .line 717
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 718
    return-object v0
.end method

.method private relocateGUI(III)V
    .locals 6
    .param p1, "orientation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const v5, 0x7f0a02ae

    .line 722
    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 723
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenWidthForInit:I

    sub-int v1, v2, p2

    .line 724
    .local v1, "gapWidth":I
    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenHeightForInit:I

    sub-int/2addr v2, p3

    div-int/lit8 v0, v2, 0x2

    .line 725
    .local v0, "gapHeight":I
    const-string v2, "SimpleBaseMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relocateGUI : orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", shutterButton ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") will be ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonX:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonY:I

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_1

    .line 728
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 730
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    if-eqz v2, :cond_2

    .line 731
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->moveBaseLayoutAbsolute(FF)V

    .line 733
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_3

    .line 734
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 736
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v2, :cond_4

    .line 737
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FF)V

    .line 739
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    if-eqz v2, :cond_5

    .line 740
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3, p3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setSideQuickSettingSize(II)V

    .line 742
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    if-eqz v2, :cond_6

    .line 743
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->onLayoutChanged(III)V

    .line 770
    :cond_6
    :goto_0
    return-void

    .line 746
    .end local v0    # "gapHeight":I
    .end local v1    # "gapWidth":I
    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenWidthForInit:I

    sub-int/2addr v2, p2

    div-int/lit8 v1, v2, 0x2

    .line 747
    .restart local v1    # "gapWidth":I
    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenHeightForInit:I

    sub-int v0, v2, p3

    .line 748
    .restart local v0    # "gapHeight":I
    const-string v2, "SimpleBaseMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relocateGUI : orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", shutterButton ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") will be ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonY:I

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_8

    .line 752
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 754
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    if-eqz v2, :cond_9

    .line 755
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->moveBaseLayoutAbsolute(FF)V

    .line 757
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_a

    .line 758
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 760
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v2, :cond_b

    .line 761
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FF)V

    .line 763
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    if-eqz v2, :cond_c

    .line 764
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, p2, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setSideQuickSettingSize(II)V

    .line 766
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    if-eqz v2, :cond_6

    .line 767
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->onLayoutChanged(III)V

    goto/16 :goto_0
.end method

.method private resetBaseLayout()V
    .locals 14

    .prologue
    .line 773
    const/4 v11, 0x0

    .line 774
    .local v11, "shutterButtonVisibility":I
    const/4 v12, 0x4

    .line 775
    .local v12, "shutterProgressVisibility":I
    const/4 v9, 0x0

    .line 776
    .local v9, "recordingButtonVisibility":I
    const/4 v13, 0x0

    .line 777
    .local v13, "thumbnailButtonVisibility":I
    const/4 v7, 0x0

    .line 779
    .local v7, "overlayLayouVisibility":I
    const/4 v10, 0x0

    .line 780
    .local v10, "shutterButtonDimmed":Z
    const/4 v8, 0x0

    .line 783
    .local v8, "recordingButtonDimmed":Z
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getVisibility()Z

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getPreviewOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 786
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getShootingModeOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getToastViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->clear()V

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setAfListener(Lcom/sec/android/app/camera/interfaces/CameraContext$AfListener;)V

    .line 792
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    .line 793
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getPreviewOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getShootingModeOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 795
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getToastViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setAfListener(Lcom/sec/android/app/camera/interfaces/CameraContext$AfListener;)V

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 806
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    if-nez v0, :cond_b

    .line 807
    new-instance v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleQuickSettingX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleQuickSettingY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleQuickSettingWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleQuickSettingHeight:I

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;IFFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setRotatable(Z)V

    .line 813
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    if-eqz v0, :cond_2

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Indicators;->clear()V

    .line 819
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    .line 821
    :cond_2
    new-instance v0, Lcom/sec/android/app/camera/menu/Indicators;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/menu/Indicators;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/Indicators;->setRotatable(Z)V

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(I)V

    .line 824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableIndicators:Z

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    if-eqz v0, :cond_3

    .line 829
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getVisibility()I

    move-result v12

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->clear()V

    .line 832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    .line 834
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeShutterProgressWheel()Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    if-eqz v0, :cond_4

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(IZ)V

    .line 837
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 841
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_5

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v11

    .line 843
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v10

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 846
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    .line 848
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeShutterButton()Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_6

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 856
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_7

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v9

    .line 858
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v8

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    .line 863
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeRecordingButton()Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    .line 864
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_8

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 866
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 871
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_9

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->getVisibility()I

    move-result v13

    .line 873
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->clear()V

    .line 875
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    .line 877
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeThumbnailButton()Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    .line 878
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_a

    .line 879
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 880
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 881
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateThumbnail()V

    .line 883
    :cond_a
    return-void

    .line 810
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleQuickSettingWidth:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleQuickSettingHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->resizeSideQuickSetting(III)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    .line 117
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->clear()V

    .line 118
    return-void
.end method

.method public disableView(I)V
    .locals 6
    .param p1, "viewValue"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 122
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_0

    .line 123
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShutterButton:Z

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 126
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 127
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableRecordingButton:Z

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 130
    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v5, :cond_2

    .line 131
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableThumbnailButton:Z

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 133
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->unregisterEAM(I)V

    .line 135
    :cond_2
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 136
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableSideQuickSetting:Z

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setVisibility(I)V

    .line 139
    :cond_3
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_4

    .line 140
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShootingModeView:Z

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 143
    :cond_4
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_5

    .line 144
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableOverlayLayout:Z

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 148
    return-void
.end method

.method public enableView(I)V
    .locals 5
    .param p1, "viewValue"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_0

    .line 153
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShutterButton:Z

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 156
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 157
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableRecordingButton:Z

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 160
    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v4, :cond_2

    .line 161
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableThumbnailButton:Z

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 163
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->registerEAM(I)V

    .line 165
    :cond_2
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 166
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableSideQuickSetting:Z

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setVisibility(I)V

    .line 169
    :cond_3
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_4

    .line 170
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShootingModeView:Z

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 173
    :cond_4
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_5

    .line 174
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableOverlayLayout:Z

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 178
    return-void
.end method

.method protected getAnchor(I)Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 531
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndicators()Lcom/sec/android/app/camera/menu/Indicators;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    return-object v0
.end method

.method public getOverlayHelp()Lcom/sec/android/app/camera/interfaces/OverlayHelpController;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideCaptureProgressText()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public hideOneHandZoomGuide()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public hideView(I)V
    .locals 7
    .param p1, "bitMarker"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 201
    const-string v0, "SimpleBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 206
    :cond_0
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setVisibility(I)V

    .line 208
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->unregisterEAM(I)V

    .line 210
    :cond_1
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShootingModeView:Z

    if-nez v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 213
    :cond_2
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 216
    :cond_3
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 219
    :cond_4
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v6, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_5

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 221
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->unregisterEAM(I)V

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 224
    return-void
.end method

.method public isOneHandZoomShowing()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method protected makeBaseMenuVIAnimation()V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 233
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v2, :cond_0

    .line 234
    const-string v1, "SimpleBaseMenu"

    const-string v2, "CameraContext is null."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_0
    return v0

    .line 238
    :cond_0
    if-nez p1, :cond_1

    .line 239
    const-string v1, "SimpleBaseMenu"

    const-string v2, "View is null."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->isShutterProgressWheelVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    :cond_2
    const-string v1, "SimpleBaseMenu"

    const-string v2, "Capture is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 249
    const-string v1, "SimpleBaseMenu"

    const-string v2, "Preview has not started yet."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 254
    :cond_5
    const-string v1, "SimpleBaseMenu"

    const-string v2, "Recording is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchingCamera()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 259
    :cond_7
    const-string v1, "SimpleBaseMenu"

    const-string v2, "Switch camera is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_8
    const-string v2, "SimpleBaseMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    .line 277
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleCoverCameraClosed()V

    move v0, v1

    .line 278
    goto/16 :goto_0

    .line 267
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForPictureSavingThread()V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->isThumbnailExist()Z

    move-result v0

    if-nez v0, :cond_9

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showNoImagePopup()V

    :goto_1
    move v0, v1

    .line 275
    goto/16 :goto_0

    .line 272
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1d

    const/16 v3, 0x1c21

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v2, "quickview"

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onLaunchGallery(Ljava/lang/String;)Z

    goto :goto_1

    .line 265
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public onFlingDirection(II)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 286
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->isPressed(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->isShutterProgressWheelVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleTouchCancelled()V

    .line 296
    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 297
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v0

    const/16 v2, 0x1c3f

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onSwitchCameraSelect(I)Z

    move v0, v1

    .line 301
    goto :goto_0
.end method

.method protected onHide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 540
    const-string v0, "SimpleBaseMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setAfListener(Lcom/sec/android/app/camera/interfaces/CameraContext$AfListener;)V

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 547
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->isVisible()I

    move-result v0

    if-nez v0, :cond_1

    .line 551
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->endShutterProgressWheel()V

    .line 553
    :cond_1
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 558
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 563
    return-void
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1b

    const/4 v0, 0x1

    .line 308
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_5

    .line 309
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 310
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 326
    :cond_1
    :goto_0
    return v0

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 320
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_5

    .line 321
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 326
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1b

    const/4 v0, 0x1

    .line 331
    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_5

    .line 332
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 333
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    .line 334
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v1, :cond_2

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 347
    :cond_1
    :goto_0
    return v0

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 341
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_5

    .line 342
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 347
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayoutChanged(III)V
    .locals 4
    .param p1, "orientation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x1

    .line 353
    const-string v0, "SimpleBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutChanged : orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 355
    if-lt p2, v3, :cond_0

    if-ge p3, v3, :cond_1

    .line 356
    :cond_0
    const-string v0, "SimpleBaseMenu"

    const-string v1, "size error!!"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 365
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    if-eq v0, p1, :cond_5

    .line 366
    const-string v0, "SimpleBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutChanged : orientation is changed!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iput p1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenOrientation:I

    .line 368
    iput p2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenWidthForInit:I

    .line 369
    iput p3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenHeightForInit:I

    .line 370
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->init(III)V

    .line 371
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->resetBaseLayout()V

    .line 372
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeBaseMenuVIAnimation()V

    .line 388
    :cond_4
    :goto_0
    return-void

    .line 375
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCurrentMultiWindowMode:I

    if-eq v0, v1, :cond_6

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCurrentMultiWindowMode:I

    .line 377
    iput p2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenWidthForInit:I

    .line 378
    iput p3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mScreenHeightForInit:I

    .line 379
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->init(III)V

    .line 380
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->resetBaseLayout()V

    .line 381
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeBaseMenuVIAnimation()V

    goto :goto_0

    .line 383
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->relocateGUI(III)V

    .line 384
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeBaseMenuVIAnimation()V

    goto :goto_0
.end method

.method public onScrollDirection(II)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->onFlingDirection(II)Z

    move-result v0

    return v0
.end method

.method protected onShow()V
    .locals 3

    .prologue
    .line 567
    const-string v0, "SimpleBaseMenu"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setAfListener(Lcom/sec/android/app/camera/interfaces/CameraContext$AfListener;)V

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->registerGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 578
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-nez v0, :cond_1

    .line 580
    new-instance v0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 583
    :cond_1
    return-void

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 588
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 593
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x82

    const/16 v4, 0x1b

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 397
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->collapseMenu()V

    .line 399
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 401
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, p2}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 410
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 411
    goto :goto_0

    .line 413
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 414
    goto :goto_0

    .line 416
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    move v0, v1

    .line 417
    goto :goto_0

    .line 422
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 427
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 428
    goto :goto_0

    .line 430
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 431
    goto :goto_0

    .line 433
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    move v0, v1

    .line 434
    goto :goto_0

    .line 399
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x41 -> :sswitch_1
    .end sparse-switch

    .line 408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 425
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 445
    const-string v0, "SimpleBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-nez v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    if-eqz p1, :cond_3

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerItem(Landroid/content/BroadcastReceiver;I)V

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerItem(Landroid/content/BroadcastReceiver;I)V

    goto :goto_0

    .line 458
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    goto :goto_0
.end method

.method public removeSideQuickSettingItems()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->clearSideQuickSetting()V

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideSideQuickSettingToast()V

    .line 468
    return-void
.end method

.method public setBaseMenuAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 473
    return-void
.end method

.method public setCapturingProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 479
    return-void
.end method

.method protected declared-synchronized setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 1
    .param p1, "shootingModeViewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p2, "shootingModeControllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    monitor-exit p0

    return-void

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs setSideQuickSettingItems([I)V
    .locals 1
    .param p1, "commandIds"    # [I

    .prologue
    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->updateSideQuickSetting([I)V

    .line 484
    return-void
.end method

.method public showCaptureProgressText()V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method public showOneHandZoomGuide()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public showView(I)V
    .locals 5
    .param p1, "bitMarker"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 497
    const-string v0, "SimpleBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 501
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v4, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 510
    :cond_2
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_5

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 512
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 514
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 516
    :cond_5
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_6

    .line 517
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->showThumbnailButton()V

    .line 519
    :cond_6
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_7

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setVisibility(I)V

    .line 521
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->registerEAM(I)V

    .line 523
    :cond_7
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_8

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 526
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 527
    return-void
.end method
