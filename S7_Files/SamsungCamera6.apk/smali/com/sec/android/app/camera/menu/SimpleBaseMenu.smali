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

.field private RECORDING_BUTTON_DIAMETER:I

.field private RECORDING_BUTTON_POS_X:I

.field private RECORDING_BUTTON_POS_Y:I

.field private RECORDING_BUTTON_WIDTH:I

.field private SCREEN_HEIGHT_FIRST:I

.field private SCREEN_ORIENTATION:I

.field private SCREEN_WIDTH_FIRST:I

.field private SHUTTER_BUTTON_EXPAND_AREA:I

.field private SHUTTER_BUTTON_POS_X:I

.field private SHUTTER_BUTTON_POS_Y:I

.field private SHUTTER_BUTTON_PROGRESS_WIDTH:I

.field private SHUTTER_BUTTON_WIDTH:I

.field private SIMPLE_QUICK_SETTING_HEIGHT:I

.field private SIMPLE_QUICK_SETTING_POS_X:I

.field private SIMPLE_QUICK_SETTING_POS_Y:I

.field private SIMPLE_QUICK_SETTING_WIDTH:I

.field private SNAPSHOT_BUTTON_WIDTH:I

.field private THUMBNAIL_BUTTON_POS_X:I

.field private THUMBNAIL_BUTTON_POS_Y:I

.field private THUMBNAIL_BUTTON_WIDTH:I

.field private mCurrentMultiWindowMode:I

.field private mShutterSnapshotRatio:F

.field private mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

.field private mSnapshotShutterRatio:F

.field private translationDelta:F


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p7, "zOrder"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 66
    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    .line 79
    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    .line 80
    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    .line 81
    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    .line 83
    iput v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCurrentMultiWindowMode:I

    .line 89
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    .line 90
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    .line 92
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    .line 98
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCurrentMultiWindowMode:I

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 102
    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->init(III)V

    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->resetBaseLayout()V

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeBaseMenuVIAnimation()V

    .line 106
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->setPreviewTouchEnabled(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/android/glview/GLViewGroup;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 110
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->setAttachMode(Z)V

    .line 112
    new-instance v1, Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/CameraGestureListener;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 114
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$1;-><init>(Lcom/sec/android/app/camera/menu/SimpleBaseMenu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->registerFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    .line 126
    const-string v1, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimpleBaseMenu-loading**added["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v1, "Add View"

    invoke-static {v1, v2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 128
    return-void

    .line 94
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    .line 95
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    .line 96
    const-string v3, "SimpleBaseMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SimpleBaseMenu : Invalid MultiWindow Size!! set size temporary. w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 110
    goto/16 :goto_1
.end method

.method private init(III)V
    .locals 7
    .param p1, "orientation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const v6, 0x7f0b02d1

    const v5, 0x7f0b01d1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 865
    const v1, 0x7f0b0265

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_HEIGHT:I

    .line 866
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 867
    const v1, 0x7f0b0263

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    .line 872
    :goto_0
    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_POS_X:I

    .line 873
    iput v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_POS_Y:I

    .line 874
    const v1, 0x7f0b01d8

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    .line 876
    const/4 v0, 0x0

    .line 877
    .local v0, "baseMenuWeight":I
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_HEIGHT:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 879
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    if-ne v1, v4, :cond_3

    .line 880
    :cond_0
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_WIDTH:I

    .line 881
    iput p3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_HEIGHT:I

    .line 882
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sub-int v1, p2, v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    .line 883
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sub-int v1, p3, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    .line 891
    :goto_1
    const v1, 0x7f0b01d7

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    .line 892
    const v1, 0x7f0b0050

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:I

    .line 893
    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    .line 894
    const v1, 0x7f0b034e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_DIAMETER:I

    .line 895
    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_WIDTH:I

    .line 896
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    .line 897
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    .line 898
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    .line 900
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    if-ne v1, v4, :cond_4

    .line 901
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_X:I

    .line 902
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_Y:I

    .line 903
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    .line 904
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_X:I

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    .line 905
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    .line 914
    :goto_2
    const-string v1, "SimpleBaseMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init : orientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

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

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), recordingButton ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_X:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_Y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), thumbnailButton ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return-void

    .line 869
    .end local v0    # "baseMenuWeight":I
    :cond_2
    const v1, 0x7f0b005b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    goto/16 :goto_0

    .line 885
    .restart local v0    # "baseMenuWeight":I
    :cond_3
    iput p2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_WIDTH:I

    .line 886
    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_HEIGHT:I

    .line 887
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    .line 888
    sub-int v1, p3, v0

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    goto/16 :goto_1

    .line 907
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_X:I

    .line 908
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_Y:I

    .line 909
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->BASEMENU_GROUP_ICON_GAP:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    .line 910
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    .line 911
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    goto/16 :goto_2
.end method

.method private makeRecordingButton()Lcom/samsung/android/glview/GLButton;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 921
    const v6, 0x7f0200fa

    .line 923
    .local v6, "recNormalRsc":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v1

    if-ne v1, v10, :cond_0

    .line 924
    const v6, 0x7f0200fb

    .line 926
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    int-to-float v5, v5

    move v8, v7

    move v9, v7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    .line 927
    .local v0, "recordingButton":Lcom/samsung/android/glview/GLButton;
    if-nez v0, :cond_2

    .line 928
    const-string v1, "SimpleBaseMenu"

    const-string v2, "makeRecordingButton : fail to make button"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/4 v0, 0x0

    .line 942
    .end local v0    # "recordingButton":Lcom/samsung/android/glview/GLButton;
    :cond_1
    :goto_0
    return-object v0

    .line 932
    .restart local v0    # "recordingButton":Lcom/samsung/android/glview/GLButton;
    :cond_2
    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 933
    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 934
    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 935
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a01ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 937
    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 938
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_DIAMETER:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 939
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v1

    if-ne v1, v10, :cond_1

    .line 940
    :cond_3
    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method

.method private makeShutterButton()Lcom/samsung/android/glview/GLButton;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 946
    const v6, 0x7f0200eb

    .line 947
    .local v6, "shutterNormalRsc":I
    const v7, 0x7f0200ed

    .line 948
    .local v7, "shutterPressedRsc":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v1

    if-ne v1, v10, :cond_0

    .line 949
    const v6, 0x7f0200ec

    .line 950
    const v7, 0x7f0200ee

    .line 952
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v9, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    int-to-float v5, v5

    move v9, v8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    .line 955
    .local v0, "shutterButton":Lcom/samsung/android/glview/GLButton;
    if-nez v0, :cond_2

    .line 956
    const-string v1, "SimpleBaseMenu"

    const-string v2, "makeShutterButton : fail to make button"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v0, 0x0

    .line 971
    .end local v0    # "shutterButton":Lcom/samsung/android/glview/GLButton;
    :cond_1
    :goto_0
    return-object v0

    .line 960
    .restart local v0    # "shutterButton":Lcom/samsung/android/glview/GLButton;
    :cond_2
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 961
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 962
    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 963
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a021a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 964
    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 965
    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 966
    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 967
    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 968
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 969
    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method

.method private makeShutterProgressWheel()Lcom/sec/android/app/camera/widget/gl/ProgressWheel;
    .locals 13

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v4, 0x40000000    # 2.0f

    .line 976
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-int v2, v2

    add-int v7, v1, v2

    .line 977
    .local v7, "centerX":I
    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-int v2, v2

    add-int v8, v1, v2

    .line 978
    .local v8, "centerY":I
    iget v10, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:I

    .line 979
    .local v10, "width":I
    iget v9, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:I

    .line 981
    .local v9, "height":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 982
    int-to-float v1, v10

    mul-float/2addr v1, v5

    float-to-int v10, v1

    .line 983
    int-to-float v1, v9

    mul-float/2addr v1, v5

    float-to-int v9, v1

    .line 986
    :cond_0
    int-to-float v1, v10

    div-float/2addr v1, v4

    float-to-int v1, v1

    sub-int v11, v7, v1

    .line 987
    .local v11, "x":I
    int-to-float v1, v9

    div-float/2addr v1, v4

    float-to-int v1, v1

    sub-int v12, v8, v1

    .line 989
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

    .line 990
    .local v0, "shutterProgressWheel":Lcom/sec/android/app/camera/widget/gl/ProgressWheel;
    if-nez v0, :cond_1

    .line 991
    const-string v1, "SimpleBaseMenu"

    const-string v2, "makeShutterProgressWheel : fail to make button"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v0, 0x0

    .line 996
    .end local v0    # "shutterProgressWheel":Lcom/sec/android/app/camera/widget/gl/ProgressWheel;
    :goto_0
    return-object v0

    .line 995
    .restart local v0    # "shutterProgressWheel":Lcom/sec/android/app/camera/widget/gl/ProgressWheel;
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    goto :goto_0
.end method

.method private makeThumbnailButton()Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;
    .locals 4

    .prologue
    .line 1000
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    .line 1001
    .local v0, "thumbnailButton":Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;
    if-nez v0, :cond_0

    .line 1002
    const-string v1, "SimpleBaseMenu"

    const-string v2, "makeThumbnailButton : fail to make button"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v0, 0x0

    .line 1008
    .end local v0    # "thumbnailButton":Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;
    :goto_0
    return-object v0

    .line 1006
    .restart local v0    # "thumbnailButton":Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;
    :cond_0
    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setTag(I)V

    .line 1007
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    goto :goto_0
.end method

.method private relocateGUI(III)V
    .locals 6
    .param p1, "orientation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const v5, 0x7f0b02d1

    .line 1012
    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 1013
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    sub-int v1, v2, p2

    .line 1014
    .local v1, "gapWidth":I
    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    sub-int/2addr v2, p3

    div-int/lit8 v0, v2, 0x2

    .line 1015
    .local v0, "gapHeight":I
    const-string v2, "SimpleBaseMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relocateGUI : orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

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

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") will be ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_1

    .line 1018
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 1020
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    if-eqz v2, :cond_2

    .line 1021
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->moveBaseLayoutAbsolute(FF)V

    .line 1023
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_3

    .line 1024
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 1026
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v2, :cond_4

    .line 1027
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FF)V

    .line 1029
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    if-eqz v2, :cond_5

    .line 1030
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3, p3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setSideQuickSettingSize(II)V

    .line 1032
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    if-eqz v2, :cond_6

    .line 1033
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->onLayoutChanged(III)V

    .line 1060
    :cond_6
    :goto_0
    return-void

    .line 1036
    .end local v0    # "gapHeight":I
    .end local v1    # "gapWidth":I
    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    sub-int/2addr v2, p2

    div-int/lit8 v1, v2, 0x2

    .line 1037
    .restart local v1    # "gapWidth":I
    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    sub-int v0, v2, p3

    .line 1038
    .restart local v0    # "gapHeight":I
    const-string v2, "SimpleBaseMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relocateGUI : orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

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

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") will be ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_X:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_8

    .line 1042
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 1044
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    if-eqz v2, :cond_9

    .line 1045
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->moveBaseLayoutAbsolute(FF)V

    .line 1047
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_a

    .line 1048
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 1050
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v2, :cond_b

    .line 1051
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FF)V

    .line 1053
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    if-eqz v2, :cond_c

    .line 1054
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, p2, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setSideQuickSettingSize(II)V

    .line 1056
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    if-eqz v2, :cond_6

    .line 1057
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->onLayoutChanged(III)V

    goto/16 :goto_0
.end method

.method private resetBaseLayout()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 1063
    const/4 v7, 0x4

    .line 1064
    .local v7, "shutterProgressVisibility":I
    const/4 v8, 0x0

    .line 1066
    .local v8, "thumbnailButtonVisibility":I
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getPreviewOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1068
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getShootingModeOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getToastViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1070
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->clear()V

    .line 1071
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    .line 1072
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1079
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    if-eqz v0, :cond_2

    .line 1080
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1081
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/Indicators;->clear()V

    .line 1082
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    .line 1085
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    if-eqz v0, :cond_3

    .line 1086
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getVisibility()I

    move-result v7

    .line 1087
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->clear()V

    .line 1089
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    .line 1092
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_4

    .line 1093
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1094
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 1095
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    .line 1098
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_5

    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1100
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 1101
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    .line 1104
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_6

    .line 1105
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->getVisibility()I

    move-result v8

    .line 1106
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1107
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->clear()V

    .line 1108
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    .line 1111
    :cond_6
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    .line 1112
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    .line 1114
    new-instance v0, Lcom/sec/android/app/camera/menu/Indicators;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/menu/Indicators;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    .line 1115
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/menu/Indicators;->setRotatable(Z)V

    .line 1116
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(I)V

    .line 1117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableIndicators:Z

    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    if-nez v0, :cond_8

    .line 1120
    new-instance v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_POS_X:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_POS_Y:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;IFFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    .line 1121
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setRotatable(Z)V

    .line 1127
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeShutterProgressWheel()Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    .line 1128
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeShutterButton()Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    .line 1129
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeRecordingButton()Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    .line 1130
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeThumbnailButton()Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    .line 1131
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v8, v9}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 1133
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getPreviewOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1134
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getShootingModeOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1135
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getToastViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1136
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1137
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1138
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1139
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1140
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1142
    if-eq v7, v10, :cond_7

    .line 1143
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0, v7, v9}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(IZ)V

    .line 1145
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateThumbnail()V

    .line 1147
    return-void

    .line 1123
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1124
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SIMPLE_QUICK_SETTING_HEIGHT:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->resizeSideQuickSetting(III)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->clear()V

    .line 134
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->clear()V

    .line 138
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    .line 141
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 143
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->clear()V

    .line 144
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

    .line 148
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_0

    .line 149
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShutterButton:Z

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 152
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 153
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableRecordingButton:Z

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 156
    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v5, :cond_2

    .line 157
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableThumbnailButton:Z

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 159
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->unregisterEAM(I)V

    .line 161
    :cond_2
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 162
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableSideQuickSetting:Z

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setVisibility(I)V

    .line 165
    :cond_3
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_4

    .line 166
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShootingModeView:Z

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 171
    :cond_4
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_5

    .line 172
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableOverlayLayout:Z

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 176
    return-void
.end method

.method public enableView(I)V
    .locals 5
    .param p1, "viewValue"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 180
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_0

    .line 181
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShutterButton:Z

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 184
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 185
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableRecordingButton:Z

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 188
    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v4, :cond_2

    .line 189
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableThumbnailButton:Z

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 191
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->registerEAM(I)V

    .line 193
    :cond_2
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 194
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableSideQuickSetting:Z

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setVisibility(I)V

    .line 197
    :cond_3
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_4

    .line 198
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShootingModeView:Z

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 203
    :cond_4
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_5

    .line 204
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableOverlayLayout:Z

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 208
    return-void
.end method

.method protected getAnchor(I)Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 611
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndicators()Lcom/sec/android/app/camera/menu/Indicators;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    return-object v0
.end method

.method public getLastGestureDirection()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->getLastDirection()I

    move-result v0

    return v0
.end method

.method public getOverlayHelp()Lcom/sec/android/app/camera/interfaces/OverlayHelpController;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideCaptureProgressText()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public hideView(I)V
    .locals 7
    .param p1, "bitMarker"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 231
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

    .line 233
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 236
    :cond_0
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setVisibility(I)V

    .line 238
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->unregisterEAM(I)V

    .line 240
    :cond_1
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShootingModeView:Z

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 245
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingAnimation:Z

    if-eqz v0, :cond_4

    .line 246
    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingAnimation:Z

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->startAnimation()V

    .line 256
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->unregisterEAM(I)V

    .line 270
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 271
    return-void

    .line 258
    :cond_4
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v4, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_5

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 261
    :cond_5
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_6

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 264
    :cond_6
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v6, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v5}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 266
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->unregisterEAM(I)V

    goto :goto_0
.end method

.method protected makeBaseMenuVIAnimation()V
    .locals 22

    .prologue
    .line 617
    const/4 v2, 0x0

    .local v2, "fromShutterX":F
    const/4 v3, 0x0

    .local v3, "toShutterX":F
    const/4 v4, 0x0

    .local v4, "fromShutterY":F
    const/4 v5, 0x0

    .line 618
    .local v5, "toShutterY":F
    const/4 v15, 0x0

    .local v15, "fromRecordingX":F
    const/16 v18, 0x0

    .local v18, "toRecordingX":F
    const/16 v16, 0x0

    .local v16, "fromRecordingY":F
    const/16 v19, 0x0

    .line 619
    .local v19, "toRecordingY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    move/from16 v17, v0

    .line 621
    .local v17, "orientation":I
    if-eqz v17, :cond_0

    const/4 v6, 0x2

    move/from16 v0, v17

    if-ne v0, v6, :cond_a

    .line 622
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    neg-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    div-float v5, v6, v7

    .line 623
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    neg-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    div-float v19, v6, v7

    .line 629
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_1

    .line 630
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 632
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_2

    .line 633
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 635
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_3

    .line 636
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 638
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_4

    .line 639
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 641
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_5

    .line 642
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 644
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_6

    .line 645
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 648
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v6, :cond_7

    .line 649
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 650
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3ea8f5c3    # 0.33f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v12, v13, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v10, 0x23a

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v7, 0x190

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3ea8f5c3    # 0.33f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v12, 0x3ea8f5c3    # 0.33f

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v12, v13, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v12, 0x23a

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 657
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    new-instance v13, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v13, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v14, 0x23a

    move v6, v3

    move v7, v2

    move v8, v5

    move v9, v4

    invoke-static/range {v6 .. v14}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v7, 0x190

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3ea8f5c3    # 0.33f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v12, 0x3ea8f5c3    # 0.33f

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v12, v13, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v12, 0x23a

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 666
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v6, :cond_8

    .line 667
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    new-instance v13, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v13, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v14, 0x23a

    move v6, v15

    move/from16 v7, v18

    move/from16 v8, v16

    move/from16 v9, v19

    invoke-static/range {v6 .. v14}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v7, 0x23a

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3ea8f5c3    # 0.33f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v12, 0x3ea8f5c3    # 0.33f

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v12, v13, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v12, 0x23a

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 675
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    new-instance v13, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v13, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v14, 0x23a

    move/from16 v6, v18

    move v7, v15

    move/from16 v8, v19

    move/from16 v9, v16

    invoke-static/range {v6 .. v14}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v7, 0x23a

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3ea8f5c3    # 0.33f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v12, 0x3ea8f5c3    # 0.33f

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v12, v13, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v12, 0x23a

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 684
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v6, :cond_9

    .line 685
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 686
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v7, 0xc8

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3ea8f5c3    # 0.33f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v12, 0x3ea8f5c3    # 0.33f

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v12, v13, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v12, 0xc8

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 690
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 691
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v7, 0xc8

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3ea8f5c3    # 0.33f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v12, 0x3ea8f5c3    # 0.33f

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v11, v12, v13, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v12, 0xc8

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 695
    :cond_9
    return-void

    .line 625
    :cond_a
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    div-float v3, v6, v7

    .line 626
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    div-float v18, v6, v7

    goto/16 :goto_0
.end method

.method protected makeRecordingMenuVIAnimation()V
    .locals 20

    .prologue
    .line 699
    const/4 v1, 0x0

    .local v1, "fromBottomX":F
    const/4 v2, 0x0

    .local v2, "toBottomX":F
    const/4 v3, 0x0

    .local v3, "fromBottomY":F
    const/4 v4, 0x0

    .line 700
    .local v4, "toBottomY":F
    const/4 v14, 0x0

    .local v14, "fromMiddleX":F
    const/16 v17, 0x0

    .local v17, "toMiddleX":F
    const/4 v15, 0x0

    .local v15, "fromMiddleY":F
    const/16 v18, 0x0

    .line 701
    .local v18, "toMiddleY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    move/from16 v16, v0

    .line 703
    .local v16, "orientation":I
    if-eqz v16, :cond_0

    const/4 v5, 0x2

    move/from16 v0, v16

    if-ne v0, v5, :cond_4

    .line 704
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    div-float v4, v5, v6

    .line 705
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    div-float v18, v5, v6

    .line 711
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v5, :cond_1

    .line 712
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v6, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$2;-><init>(Lcom/sec/android/app/camera/menu/SimpleBaseMenu;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 727
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 728
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    new-instance v8, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v8}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    const/16 v9, 0x23a

    invoke-static/range {v1 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v6, 0x1d6

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v10, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v10}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    const/16 v11, 0x23a

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 736
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v5, :cond_2

    .line 737
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v6, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$3;-><init>(Lcom/sec/android/app/camera/menu/SimpleBaseMenu;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 752
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    new-instance v12, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v12}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    const/16 v13, 0x23a

    move v5, v14

    move/from16 v6, v17

    move v7, v15

    move/from16 v8, v18

    invoke-static/range {v5 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v6, 0x23a

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v10, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v10}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    const/16 v11, 0x23a

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 761
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v5, :cond_3

    .line 762
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v6, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$4;-><init>(Lcom/sec/android/app/camera/menu/SimpleBaseMenu;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 777
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 778
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v6, 0x12c

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v10, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v10}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    const/16 v11, 0x12c

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 782
    :cond_3
    return-void

    .line 707
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    neg-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterSnapshotRatio:F

    div-float v2, v5, v6

    .line 708
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->translationDelta:F

    neg-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSnapshotShutterRatio:F

    div-float v17, v5, v6

    goto/16 :goto_0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 275
    const-string v2, "SimpleBaseMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v2, :cond_0

    .line 277
    const-string v1, "SimpleBaseMenu"

    const-string v2, "CameraContext is null."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    return v0

    .line 281
    :cond_0
    if-nez p1, :cond_1

    .line 282
    const-string v1, "SimpleBaseMenu"

    const-string v2, "View is null."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->isShutterProgressWheelVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 287
    :cond_2
    const-string v1, "SimpleBaseMenu"

    const-string v2, "Capture is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 292
    const-string v1, "SimpleBaseMenu"

    const-string v2, "Preview has not started yet."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 297
    :cond_5
    const-string v1, "SimpleBaseMenu"

    const-string v2, "Recording is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
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

    .line 302
    :cond_7
    const-string v1, "SimpleBaseMenu"

    const-string v2, "Switch camera is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
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

    .line 308
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    .line 320
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleCoverCameraClosed()V

    move v0, v1

    .line 321
    goto/16 :goto_0

    .line 310
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForPictureSavingThread()V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->isThumbnailExist()Z

    move-result v0

    if-nez v0, :cond_9

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showNoImagePopup()V

    :goto_1
    move v0, v1

    .line 318
    goto/16 :goto_0

    .line 315
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1d

    const/16 v3, 0x1c21

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v2, "quickview"

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onLaunchGallery(Ljava/lang/String;)Z

    goto :goto_1

    .line 308
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

    .line 329
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

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 333
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeMSGToStopTouchAE()V

    .line 338
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 340
    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 341
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onSwitchCameraSelect()Z

    move v0, v1

    .line 345
    goto :goto_0
.end method

.method protected onHide()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 786
    const-string v0, "SimpleBaseMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 792
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 796
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->isReviewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->hideReview(Z)V

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTranslate()V

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->RECORDING_BUTTON_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 806
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTranslate()V

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->isVisible()I

    move-result v0

    if-nez v0, :cond_2

    .line 815
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->endShutterProgressWheel()V

    .line 817
    :cond_2
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 822
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 827
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

    .line 352
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_5

    .line 353
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 354
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v1, :cond_2

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 370
    :cond_1
    :goto_0
    return v0

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 364
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_5

    .line 365
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 370
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

    .line 375
    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_5

    .line 376
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    .line 378
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 391
    :cond_1
    :goto_0
    return v0

    .line 381
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 385
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_5

    .line 386
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 391
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

    .line 397
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

    .line 398
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

    .line 399
    if-lt p2, v3, :cond_0

    if-ge p3, v3, :cond_1

    .line 400
    :cond_0
    const-string v0, "SimpleBaseMenu"

    const-string v1, "size error!!"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 409
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    if-eq v0, p1, :cond_5

    .line 410
    const-string v0, "SimpleBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutChanged : orientation is changed!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

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

    .line 411
    iput p1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_ORIENTATION:I

    .line 412
    iput p2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    .line 413
    iput p3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    .line 414
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->init(III)V

    .line 415
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->resetBaseLayout()V

    .line 416
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeBaseMenuVIAnimation()V

    .line 432
    :cond_4
    :goto_0
    return-void

    .line 419
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCurrentMultiWindowMode:I

    if-eq v0, v1, :cond_6

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCurrentMultiWindowMode:I

    .line 421
    iput p2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_WIDTH_FIRST:I

    .line 422
    iput p3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->SCREEN_HEIGHT_FIRST:I

    .line 423
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->init(III)V

    .line 424
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->resetBaseLayout()V

    .line 425
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeBaseMenuVIAnimation()V

    goto :goto_0

    .line 427
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->relocateGUI(III)V

    .line 428
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeBaseMenuVIAnimation()V

    goto :goto_0
.end method

.method public onScrollDirection(II)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->onFlingDirection(II)Z

    move-result v0

    return v0
.end method

.method protected onShow()V
    .locals 3

    .prologue
    .line 831
    const-string v0, "SimpleBaseMenu"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 841
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

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-nez v0, :cond_1

    .line 843
    new-instance v0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 846
    :cond_1
    return-void

    .line 837
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

    .line 838
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 851
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 856
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

    .line 441
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->collapseMenu()V

    .line 443
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 483
    :cond_0
    :goto_0
    return v0

    .line 445
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, p2}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 454
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 455
    goto :goto_0

    .line 457
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 458
    goto :goto_0

    .line 460
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    move v0, v1

    .line 461
    goto :goto_0

    .line 466
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 471
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 472
    goto :goto_0

    .line 474
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 475
    goto :goto_0

    .line 477
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    move v0, v1

    .line 478
    goto :goto_0

    .line 443
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x41 -> :sswitch_1
    .end sparse-switch

    .line 452
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 469
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

    .line 489
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

    .line 490
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->isShareViaWorking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->hideReview(Z)V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-nez v0, :cond_2

    .line 509
    :cond_1
    :goto_0
    return-void

    .line 498
    :cond_2
    if-eqz p1, :cond_4

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerItem(Landroid/content/BroadcastReceiver;I)V

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerItem(Landroid/content/BroadcastReceiver;I)V

    goto :goto_0

    .line 506
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    goto :goto_0
.end method

.method public removeSideQuickSettingItems()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->clearSideQuickSetting()V

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideSideQuickSettingToast()V

    .line 516
    return-void
.end method

.method public setBaseMenuAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 521
    return-void
.end method

.method public setCapturingProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 527
    return-void
.end method

.method protected declared-synchronized setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 1
    .param p1, "shootingModeViewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p2, "shootingModeControllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 860
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 861
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->resetView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    monitor-exit p0

    return-void

    .line 860
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs setSideQuickSettingItems([I)V
    .locals 1
    .param p1, "commandIds"    # [I

    .prologue
    .line 531
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->updateSideQuickSetting([I)V

    .line 532
    return-void
.end method

.method public showCaptureProgressText()V
    .locals 0

    .prologue
    .line 537
    return-void
.end method

.method public showView(I)V
    .locals 5
    .param p1, "bitMarker"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 541
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

    .line 542
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 545
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v4, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 554
    :cond_2
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_5

    .line 555
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

    .line 556
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 558
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 560
    :cond_5
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_6

    .line 561
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->showThumbnailButton()V

    .line 563
    :cond_6
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_7

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mSimpleSideQuickSetting:Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setVisibility(I)V

    .line 565
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->registerEAM(I)V

    .line 567
    :cond_7
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_8

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_8

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 572
    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingAnimation:Z

    if-eqz v0, :cond_e

    .line 573
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingAnimation:Z

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_9

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 578
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_a

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 582
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_b

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 586
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->startAnimation()V

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_c

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 598
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_d

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 601
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_e

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 606
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 607
    return-void
.end method
