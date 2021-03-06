.class public Lcom/sec/android/app/camera/menu/EasyBaseMenu;
.super Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
.source "EasyBaseMenu.java"


# static fields
.field private static final COVER_CAMERA_CLOSE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "EasyBaseMenu"


# instance fields
.field private final BASEMENU_GROUP_ICON_GAP:F

.field private final COVER_CLOSE_BUTTON_POS_X:F

.field private final COVER_CLOSE_BUTTON_POS_Y:F

.field private final COVER_FLASH_BUTTON_ITEM_HEIGHT:F

.field private final COVER_FLASH_BUTTON_ITEM_WIDTH:F

.field private final COVER_FLASH_BUTTON_POS_X:F

.field private final COVER_FLASH_BUTTON_POS_Y:F

.field private final COVER_RECORD_BUTTON_POS_X:F

.field private final COVER_RECORD_BUTTON_POS_Y:F

.field private final COVER_SHUTTER_BUTTON_POS_X:F

.field private final COVER_SHUTTER_BUTTON_POS_Y:F

.field private final COVER_THUMBNAIL_BUTTON_POS_X:F

.field private final COVER_THUMBNAIL_BUTTON_POS_Y:F

.field private final COVER_VIEW_HEIGHT:F

.field private final EASY_QUICK_SETTING_HEIGHT:I

.field private final EASY_QUICK_SETTING_POS_X:I

.field private final EASY_QUICK_SETTING_POS_Y:I

.field private final EASY_QUICK_SETTING_WIDTH:I

.field private final RECORDING_BUTTON_DIAMETER:F

.field private final RECORDING_BUTTON_WIDTH:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_EXPAND_AREA:F

.field private final SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

.field private final SHUTTER_BUTTON_PROGRESS_WIDTH:F

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final SNAPSHOT_BUTTON_WIDTH:F

.field private final THUMBNAIL_BUTTON_WIDTH:F

.field private mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

.field private mShutterSnapshotRatio:F

.field private mSnapshotShutterRatio:F

.field private mThumbnailButtonX:F

.field private mThumbnailButtonY:F

.field private translationDeltaY:F


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
    .line 104
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 63
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    .line 64
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    .line 65
    const v2, 0x7f0b034e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    .line 66
    const v2, 0x7f0b005b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->BASEMENU_GROUP_ICON_GAP:F

    .line 67
    const v2, 0x7f0b01d9

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    .line 68
    const v2, 0x7f0b01d8

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    .line 69
    const v2, 0x7f0b0050

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:F

    .line 70
    const v2, 0x7f0b01d2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_WIDTH:F

    .line 71
    const v2, 0x7f0b034f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_DIAMETER:F

    .line 72
    const v2, 0x7f0b0195

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SNAPSHOT_BUTTON_WIDTH:F

    .line 73
    const v2, 0x7f0b0361

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->THUMBNAIL_BUTTON_WIDTH:F

    .line 75
    const v2, 0x7f0b00cc

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_POS_X:I

    .line 76
    const v2, 0x7f0b00cd

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_POS_Y:I

    .line 77
    const v2, 0x7f0b02d1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_WIDTH:I

    .line 78
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_POS_Y:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->EASY_QUICK_SETTING_HEIGHT:I

    .line 79
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const v3, 0x7f0b02c0

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_VIEW_HEIGHT:F

    .line 80
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_VIEW_HEIGHT:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const v3, 0x7f0b02be

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_X:F

    .line 81
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_Y:F

    .line 82
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_WIDTH:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_RECORD_BUTTON_POS_X:F

    .line 83
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const v3, 0x7f0b02c0

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const v3, 0x7f0b02b8

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_RECORD_BUTTON_POS_Y:F

    .line 84
    const v2, 0x7f0b02b2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_X:F

    .line 85
    const v2, 0x7f0b02b6

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_Y:F

    .line 86
    const v2, 0x7f0b02b5

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_WIDTH:F

    .line 87
    const v2, 0x7f0b02b4

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:F

    .line 88
    const v2, 0x7f0b02b1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_X:F

    .line 89
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:F

    sub-float/2addr v2, v3

    const v3, 0x7f0b02b0

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_Y:F

    .line 90
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_WIDTH:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_THUMBNAIL_BUTTON_POS_X:F

    .line 91
    const v2, 0x7f0b02c0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const v3, 0x7f0b02bf

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_THUMBNAIL_BUTTON_POS_Y:F

    .line 93
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonX:F

    .line 94
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonY:F

    .line 96
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->translationDeltaY:F

    .line 97
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    .line 98
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    .line 106
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->setPreviewTouchEnabled(Z)V

    .line 109
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float v22, v2, v3

    .line 110
    .local v22, "shutterButtonX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v23, v2, v3

    .line 111
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

    const v8, 0x7f0200eb

    const v9, 0x7f0200ed

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0a0220

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 127
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v4, v22, v2

    .line 128
    .local v4, "shutterButtonProgressX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v5, v23, v2

    .line 129
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

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setRotatable(Z)V

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setCenterPivot(Z)V

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    .line 136
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v8, v22, v2

    .line 137
    .local v8, "recordingButtonX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    add-float v2, v2, v23

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->BASEMENU_GROUP_ICON_GAP:F

    add-float v9, v2, v3

    .line 138
    .local v9, "recordingButtonY":F
    new-instance v6, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    const v10, 0x7f0200fa

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x41

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0a01f2

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_DIAMETER:F

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 151
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonX:F

    .line 152
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->BASEMENU_GROUP_ICON_GAP:F

    sub-float v2, v23, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->THUMBNAIL_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonY:F

    .line 153
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

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setTag(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 160
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

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 163
    new-instance v2, Lcom/sec/android/app/camera/menu/OverlayLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v2, v3, v6}, Lcom/sec/android/app/camera/menu/OverlayLayout;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    .line 164
    new-instance v2, Lcom/sec/android/app/camera/menu/Indicators;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/menu/Indicators;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    .line 166
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

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getPreviewOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getShootingModeOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getToastViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_SHUTTER_BUTTON_POS_Y:F

    const v14, 0x7f0200eb

    const v15, 0x7f0200ed

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0a0220

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 196
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v2, :cond_0

    .line 197
    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_RECORD_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_RECORD_BUTTON_POS_Y:F

    const v14, 0x7f0200fa

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x41

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0a01f2

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_DIAMETER:F

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 213
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 214
    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_Y:F

    const v14, 0x7f020084

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 224
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0a01ce

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 230
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v21

    .line 231
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

    .line 232
    .local v16, "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v17

    .line 233
    .local v17, "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 234
    new-instance v10, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_Y:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:F

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    .line 240
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setCenterPivot(Z)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setOrientation(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setRotatable(Z)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 245
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v2, :cond_1

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 247
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 249
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->showView(I)V

    .line 265
    .end local v16    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v17    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v21    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonY:F

    sub-float v2, v2, v23

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_WIDTH:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->translationDeltaY:F

    .line 266
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SNAPSHOT_BUTTON_WIDTH:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    .line 267
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SNAPSHOT_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->makeBaseMenuVIAnimation()V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->setAttachMode(Z)V

    .line 273
    new-instance v2, Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraGestureListener;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 274
    new-instance v18, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 275
    .local v18, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu$1;-><init>(Lcom/sec/android/app/camera/menu/EasyBaseMenu;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->registerFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    .line 286
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

    .line 287
    const-string v2, "Add View"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 288
    return-void

    .line 219
    .end local v18    # "handler":Landroid/os/Handler;
    :cond_3
    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_CLOSE_BUTTON_POS_Y:F

    const v14, 0x7f020084

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

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    goto/16 :goto_0

    .line 237
    .restart local v16    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v17    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .restart local v21    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_4
    new-instance v10, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_POS_Y:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:F

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    goto/16 :goto_1

    .line 250
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

    .line 251
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const v3, 0x7f0b0106

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float v20, v2, v3

    .line 252
    .local v20, "keyboardCoverShutterButtonX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    sub-float v3, v20, v22

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 256
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v19, v20, v2

    .line 257
    .local v19, "keyboardCoverRecordingButtonX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    sub-float v3, v19, v8

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonX:F

    sub-float v3, v19, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v6, v7}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FFZ)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setRotatableForCoverCamera(Z)V

    goto/16 :goto_2

    .line 271
    .end local v19    # "keyboardCoverRecordingButtonX":F
    .end local v20    # "keyboardCoverShutterButtonX":F
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->clear()V

    .line 294
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->clear()V

    .line 298
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 300
    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 302
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->clear()V

    .line 303
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

    .line 307
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_0

    .line 308
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 311
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 312
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 315
    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v5, :cond_2

    .line 316
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 318
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->unregisterEAM(I)V

    .line 320
    :cond_2
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 321
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSideQuickSetting:Z

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 324
    :cond_3
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_4

    .line 325
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShootingModeView:Z

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_4

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 330
    :cond_4
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_5

    .line 331
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 334
    :cond_5
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6

    .line 335
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 338
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 339
    return-void
.end method

.method public enableView(I)V
    .locals 5
    .param p1, "viewValue"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 343
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_0

    .line 344
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 347
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 348
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 351
    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v4, :cond_2

    .line 352
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 354
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->registerEAM(I)V

    .line 356
    :cond_2
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 357
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSideQuickSetting:Z

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 360
    :cond_3
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_4

    .line 361
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShootingModeView:Z

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_4

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 366
    :cond_4
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_5

    .line 367
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 370
    :cond_5
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6

    .line 371
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 374
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 375
    return-void
.end method

.method protected getAnchor(I)Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 802
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndicators()Lcom/sec/android/app/camera/menu/Indicators;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    return-object v0
.end method

.method public getLastGestureDirection()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->getLastDirection()I

    move-result v0

    return v0
.end method

.method public getOverlayHelp()Lcom/sec/android/app/camera/interfaces/OverlayHelpController;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    return-object v0
.end method

.method public hideCaptureProgressText()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public hideView(I)V
    .locals 8
    .param p1, "bitMarker"    # I

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 398
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

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_8

    .line 400
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 403
    :cond_0
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 406
    :cond_1
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 408
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->unregisterEAM(I)V

    .line 410
    :cond_2
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShootingModeView:Z

    if-nez v0, :cond_3

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 415
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingAnimation:Z

    if-eqz v0, :cond_5

    .line 416
    iput-boolean v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingAnimation:Z

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->startAnimation()V

    .line 426
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->unregisterEAM(I)V

    .line 464
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 465
    return-void

    .line 428
    :cond_5
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_6

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 431
    :cond_6
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v7, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_7

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 434
    :cond_7
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v6, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_4

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 436
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->unregisterEAM(I)V

    goto :goto_0

    .line 440
    :cond_8
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_9

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 443
    :cond_9
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_a

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 446
    :cond_a
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v6, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_b

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 448
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->unregisterEAM(I)V

    .line 450
    :cond_b
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_c

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 453
    :cond_c
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_d

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_d

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(IZ)V

    .line 458
    :cond_d
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v7, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_4

    .line 459
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_4

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    goto/16 :goto_0
.end method

.method protected makeBaseMenuVIAnimation()V
    .locals 13

    .prologue
    const/16 v8, 0x23a

    const/4 v9, 0x0

    const v12, 0x3ea8f5c3    # 0.33f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 807
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 808
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->translationDeltaY:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    div-float v3, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 810
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x190

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 811
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v2, v11

    move v4, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 813
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 815
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 816
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->translationDeltaY:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    div-float v2, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v1, v0

    move v3, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 818
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x190

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 819
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v3, v11

    move v5, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 821
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 823
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 824
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->translationDeltaY:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    div-float v3, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 826
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v8, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 827
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v2, v11

    move v4, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 829
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 831
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 832
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->translationDeltaY:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    div-float v2, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v1, v0

    move v3, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 834
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v8, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 835
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v3, v11

    move v5, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 837
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 839
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 840
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0xc8

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 841
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v8, 0xc8

    move v2, v11

    move v3, v0

    move v4, v11

    move v5, v0

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 842
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 844
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 845
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0xc8

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 846
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v6, 0xc8

    move v1, v11

    move v2, v0

    move v3, v11

    move v7, v9

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 848
    return-void
.end method

.method protected makeRecordingMenuVIAnimation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/16 v8, 0x23a

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 852
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_0

    .line 853
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu$2;-><init>(Lcom/sec/android/app/camera/menu/EasyBaseMenu;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 870
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 871
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->translationDeltaY:F

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    div-float v3, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 873
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x1d6

    new-instance v3, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v3}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 874
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterSnapshotRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v4, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 876
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 879
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_1

    .line 880
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu$3;-><init>(Lcom/sec/android/app/camera/menu/EasyBaseMenu;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 895
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 896
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->translationDeltaY:F

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    div-float v3, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 898
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 899
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mSnapshotShutterRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v4, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 901
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 904
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_2

    .line 905
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu$4;-><init>(Lcom/sec/android/app/camera/menu/EasyBaseMenu;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 920
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 921
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x12c

    new-instance v3, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v3}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 922
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    const/16 v8, 0x12c

    move v2, v11

    move v3, v0

    move v4, v11

    move v5, v0

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 925
    :cond_2
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 5
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 469
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v2, :cond_0

    .line 470
    const-string v1, "EasyBaseMenu"

    const-string v2, "CameraContext is null."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :goto_0
    return v0

    .line 474
    :cond_0
    if-nez p1, :cond_1

    .line 475
    const-string v1, "EasyBaseMenu"

    const-string v2, "View is null."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 479
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->isShutterProgressWheelVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 480
    :cond_2
    const-string v1, "EasyBaseMenu"

    const-string v2, "Capture is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 485
    const-string v1, "EasyBaseMenu"

    const-string v2, "Preview has not started yet."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 489
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 490
    :cond_5
    const-string v1, "EasyBaseMenu"

    const-string v2, "Recording is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 494
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

    .line 495
    :cond_7
    const-string v1, "EasyBaseMenu"

    const-string v2, "Switch camera is now in progress."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 499
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

    .line 501
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    .line 513
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleCoverCameraClosed()V

    move v0, v1

    .line 514
    goto/16 :goto_0

    .line 503
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForPictureSavingThread()V

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->isThumbnailExist()Z

    move-result v0

    if-nez v0, :cond_9

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showNoImagePopup()V

    :goto_1
    move v0, v1

    .line 511
    goto/16 :goto_0

    .line 508
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1d

    const/16 v3, 0x1c21

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v2, "quickview"

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onLaunchGallery(Ljava/lang/String;)Z

    goto :goto_1

    .line 501
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

    .line 522
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

    .line 540
    :cond_0
    :goto_0
    return v0

    .line 526
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeMSGToStopTouchAE()V

    .line 531
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 533
    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 534
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-nez v2, :cond_0

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onSwitchCameraSelect()Z

    move v0, v1

    .line 538
    goto :goto_0
.end method

.method protected onHide()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 929
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    .line 931
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 934
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 938
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->isReviewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->hideReview(Z)V

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 946
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTranslate()V

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->RECORDING_BUTTON_WIDTH:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTranslate()V

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 954
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->isVisible()I

    move-result v0

    if-nez v0, :cond_2

    .line 957
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->endShutterProgressWheel()V

    .line 959
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->hideHelp(Z)V

    .line 960
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 965
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 970
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 974
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/menu/OverlayHelp;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    const/4 v0, 0x1

    .line 977
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

    .line 545
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_7

    .line 546
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

    .line 547
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v1, :cond_3

    .line 548
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 549
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 564
    :cond_2
    :goto_0
    return v0

    .line 552
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 553
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 557
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

    .line 558
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_7

    .line 559
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 560
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 564
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 982
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/menu/OverlayHelp;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    const/4 v0, 0x1

    .line 985
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

    .line 569
    if-eqz p1, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_7

    .line 570
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

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 572
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v1, :cond_3

    .line 573
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 586
    :cond_2
    :goto_0
    return v0

    .line 575
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 579
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

    .line 580
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_7

    .line 581
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 582
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 586
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollDirection(II)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 591
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->onFlingDirection(II)Z

    move-result v0

    return v0
.end method

.method protected onShow()V
    .locals 3

    .prologue
    .line 990
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    .line 992
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 993
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 999
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

    .line 1000
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-nez v0, :cond_1

    .line 1001
    new-instance v0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 1004
    :cond_1
    return-void

    .line 995
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

    .line 996
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1009
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1014
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

    .line 596
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->collapseMenu()V

    .line 598
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 644
    :cond_0
    :goto_0
    return v0

    .line 600
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 603
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 604
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, p2}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 613
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 615
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 616
    goto :goto_0

    .line 608
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, p2}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 618
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 619
    goto :goto_0

    .line 621
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    move v0, v1

    .line 622
    goto :goto_0

    .line 627
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 630
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 632
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 633
    goto :goto_0

    .line 635
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 636
    goto :goto_0

    .line 638
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    move v0, v1

    .line 639
    goto :goto_0

    .line 598
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x41 -> :sswitch_1
    .end sparse-switch

    .line 613
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 630
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

    .line 650
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->isShareViaWorking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->hideReview(Z)V

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-nez v0, :cond_2

    .line 669
    :cond_1
    :goto_0
    return-void

    .line 658
    :cond_2
    if-eqz p1, :cond_4

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerItem(Landroid/content/BroadcastReceiver;I)V

    .line 662
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerItem(Landroid/content/BroadcastReceiver;I)V

    goto :goto_0

    .line 666
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 667
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    goto :goto_0
.end method

.method public removeSideQuickSettingItems()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->clearSideQuickSetting()V

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 675
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideSideQuickSettingToast()V

    .line 676
    return-void
.end method

.method public setBaseMenuAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 681
    return-void
.end method

.method public setCapturingProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 687
    return-void
.end method

.method protected declared-synchronized setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 1
    .param p1, "shootingModeViewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p2, "shootingModeControllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 1018
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 1019
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->resetView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    monitor-exit p0

    return-void

    .line 1018
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs setSideQuickSettingItems([I)V
    .locals 1
    .param p1, "commandIds"    # [I

    .prologue
    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->updateSideQuickSetting([I)V

    .line 692
    return-void
.end method

.method public showCaptureProgressText()V
    .locals 0

    .prologue
    .line 697
    return-void
.end method

.method public showView(I)V
    .locals 8
    .param p1, "bitMarker"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 701
    const-string v0, "EasyBaseMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showView : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_12

    .line 703
    and-int/lit16 v0, p1, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 706
    :cond_0
    and-int/lit8 v0, p1, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 709
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_3

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 718
    :cond_3
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v6, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_6

    .line 719
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 720
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 722
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 724
    :cond_6
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v7, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_7

    .line 725
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->showThumbnailButton()V

    .line 727
    :cond_7
    and-int/lit8 v0, p1, 0x20

    const/16 v3, 0x20

    if-ne v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_8

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 729
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->registerEAM(I)V

    .line 731
    :cond_8
    and-int/lit16 v0, p1, 0x100

    const/16 v3, 0x100

    if-ne v0, v3, :cond_10

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShootingModeView:Z

    if-nez v3, :cond_11

    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_9

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_9

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 736
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingAnimation:Z

    if-eqz v0, :cond_f

    .line 737
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingAnimation:Z

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_a

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 742
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_b

    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 746
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_c

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 750
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->startAnimation()V

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_d

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 762
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_e

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 765
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_f

    .line 766
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 797
    :cond_f
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 798
    return-void

    :cond_10
    move v0, v2

    .line 731
    goto/16 :goto_0

    :cond_11
    move v3, v2

    goto/16 :goto_1

    .line 770
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mEasySideQuickSetting:Lcom/sec/android/app/camera/menu/EasySideQuickSetting;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 774
    and-int/lit8 v0, p1, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_13

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_13

    .line 775
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(I)V

    .line 777
    :cond_13
    and-int/lit16 v0, p1, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_14

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_14

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 779
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 781
    :cond_14
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v7, :cond_15

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_15

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget v3, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_THUMBNAIL_BUTTON_POS_X:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonX:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->COVER_THUMBNAIL_BUTTON_POS_Y:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButtonY:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v3, v4, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FFZ)V

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setRotatableForCoverCamera(Z)V

    .line 784
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->showThumbnailButton()V

    .line 786
    :cond_15
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v6, :cond_16

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_16

    .line 787
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_16

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 791
    :cond_16
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_f

    .line 792
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 793
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EasyBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(IZ)V

    goto/16 :goto_2
.end method
