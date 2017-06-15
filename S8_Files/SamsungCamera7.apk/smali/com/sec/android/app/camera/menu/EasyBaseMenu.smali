.class public Lcom/sec/android/app/camera/menu/EasyBaseMenu;
.super Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
.source "EasyBaseMenu.java"


# static fields
.field private static final COVER_CAMERA_CLOSE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "EasyBaseMenu"


# instance fields
.field private final BASEMENU_GROUP_ICON_GAP:F

.field private final BASEMENU_GROUP_WIDTH:F

.field private final COVER_CLOSE_BUTTON_POS_X:I

.field private final COVER_CLOSE_BUTTON_POS_Y:I

.field private final COVER_FLASH_BUTTON_ITEM_HEIGHT:I

.field private final COVER_FLASH_BUTTON_ITEM_WIDTH:I

.field private final COVER_FLASH_BUTTON_POS_X:I

.field private final COVER_FLASH_BUTTON_POS_Y:I

.field private final COVER_RECORD_BUTTON_POS_X:I

.field private final COVER_RECORD_BUTTON_POS_Y:I

.field private final COVER_SHUTTER_BUTTON_POS_X:I

.field private final COVER_SHUTTER_BUTTON_POS_Y:I

.field private final COVER_THUMBNAIL_BUTTON_POS_X:I

.field private final COVER_THUMBNAIL_BUTTON_POS_Y:I

.field private final EASY_QUICK_SETTING_HEIGHT:I

.field private final EASY_QUICK_SETTING_POS_X:I

.field private final EASY_QUICK_SETTING_POS_Y:I

.field private final EASY_QUICK_SETTING_WIDTH:I

.field private final PAGE_NAVIGATOR_GROUP_HEIGHT:F

.field private final RECORDING_BUTTON_DIAMETER:F

.field private final RECORDING_BUTTON_WIDTH:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_EXPAND_AREA:F

.field private final SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

.field private final SHUTTER_BUTTON_PROGRESS_WIDTH:F

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final THUMBNAIL_BUTTON_WIDTH:F

.field private mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

.field private mThumbnailButtonX:F

.field private mThumbnailButtonY:F


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 24
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p7, "zOrder"    # I

    .prologue
    .line 106
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 57
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    .line 58
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    .line 60
    const v2, 0x7f0a0012

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->BASEMENU_GROUP_WIDTH:F

    .line 61
    const v2, 0x7f0a0375

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    .line 62
    const v2, 0x7f0a0054

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    .line 63
    const v2, 0x7f0a02ab

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->BASEMENU_GROUP_ICON_GAP:F

    .line 64
    const v2, 0x7f0a02a4

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    .line 65
    const v2, 0x7f0a01f1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    .line 66
    const v2, 0x7f0a02a5

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:F

    .line 67
    const v2, 0x7f0a02a2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_WIDTH:F

    .line 68
    const v2, 0x7f0a02a1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_DIAMETER:F

    .line 69
    const v2, 0x7f0a02a8

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->THUMBNAIL_BUTTON_WIDTH:F

    .line 71
    const v2, 0x7f0a02a0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_POS_X:I

    .line 72
    const v2, 0x7f0a0055

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_POS_Y:I

    .line 73
    const v2, 0x7f0a000f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_WIDTH:I

    .line 74
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_POS_Y:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_HEIGHT:I

    .line 75
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_POS_Y:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_X:I

    .line 76
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_Y:I

    .line 77
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_X:I

    const v3, 0x7f0a0279

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_RECORD_BUTTON_POS_X:I

    .line 78
    const v2, 0x7f0a0105

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_RECORD_BUTTON_POS_Y:I

    .line 79
    const v2, 0x7f0a0100

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_X:I

    .line 80
    const v2, 0x7f0a0101

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_Y:I

    .line 81
    const v2, 0x7f0a0102

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_X:I

    .line 82
    const v2, 0x7f0a0103

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_Y:I

    .line 83
    const v2, 0x7f0a02ec

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_WIDTH:I

    .line 84
    const v2, 0x7f0a02eb

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:I

    .line 85
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_X:I

    const v3, 0x7f0a02f0

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_THUMBNAIL_BUTTON_POS_X:I

    .line 86
    const v2, 0x7f0a010b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_THUMBNAIL_BUTTON_POS_Y:I

    .line 99
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonX:F

    .line 100
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonY:F

    .line 108
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->setPreviewTouchEnabled(Z)V

    .line 110
    const/16 v18, 0x0

    .line 111
    .local v18, "baseMenuWeightValue":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->BASEMENU_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v18, v2, v3

    .line 114
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v2, v3

    add-float v22, v2, v18

    .line 115
    .local v22, "shutterButtonX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v23, v2, v3

    .line 116
    .local v23, "shutterButtonY":F
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    sub-float v4, v22, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    sub-float v5, v23, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    const v8, 0x7f0200fd

    const v9, 0x7f0200ff

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f090229

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 132
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v4, v22, v2

    .line 133
    .local v4, "shutterButtonProgressX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v5, v23, v2

    .line 134
    .local v5, "shutterButtonProgressY":F
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:F

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setRotatable(Z)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setCenterPivot(Z)V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    .line 141
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v8, v22, v2

    .line 142
    .local v8, "recordingButtonX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    add-float v2, v2, v23

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->BASEMENU_GROUP_ICON_GAP:F

    add-float v9, v2, v3

    .line 143
    .local v9, "recordingButtonY":F
    new-instance v6, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    const v10, 0x7f02010d

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x41

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0901f9

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_DIAMETER:F

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 156
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonX:F

    .line 157
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->BASEMENU_GROUP_ICON_GAP:F

    sub-float v2, v23, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->THUMBNAIL_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonY:F

    .line 158
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonY:F

    invoke-direct {v2, v3, v6, v7}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setTag(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 165
    new-instance v10, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_POS_X:I

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_POS_Y:I

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_WIDTH:I

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_HEIGHT:I

    int-to-float v15, v2

    invoke-direct/range {v10 .. v15}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 168
    new-instance v2, Lcom/sec/android/app/camera/menu/OverlayLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v2, v3, v6}, Lcom/sec/android/app/camera/menu/OverlayLayout;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    .line 169
    new-instance v2, Lcom/sec/android/app/camera/menu/Indicators;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/menu/Indicators;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    .line 171
    new-instance v2, Lcom/sec/android/app/camera/menu/OverlayHelp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    invoke-direct {v2, v3, v6, v7, v10}, Lcom/sec/android/app/camera/menu/OverlayHelp;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/menu/MenuManagerImpl;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getPreviewOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getShootingModeOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getToastViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 186
    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_X:I

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_Y:I

    int-to-float v13, v2

    const v14, 0x7f0200fd

    const v15, 0x7f0200ff

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f090229

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 201
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v2, :cond_0

    .line 202
    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_RECORD_BUTTON_POS_X:I

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_RECORD_BUTTON_POS_Y:I

    int-to-float v13, v2

    const v14, 0x7f02010d

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x41

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0901f9

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_DIAMETER:F

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 218
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 219
    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_X:I

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_Y:I

    int-to-float v13, v2

    const v14, 0x7f020088

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 229
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0901d3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 235
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v21

    .line 236
    .local v21, "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v16, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v21

    iget v6, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v6, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v21

    iget v6, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v6, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v21

    iget v6, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v6, v2, v3

    const/4 v3, 0x3

    const/4 v6, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v21

    iget v6, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v6, v2, v3

    const/4 v3, 0x5

    const/4 v6, 0x0

    aput v6, v2, v3

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 237
    .local v16, "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v17

    .line 238
    .local v17, "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 239
    new-instance v10, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_X:I

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_Y:I

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_WIDTH:I

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:I

    int-to-float v15, v2

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    .line 245
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setCenterPivot(Z)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setOrientation(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setRotatable(Z)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 250
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v2, :cond_1

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 252
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 254
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->showView(I)V

    .line 271
    .end local v16    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v17    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v21    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->setAttachMode(Z)V

    .line 273
    new-instance v2, Lcom/sec/android/app/camera/provider/CameraGestureManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/provider/CameraGestureManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    .line 276
    const-string v2, "AXLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BaseMenu-loading**added["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]**"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v2, "Add View"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 278
    return-void

    .line 224
    :cond_3
    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_X:I

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_Y:I

    int-to-float v13, v2

    const v14, 0x7f020088

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    goto/16 :goto_0

    .line 242
    .restart local v16    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v17    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .restart local v21    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_4
    new-instance v10, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_X:I

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_Y:I

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_WIDTH:I

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:I

    int-to-float v15, v2

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    goto/16 :goto_1

    .line 255
    .end local v16    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v17    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v21    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v20, v0

    .line 257
    .local v20, "previewSurfaceEndPosX":F
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    add-float v2, v2, v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getLeft()F

    move-result v3

    sub-float v19, v2, v3

    .line 259
    .local v19, "moveValue":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v3, 0x0

    const/4 v6, 0x1

    move/from16 v0, v19

    invoke-virtual {v2, v0, v3, v6}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FFZ)V

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setRotatableForCoverCamera(Z)V

    goto/16 :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    .line 286
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->clear()V

    .line 287
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

    .line 291
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_0

    .line 292
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 295
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 296
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 299
    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v5, :cond_2

    .line 300
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 302
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->unregisterEAM(I)V

    .line 304
    :cond_2
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 305
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSideQuickSetting:Z

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 308
    :cond_3
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_4

    .line 309
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShootingModeView:Z

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 312
    :cond_4
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_5

    .line 313
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 316
    :cond_5
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6

    .line 317
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 321
    return-void
.end method

.method public enableView(I)V
    .locals 5
    .param p1, "viewValue"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 325
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_0

    .line 326
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 329
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 330
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 333
    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v4, :cond_2

    .line 334
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 336
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->registerEAM(I)V

    .line 338
    :cond_2
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 339
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSideQuickSetting:Z

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 342
    :cond_3
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_4

    .line 343
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShootingModeView:Z

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 346
    :cond_4
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_5

    .line 347
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 350
    :cond_5
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6

    .line 351
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 354
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 355
    return-void
.end method

.method protected getAnchor(I)Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 747
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndicators()Lcom/sec/android/app/camera/menu/Indicators;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    return-object v0
.end method

.method public getOverlayHelp()Lcom/sec/android/app/camera/interfaces/OverlayHelpController;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    return-object v0
.end method

.method public hideCaptureProgressText()V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method public hideOneHandZoomGuide()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method public hideView(I)V
    .locals 8
    .param p1, "bitMarker"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 377
    const-string v0, "EasyBaseMenu"

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

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_8

    .line 379
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 382
    :cond_0
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 385
    :cond_1
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 387
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->unregisterEAM(I)V

    .line 389
    :cond_2
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShootingModeView:Z

    if-nez v0, :cond_3

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 392
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingAnimation:Z

    if-eqz v0, :cond_5

    .line 393
    iput-boolean v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingAnimation:Z

    .line 394
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->unregisterEAM(I)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 435
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 436
    return-void

    .line 399
    :cond_5
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v6, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_6

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 402
    :cond_6
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v7, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_7

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 405
    :cond_7
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v5, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_4

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 407
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->unregisterEAM(I)V

    goto :goto_0

    .line 411
    :cond_8
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_9

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 414
    :cond_9
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_a

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 417
    :cond_a
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v5, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_b

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 419
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->unregisterEAM(I)V

    .line 421
    :cond_b
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_c

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 424
    :cond_c
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v6, :cond_d

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_d

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(IZ)V

    .line 429
    :cond_d
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v7, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_4

    .line 430
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_4

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    goto/16 :goto_0
.end method

.method public isOneHandZoomShowing()Z
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method protected makeBaseMenuVIAnimation()V
    .locals 0

    .prologue
    .line 752
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 445
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v2, :cond_0

    .line 446
    const-string v1, "EasyBaseMenu"

    const-string v2, "CameraContext is null."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_0
    return v0

    .line 450
    :cond_0
    if-nez p1, :cond_1

    .line 451
    const-string v1, "EasyBaseMenu"

    const-string v2, "View is null."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->isShutterProgressWheelVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 456
    :cond_2
    const-string v1, "EasyBaseMenu"

    const-string v2, "Capture is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 460
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 461
    const-string v1, "EasyBaseMenu"

    const-string v2, "Preview has not started yet."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 466
    :cond_5
    const-string v1, "EasyBaseMenu"

    const-string v2, "Recording is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 470
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchingCamera()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 471
    :cond_7
    const-string v1, "EasyBaseMenu"

    const-string v2, "Switch camera is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_8
    const-string v2, "EasyBaseMenu"

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

    .line 477
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    .line 489
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleCoverCameraClosed()V

    move v0, v1

    .line 490
    goto/16 :goto_0

    .line 479
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForPictureSavingThread()V

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->isThumbnailExist()Z

    move-result v0

    if-nez v0, :cond_9

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showNoImagePopup()V

    :goto_1
    move v0, v1

    .line 487
    goto/16 :goto_0

    .line 484
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1d

    const/16 v3, 0x1c21

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v2, "quickview"

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onLaunchGallery(Ljava/lang/String;)Z

    goto :goto_1

    .line 477
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

    .line 498
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->isPressed(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->isShutterProgressWheelVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    :cond_0
    :goto_0
    return v0

    .line 502
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleTouchCancelled()V

    .line 508
    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 509
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v0

    const/16 v2, 0x1c3f

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onSwitchCameraSelect(I)Z

    move v0, v1

    .line 513
    goto :goto_0
.end method

.method protected onHide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setAfListener(Lcom/sec/android/app/camera/interfaces/CameraContext$AfListener;)V

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 762
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 763
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->isVisible()I

    move-result v0

    if-nez v0, :cond_1

    .line 767
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->endShutterProgressWheel()V

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->hideHelp(Z)V

    .line 770
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 775
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 780
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/menu/OverlayHelp;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    const/4 v0, 0x1

    .line 787
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1b

    const/4 v0, 0x1

    .line 520
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_7

    .line 521
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 522
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v1, :cond_3

    .line 523
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 539
    :cond_2
    :goto_0
    return v0

    .line 527
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 532
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 533
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_7

    .line 534
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 539
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 792
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/menu/OverlayHelp;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    const/4 v0, 0x1

    .line 795
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

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

    .line 544
    if-eqz p1, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_7

    .line 545
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 547
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v1, :cond_3

    .line 548
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 561
    :cond_2
    :goto_0
    return v0

    .line 550
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 554
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 555
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_7

    .line 556
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 557
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 561
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollDirection(II)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 566
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->onFlingDirection(II)Z

    move-result v0

    return v0
.end method

.method protected onShow()V
    .locals 3

    .prologue
    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setAfListener(Lcom/sec/android/app/camera/interfaces/CameraContext$AfListener;)V

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->registerGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 811
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

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

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-nez v0, :cond_1

    .line 813
    new-instance v0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 816
    :cond_1
    return-void

    .line 807
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 821
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 826
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

    .line 571
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->collapseMenu()V

    .line 573
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 619
    :cond_0
    :goto_0
    return v0

    .line 575
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 579
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, p2}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 590
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 591
    goto :goto_0

    .line 583
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, p2}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 593
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 594
    goto :goto_0

    .line 596
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    move v0, v1

    .line 597
    goto :goto_0

    .line 602
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 605
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 607
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 608
    goto :goto_0

    .line 610
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 611
    goto :goto_0

    .line 613
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    move v0, v1

    .line 614
    goto :goto_0

    .line 573
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x41 -> :sswitch_1
    .end sparse-switch

    .line 588
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 605
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-nez v0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    if-eqz p1, :cond_3

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerItem(Landroid/content/BroadcastReceiver;I)V

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerItem(Landroid/content/BroadcastReceiver;I)V

    goto :goto_0

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    goto :goto_0
.end method

.method public removeSideQuickSettingItems()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->clearSideQuickSetting()V

    .line 645
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 646
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideSideQuickSettingToast()V

    .line 647
    return-void
.end method

.method public setBaseMenuAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 652
    return-void
.end method

.method public setCapturingProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 658
    return-void
.end method

.method protected declared-synchronized setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 1
    .param p1, "shootingModeViewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p2, "shootingModeControllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 830
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    monitor-exit p0

    return-void

    .line 830
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs setSideQuickSettingItems([I)V
    .locals 1
    .param p1, "commandIds"    # [I

    .prologue
    .line 662
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->updateSideQuickSetting([I)V

    .line 663
    return-void
.end method

.method public showCaptureProgressText()V
    .locals 0

    .prologue
    .line 668
    return-void
.end method

.method public showOneHandZoomGuide()V
    .locals 0

    .prologue
    .line 673
    return-void
.end method

.method public showView(I)V
    .locals 8
    .param p1, "bitMarker"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 677
    const-string v0, "EasyBaseMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_d

    .line 679
    and-int/lit16 v0, p1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 682
    :cond_0
    and-int/lit8 v0, p1, 0x40

    const/16 v2, 0x40

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 685
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v6, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_3

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 690
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 694
    :cond_3
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v5, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_6

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 696
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 698
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 700
    :cond_6
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v7, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_7

    .line 701
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->showThumbnailButton()V

    .line 703
    :cond_7
    and-int/lit8 v0, p1, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_8

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 705
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->registerEAM(I)V

    .line 707
    :cond_8
    and-int/lit16 v0, p1, 0x100

    const/16 v2, 0x100

    if-ne v0, v2, :cond_b

    move v0, v6

    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShootingModeView:Z

    if-nez v2, :cond_c

    move v2, v6

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 710
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingAnimation:Z

    if-eqz v0, :cond_a

    .line 711
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingAnimation:Z

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startControllerLayoutAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;II)V

    .line 742
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 743
    return-void

    :cond_b
    move v0, v1

    .line 707
    goto :goto_0

    :cond_c
    move v2, v1

    goto :goto_1

    .line 715
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 719
    and-int/lit8 v0, p1, 0x40

    const/16 v2, 0x40

    if-ne v0, v2, :cond_e

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_e

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(I)V

    .line 722
    :cond_e
    and-int/lit16 v0, p1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_f

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_f

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 724
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 726
    :cond_f
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v7, :cond_10

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_10

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_THUMBNAIL_BUTTON_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonY:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3, v6}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FFZ)V

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setRotatableForCoverCamera(Z)V

    .line 729
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->showThumbnailButton()V

    .line 731
    :cond_10
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v5, :cond_11

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_11

    .line 732
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_11

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 736
    :cond_11
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v6, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_a

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(IZ)V

    goto/16 :goto_2
.end method
