.class public Lcom/sec/android/app/camera/menu/BaseMenu;
.super Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
.source "BaseMenu.java"


# static fields
.field private static final COVER_CAMERA_CLOSE:I = -0x1

.field private static final KEY_FLOATING_CAMERA_BUTTON_POS_X:Ljava/lang/String; = "pref_global_camera_floating_camera_mode_pos_x_key"

.field private static final KEY_FLOATING_CAMERA_BUTTON_POS_Y:Ljava/lang/String; = "pref_global_camera_floating_camera_mode_pos_y_key"

.field private static final TAG:Ljava/lang/String; = "BaseMenu"


# instance fields
.field private final BASEMENU_GROUP_ICON_GAP:F

.field private final CAPTURE_PROGRESS_TEXT_HEIGHT:F

.field private final CAPTURE_PROGRESS_TEXT_SIZE:F

.field private final CAPTURE_PROGRESS_TEXT_WIDTH:F

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

.field private final FLOATING_CAMERA_BUTTON_POS_X:I

.field private final FLOATING_CAMERA_BUTTON_POS_Y:I

.field private final KEYBOARD_COVER_CAPTURE_PROGRESS_TEXT_BOTTOM_POS_X:F

.field private final PAGE_NAVIGATOR_GROUP_HEIGHT:F

.field private final PAGE_NAVIGATOR_GROUP_LANDSCAPE_BOTTOM_PADDING:F

.field private final PAGE_NAVIGATOR_GROUP_PORTRAIT_BOTTOM_PADDING:F

.field private final PAGE_NAVIGATOR_GROUP_WIDTH:F

.field private final RECORDING_BUTTON_DIAMETER:F

.field private final RECORDING_BUTTON_WIDTH:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_EXPAND_AREA:F

.field private final SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

.field private final SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

.field private final SHUTTER_BUTTON_PROGRESS_WIDTH:F

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final SIDE_QUICK_SETTING_HEIGHT:I

.field private final SIDE_QUICK_SETTING_POS_X:I

.field private final SIDE_QUICK_SETTING_POS_Y:I

.field private final SIDE_QUICK_SETTING_WIDTH:I

.field private final SNAPSHOT_BUTTON_WIDTH:F

.field private final THUMBNAIL_BUTTON_WIDTH:F

.field private mCaptureProgressText:Lcom/samsung/android/glview/GLText;

.field private mCaptureProgressTextBottomX:F

.field private mCaptureProgressTextBottomY:F

.field private mShutterSnapshotRatio:F

.field private mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

.field private mSnapshotShutterRatio:F

.field private mThumbnailButtonX:F

.field private mThumbnailButtonY:F

.field private translationDeltaY:F


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 27
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p7, "zOrder"    # I

    .prologue
    .line 125
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 71
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    .line 72
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    .line 74
    const v2, 0x7f0b005b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->BASEMENU_GROUP_ICON_GAP:F

    .line 75
    const v2, 0x7f0b034d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    .line 76
    const v2, 0x7f0b0151

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_WIDTH:F

    .line 77
    const v2, 0x7f0b014f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    .line 78
    const v2, 0x7f0b0150

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_LANDSCAPE_BOTTOM_PADDING:F

    .line 79
    const v2, 0x7f0b0332

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_PORTRAIT_BOTTOM_PADDING:F

    .line 81
    const v2, 0x7f0b01d9

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    .line 82
    const v2, 0x7f0b01d8

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    .line 83
    const v2, 0x7f0b0050

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:F

    .line 84
    const v2, 0x7f0b034e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    .line 85
    const v2, 0x7f0b01d2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_WIDTH:F

    .line 86
    const v2, 0x7f0b034f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_DIAMETER:F

    .line 87
    const v2, 0x7f0b0361

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->THUMBNAIL_BUTTON_WIDTH:F

    .line 88
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->FLOATING_CAMERA_BUTTON_POS_X:I

    .line 89
    const v2, 0x7f0b005a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->FLOATING_CAMERA_BUTTON_POS_Y:I

    .line 90
    const v2, 0x7f0b0195

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SNAPSHOT_BUTTON_WIDTH:F

    .line 92
    const v2, 0x7f0b01cf

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_POS_X:I

    .line 93
    const v2, 0x7f0b01d0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_POS_Y:I

    .line 94
    const v2, 0x7f0b01d1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_WIDTH:I

    .line 95
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_POS_Y:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_HEIGHT:I

    .line 96
    const v2, 0x7f0b0070

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_WIDTH:F

    .line 97
    const v2, 0x7f0b006e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_HEIGHT:F

    .line 98
    const v2, 0x7f0b006f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_SIZE:F

    .line 99
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const v3, 0x7f0b02c0

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_VIEW_HEIGHT:F

    .line 100
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_VIEW_HEIGHT:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const v3, 0x7f0b02be

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_SHUTTER_BUTTON_POS_X:F

    .line 101
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_SHUTTER_BUTTON_POS_Y:F

    .line 102
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_SHUTTER_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_WIDTH:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_RECORD_BUTTON_POS_X:F

    .line 103
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const v3, 0x7f0b02c0

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const v3, 0x7f0b02b8

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_RECORD_BUTTON_POS_Y:F

    .line 104
    const v2, 0x7f0b02b2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_POS_X:F

    .line 105
    const v2, 0x7f0b02b6

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_POS_Y:F

    .line 106
    const v2, 0x7f0b02b5

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_ITEM_WIDTH:F

    .line 107
    const v2, 0x7f0b02b4

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:F

    .line 108
    const v2, 0x7f0b02b1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_CLOSE_BUTTON_POS_X:F

    .line 109
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:F

    sub-float/2addr v2, v3

    const v3, 0x7f0b02b0

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_CLOSE_BUTTON_POS_Y:F

    .line 110
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_SHUTTER_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_WIDTH:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_THUMBNAIL_BUTTON_POS_X:F

    .line 111
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

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_THUMBNAIL_BUTTON_POS_Y:F

    .line 112
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const v3, 0x7f0b0104

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_CAPTURE_PROGRESS_TEXT_BOTTOM_POS_X:F

    .line 113
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressTextBottomX:F

    .line 114
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressTextBottomY:F

    .line 115
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonX:F

    .line 116
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonY:F

    .line 117
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->translationDeltaY:F

    .line 118
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    .line 119
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    .line 121
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    .line 127
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->setPreviewTouchEnabled(Z)V

    .line 133
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float v25, v2, v3

    .line 134
    .local v25, "shutterButtonX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v26, v2, v3

    .line 135
    .local v26, "shutterButtonY":F
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    sub-float v4, v25, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    sub-float v5, v26, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v7, v10

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    const v8, 0x7f0200eb

    const v9, 0x7f0200ed

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/glview/GLButton;->setResourceOffset(FF)Z

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0a0220

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 150
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FLOATING_CAMERA_BUTTON:Z

    if-eqz v2, :cond_0

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_global_camera_floating_camera_mode_pos_x_key"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->FLOATING_CAMERA_BUTTON_POS_X:I

    invoke-static {v2, v3, v6}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v22

    .line 152
    .local v22, "posX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_global_camera_floating_camera_mode_pos_y_key"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->FLOATING_CAMERA_BUTTON_POS_Y:I

    invoke-static {v2, v3, v6}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v23

    .line 154
    .local v23, "posY":I
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    const v8, 0x7f0200ff

    const v9, 0x7f020100

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setMute(Z)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0a00ce

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setTitle(Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setRotatable(Z)V

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setCenterPivot(Z)V

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setRotateAnimation(Z)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setDragSensitivity(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->enableRippleEffect(Z)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setVisibility(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/BaseMenu$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/BaseMenu$1;-><init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/BaseMenu$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/BaseMenu$2;-><init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    .line 201
    .end local v22    # "posX":I
    .end local v23    # "posY":I
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v4, v25, v2

    .line 202
    .local v4, "shutterButtonProgressX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v5, v26, v2

    .line 203
    .local v5, "shutterButtonProgressY":F
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_PROGRESS_WIDTH:F

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setRotatable(Z)V

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setCenterPivot(Z)V

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    .line 210
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v8, v25, v2

    .line 211
    .local v8, "recordingButtonX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    add-float v2, v2, v26

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->BASEMENU_GROUP_ICON_GAP:F

    add-float v9, v2, v3

    .line 212
    .local v9, "recordingButtonY":F
    new-instance v6, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    const v10, 0x7f0200fa

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x41

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0a01f2

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_DIAMETER:F

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 225
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonX:F

    .line 226
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->BASEMENU_GROUP_ICON_GAP:F

    sub-float v2, v26, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->THUMBNAIL_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonY:F

    .line 227
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonY:F

    invoke-direct {v2, v3, v6, v7}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setTag(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 232
    new-instance v10, Lcom/sec/android/app/camera/menu/PageNavigator;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v12, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_LANDSCAPE_BOTTOM_PADDING:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float v13, v2, v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    const/16 v16, 0x1d4d

    move-object/from16 v11, p1

    move-object/from16 v17, p0

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/camera/menu/PageNavigator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFILcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/PageNavigator;->setRotatable(Z)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_PORTRAIT_BOTTOM_PADDING:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_WIDTH:F

    sub-float/2addr v7, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    invoke-virtual {v2, v3, v6, v7}, Lcom/sec/android/app/camera/menu/PageNavigator;->setLeftTop(IFF)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_WIDTH:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_LANDSCAPE_BOTTOM_PADDING:F

    add-float/2addr v7, v10

    invoke-virtual {v2, v3, v6, v7}, Lcom/sec/android/app/camera/menu/PageNavigator;->setLeftTop(IFF)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    sub-float v6, v25, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_WIDTH:F

    add-float/2addr v7, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    invoke-virtual {v2, v3, v6, v7}, Lcom/sec/android/app/camera/menu/PageNavigator;->setLeftTop(IFF)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/PageNavigator;->setVisibility(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v3, 0x1d4d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeResourceString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/app/camera/menu/PageNavigator;->setTitle(ILjava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v3, 0x1d4c

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/camera/menu/PageNavigator;->addPage(ILcom/samsung/android/glview/GLView$ClickListener;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v3, 0x1d4c

    const v6, 0x7f0a0127

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/app/camera/menu/PageNavigator;->setTitle(ILjava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v3, 0x1d4e

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/camera/menu/PageNavigator;->addPage(ILcom/samsung/android/glview/GLView$ClickListener;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v3, 0x1d4e

    const v6, 0x7f0a00cb

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/app/camera/menu/PageNavigator;->setTitle(ILjava/lang/String;)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 249
    new-instance v10, Lcom/sec/android/app/camera/menu/SideQuickSetting;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_POS_X:I

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_POS_Y:I

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_WIDTH:I

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SIDE_QUICK_SETTING_HEIGHT:I

    int-to-float v15, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/sec/android/app/camera/menu/SideQuickSetting;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    .line 253
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_ENABLE_THUMBNAILPICTURE_CALLBACK:Z

    if-eqz v2, :cond_6

    .line 254
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_WIDTH:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressTextBottomX:F

    .line 255
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->THUMBNAIL_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_HEIGHT:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressTextBottomY:F

    .line 260
    :goto_0
    new-instance v10, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressTextBottomX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressTextBottomY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_HEIGHT:F

    const-string v16, ""

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 261
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v17, v2, v3

    const v2, 0x7f0d0025

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v18

    invoke-direct/range {v10 .. v18}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FI)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x7f0d0023

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v3, v6, v7}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 271
    new-instance v2, Lcom/sec/android/app/camera/menu/OverlayLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-direct {v2, v3, v6, v7}, Lcom/sec/android/app/camera/menu/OverlayLayout;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/MenuManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    .line 272
    new-instance v2, Lcom/sec/android/app/camera/menu/Indicators;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/menu/Indicators;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(I)V

    .line 275
    new-instance v2, Lcom/sec/android/app/camera/menu/OverlayHelp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    invoke-direct {v2, v3, v6, v7, v10}, Lcom/sec/android/app/camera/menu/OverlayHelp;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/menu/MenuManagerImpl;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getPreviewOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getShootingModeOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getOverlayRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 289
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FLOATING_CAMERA_BUTTON:Z

    if-eqz v2, :cond_1

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getOverlayRoot()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 292
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getToastViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 296
    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_SHUTTER_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_SHUTTER_BUTTON_POS_Y:F

    const v14, 0x7f0200eb

    const v15, 0x7f0200ed

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0a0220

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 311
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v2, :cond_2

    .line 312
    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_RECORD_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_RECORD_BUTTON_POS_Y:F

    const v14, 0x7f0200fa

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x41

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0a01f2

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_DIAMETER:F

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    .line 328
    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 329
    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_POS_Y:F

    const v14, 0x7f020084

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 339
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0a01ce

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 345
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v24

    .line 346
    .local v24, "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v16, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v24

    iget v6, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v6, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v24

    iget v6, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v6, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v24

    iget v6, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v6, v2, v3

    const/4 v3, 0x3

    const/4 v6, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v24

    iget v6, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v6, v2, v3

    const/4 v3, 0x5

    const/4 v6, 0x0

    aput v6, v2, v3

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 347
    .local v16, "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v17

    .line 348
    .local v17, "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 349
    new-instance v10, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_CLOSE_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_CLOSE_BUTTON_POS_Y:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_ITEM_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:F

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    .line 355
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setCenterPivot(Z)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setOrientation(I)V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/Item;->setRotatable(Z)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 360
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v2, :cond_3

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 362
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 364
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->showView(I)V

    .line 384
    .end local v16    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v17    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v24    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonY:F

    sub-float v2, v2, v26

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_WIDTH:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->translationDeltaY:F

    .line 385
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SNAPSHOT_BUTTON_WIDTH:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    .line 386
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SNAPSHOT_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->makeBaseMenuVIAnimation()V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BaseMenu;->setAttachMode(Z)V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 396
    :cond_5
    new-instance v2, Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/CameraGestureListener;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 397
    new-instance v19, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 398
    .local v19, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/sec/android/app/camera/menu/BaseMenu$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/menu/BaseMenu$3;-><init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->registerFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V

    .line 409
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

    .line 410
    const-string v2, "Add View"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    .line 411
    return-void

    .line 257
    .end local v19    # "handler":Landroid/os/Handler;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_WIDTH:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressTextBottomX:F

    .line 258
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->CAPTURE_PROGRESS_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressTextBottomY:F

    goto/16 :goto_0

    .line 334
    :cond_7
    new-instance v10, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_CLOSE_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_CLOSE_BUTTON_POS_Y:F

    const v14, 0x7f020084

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    goto/16 :goto_1

    .line 352
    .restart local v16    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v17    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .restart local v24    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_8
    new-instance v10, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_POS_X:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_POS_Y:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_ITEM_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_FLASH_BUTTON_ITEM_HEIGHT:F

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    goto/16 :goto_2

    .line 365
    .end local v16    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v17    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v24    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 366
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const v3, 0x7f0b0106

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    sub-float v21, v2, v3

    .line 367
    .local v21, "keyboardCoverShutterButtonX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    sub-float v3, v21, v25

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 371
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v20, v21, v2

    .line 372
    .local v20, "keyboardCoverRecordingButtonX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    sub-float v3, v20, v8

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonX:F

    sub-float v3, v20, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v6, v7}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FFZ)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setRotatableForCoverCamera(Z)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->KEYBOARD_COVER_CAPTURE_PROGRESS_TEXT_BOTTOM_POS_X:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressTextBottomX:F

    sub-float/2addr v3, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/glview/GLText;->moveBaseLayout(FF)V

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setOrientation(I)V

    goto/16 :goto_3

    .line 390
    .end local v20    # "keyboardCoverRecordingButtonX":F
    .end local v21    # "keyboardCoverShutterButtonX":F
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/BaseMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BaseMenu;

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/BaseMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BaseMenu;

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    return v0
.end method

.method private hideSideQuickSetting()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1529
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->setVisibility(I)V

    .line 1530
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/BaseMenu;->unregisterEAM(I)V

    .line 1531
    return-void
.end method

.method private showPageNavigator()V
    .locals 8

    .prologue
    const/16 v7, 0x1d4d

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 1534
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1553
    :cond_0
    :goto_0
    return-void

    .line 1537
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1538
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v2, 0x1d4e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/PageNavigator;->hidePage(I)V

    .line 1540
    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAttachMode:Z

    if-eqz v1, :cond_4

    .line 1541
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v2, 0x1d4c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/PageNavigator;->hidePage(I)V

    .line 1544
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeResourceString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/sec/android/app/camera/menu/PageNavigator;->setTitle(ILjava/lang/String;)V

    .line 1546
    iget v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v0, v1, v2

    .line 1548
    .local v0, "ratio_margin":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_LANDSCAPE_BOTTOM_PADDING:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v6, v2, v3}, Lcom/sec/android/app/camera/menu/PageNavigator;->setLeftTop(IFF)V

    .line 1549
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/4 v2, 0x2

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_WIDTH:F

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->PAGE_NAVIGATOR_GROUP_LANDSCAPE_BOTTOM_PADDING:F

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/menu/PageNavigator;->setLeftTop(IFF)V

    .line 1550
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/PageNavigator;->updateLayout(Z)V

    .line 1551
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/menu/PageNavigator;->onPageSelected(I)V

    .line 1552
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v1, v6, v6}, Lcom/sec/android/app/camera/menu/PageNavigator;->setVisibility(IZ)V

    goto/16 :goto_0
.end method

.method private showSideQuickSetting()V
    .locals 2

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->setVisibility(I)V

    .line 1557
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x19c

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x19d

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1558
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->registerEAM(I)V

    .line 1560
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->clear()V

    .line 417
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->clear()V

    .line 421
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    .line 423
    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->clear()V

    .line 427
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->clear()V

    .line 428
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

    .line 432
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_0

    .line 433
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShutterButton:Z

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 436
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 437
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableRecordingButton:Z

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 440
    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v5, :cond_2

    .line 441
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableThumbnailButton:Z

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 443
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/BaseMenu;->unregisterEAM(I)V

    .line 445
    :cond_2
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 446
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableSideQuickSetting:Z

    .line 447
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->hideSideQuickSetting()V

    .line 449
    :cond_3
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_4

    .line 450
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShootingModeView:Z

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_4

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 455
    :cond_4
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_5

    .line 456
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableOverlayLayout:Z

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 459
    :cond_5
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 460
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableIndicators:Z

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 463
    :cond_6
    and-int/lit16 v0, p1, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_7

    .line 464
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisablePageNavigatorsGroup:Z

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/PageNavigator;->setVisibility(IZ)V

    .line 467
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 468
    return-void
.end method

.method public enableView(I)V
    .locals 5
    .param p1, "viewValue"    # I

    .prologue
    const/16 v4, 0x200

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 472
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_0

    .line 473
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShutterButton:Z

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 476
    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 477
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableRecordingButton:Z

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 480
    :cond_1
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 481
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableThumbnailButton:Z

    .line 482
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->showThumbnailButton()V

    .line 484
    :cond_2
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 485
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableSideQuickSetting:Z

    .line 486
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->showSideQuickSetting()V

    .line 488
    :cond_3
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_4

    .line 489
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShootingModeView:Z

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_4

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 494
    :cond_4
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_5

    .line 495
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableOverlayLayout:Z

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 498
    :cond_5
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 499
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableIndicators:Z

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 502
    :cond_6
    and-int/lit16 v0, p1, 0x200

    if-ne v0, v4, :cond_7

    .line 503
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisablePageNavigatorsGroup:Z

    .line 504
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/menu/BaseMenu;->showView(I)V

    .line 506
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 507
    return-void
.end method

.method protected getAnchor(I)Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v0

    return-object v0
.end method

.method public getIndicators()Lcom/sec/android/app/camera/menu/Indicators;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    return-object v0
.end method

.method public getLastGestureDirection()I
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraGestureListener;->getLastDirection()I

    move-result v0

    return v0
.end method

.method public getOverlayHelp()Lcom/sec/android/app/camera/interfaces/OverlayHelpController;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    return-object v0
.end method

.method public hideCaptureProgressText()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 527
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

    .line 531
    const-string v0, "BaseMenu"

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

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_a

    .line 533
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 536
    :cond_0
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 539
    :cond_1
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_2

    .line 540
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->hideSideQuickSetting()V

    .line 542
    :cond_2
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShootingModeView:Z

    if-nez v0, :cond_3

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_3

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 547
    :cond_3
    and-int/lit16 v0, p1, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisablePageNavigatorsGroup:Z

    if-nez v0, :cond_4

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/PageNavigator;->setVisibility(IZ)V

    .line 550
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingAnimation:Z

    if-eqz v0, :cond_7

    .line 551
    iput-boolean v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingAnimation:Z

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 556
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FLOATING_CAMERA_BUTTON:Z

    if-eqz v0, :cond_5

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setVisibility(IZ)V

    .line 562
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->startAnimation()V

    .line 567
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/menu/BaseMenu;->unregisterEAM(I)V

    .line 611
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 612
    return-void

    .line 569
    :cond_7
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_8

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 572
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FLOATING_CAMERA_BUTTON:Z

    if-eqz v0, :cond_8

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setVisibility(IZ)V

    .line 578
    :cond_8
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v7, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_9

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 581
    :cond_9
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v6, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_6

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 583
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/menu/BaseMenu;->unregisterEAM(I)V

    goto :goto_0

    .line 587
    :cond_a
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_b

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(IZ)V

    .line 590
    :cond_b
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_c

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 593
    :cond_c
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v6, :cond_d

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_d

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(IZ)V

    .line 595
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/menu/BaseMenu;->unregisterEAM(I)V

    .line 597
    :cond_d
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_e

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_e

    .line 598
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->hideSideQuickSetting()V

    .line 600
    :cond_e
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_f

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_f

    .line 601
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(IZ)V

    .line 605
    :cond_f
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v7, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_6

    .line 606
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_6

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

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

    .line 1253
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1254
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->translationDeltaY:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    div-float v3, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1256
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x190

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1257
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v2, v11

    move v4, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1259
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1261
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1262
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->translationDeltaY:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    div-float v2, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v1, v0

    move v3, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1264
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x190

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1265
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v3, v11

    move v5, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1267
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1269
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1270
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->translationDeltaY:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    div-float v3, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1272
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v8, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1273
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v2, v11

    move v4, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1275
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1277
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1278
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->translationDeltaY:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    div-float v2, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v1, v0

    move v3, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1280
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v8, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1281
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move v3, v11

    move v5, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1283
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1285
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1286
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0xc8

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1287
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

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

    .line 1288
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1290
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1291
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0xc8

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v12, v0, v0, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1292
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

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

    .line 1293
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1294
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

    .line 1298
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_0

    .line 1299
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v2, Lcom/sec/android/app/camera/menu/BaseMenu$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/BaseMenu$8;-><init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1318
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1319
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->translationDeltaY:F

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    div-float v3, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    iget v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1321
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x1d6

    new-instance v3, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v3}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1322
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterSnapshotRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v4, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1324
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1327
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_1

    .line 1328
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v2, Lcom/sec/android/app/camera/menu/BaseMenu$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/BaseMenu$9;-><init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1345
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1346
    iget-object v10, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->translationDeltaY:F

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    div-float v3, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    iget v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SCREEN_HEIGHT:I

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1348
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1349
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSnapshotShutterRatio:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v4, v11

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1351
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1354
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_2

    .line 1355
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    new-instance v2, Lcom/sec/android/app/camera/menu/BaseMenu$10;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/BaseMenu$10;-><init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1372
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1373
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x12c

    new-instance v3, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v3}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1374
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

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

    .line 1375
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1377
    :cond_2
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 13
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 616
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v7, :cond_1

    .line 617
    const-string v6, "BaseMenu"

    const-string v7, "CameraContext is null."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_0
    :goto_0
    return v5

    .line 621
    :cond_1
    if-nez p1, :cond_2

    .line 622
    const-string v6, "BaseMenu"

    const-string v7, "View is null."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 626
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->isShutterProgressWheelVisible()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 627
    :cond_3
    const-string v6, "BaseMenu"

    const-string v7, "Capture is now in progress."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 631
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v7

    if-nez v7, :cond_5

    .line 632
    const-string v6, "BaseMenu"

    const-string v7, "Preview has not started yet."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 636
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 637
    :cond_6
    const-string v6, "BaseMenu"

    const-string v7, "Recording is now in progress."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 641
    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isPreviewChangingAnimationRunning()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 642
    const-string v6, "BaseMenu"

    const-string v7, "Change preview animation is now in progress."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    :cond_8
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v7

    if-nez v7, :cond_9

    .line 647
    const-string v6, "BaseMenu"

    const-string v7, "ShootingMode isn\'t activate yet."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 651
    :cond_9
    const-string v7, "BaseMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClick : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_0

    .line 672
    :sswitch_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleCoverCameraClosed()V

    move v5, v6

    .line 673
    goto/16 :goto_0

    .line 655
    :sswitch_1
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->waitForPictureSavingThread()V

    .line 657
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->isThumbnailExist()Z

    move-result v5

    if-nez v5, :cond_c

    .line 658
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v7, 0xbe0

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->isActive(I)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v7, 0xbe1

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->isActive(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 659
    :cond_a
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v1, v5, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 660
    .local v1, "backgroundAni":Landroid/view/animation/Animation;
    const v5, 0x7f0e0007

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 661
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    .line 662
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/BaseMenu;->showView(I)V

    .line 664
    .end local v1    # "backgroundAni":Landroid/view/animation/Animation;
    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showNoImagePopup()V

    .line 669
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->collapseMenu()V

    move v5, v6

    .line 670
    goto/16 :goto_0

    .line 666
    :cond_c
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v7, 0x1d

    const/16 v8, 0x1c21

    invoke-interface {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    .line 667
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v7, "quickview"

    invoke-interface {v5, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onLaunchGallery(Ljava/lang/String;)Z

    goto :goto_1

    .line 675
    :sswitch_2
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/menu/PageNavigator;->getCurrentSelectPage()I

    move-result v7

    const/16 v8, 0x1d4c

    if-eq v7, v8, :cond_0

    .line 678
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 681
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 682
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->isActive(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 683
    const-string v6, "BaseMenu"

    const-string v7, "already show front mode list"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 687
    :cond_d
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v7, v10}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->isActive(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 688
    const-string v6, "BaseMenu"

    const-string v7, "already show mode list"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 692
    :cond_e
    const/16 v3, 0x7f

    .line 693
    .local v3, "commandId":I
    sget-boolean v7, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-nez v7, :cond_f

    .line 694
    const/16 v3, 0x8

    .line 695
    :cond_f
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isWatermarkSupported()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectListType()I

    move-result v7

    if-ne v7, v6, :cond_10

    .line 696
    const/16 v3, 0x7d

    .line 698
    :cond_10
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v7, v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 699
    .local v4, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isAnimationFinished()Z

    move-result v7

    if-nez v7, :cond_11

    .line 700
    const-string v6, "BaseMenu"

    const-string v7, "effect list animation is running.."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 703
    :cond_11
    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 704
    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 707
    :cond_12
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeMSGToStopTouchAE()V

    .line 708
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 710
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->collapseMenu()V

    .line 712
    const/high16 v5, 0x7f0e0000

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 713
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 714
    new-instance v5, Lcom/sec/android/app/camera/menu/BaseMenu$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/menu/BaseMenu$4;-><init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 728
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->startBaseMenuAnimation(Landroid/view/animation/Animation;)V

    .line 730
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onLaunchMenu(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 731
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v2, v12, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 732
    .local v2, "backgroundAnimation":Landroid/view/animation/Animation;
    const v5, 0x7f0e0008

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 733
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 734
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v5

    invoke-interface {v5, v2, v11}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 736
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v7, 0x1d4c

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/menu/PageNavigator;->onPageSelected(I)V

    .line 737
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v7, "G011"

    invoke-static {v10}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "backgroundAnimation":Landroid/view/animation/Animation;
    :cond_13
    move v5, v6

    .line 739
    goto/16 :goto_0

    .line 742
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v3    # "commandId":I
    .end local v4    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :sswitch_3
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/menu/PageNavigator;->getCurrentSelectPage()I

    move-result v7

    const/16 v8, 0x1d4d

    if-eq v7, v8, :cond_0

    .line 745
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->collapseMenu()V

    .line 746
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v7, 0x1d4d

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/menu/PageNavigator;->onPageSelected(I)V

    move v5, v6

    .line 747
    goto/16 :goto_0

    .line 749
    :sswitch_4
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/menu/PageNavigator;->getCurrentSelectPage()I

    move-result v7

    const/16 v8, 0x1d4e

    if-eq v7, v8, :cond_0

    .line 752
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 756
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 757
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 761
    .restart local v4    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :goto_2
    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isAnimationFinished()Z

    move-result v7

    if-nez v7, :cond_15

    .line 762
    const-string v6, "BaseMenu"

    const-string v7, "mode list animation is running.."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 759
    .end local v4    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :cond_14
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v7, v10}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .restart local v4    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto :goto_2

    .line 765
    :cond_15
    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 766
    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 769
    :cond_16
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeMSGToStopTouchAE()V

    .line 770
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 772
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v7, 0x1d4e

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/menu/PageNavigator;->isShowing(I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 773
    const/16 v3, 0x7f

    .line 774
    .restart local v3    # "commandId":I
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isWatermarkSupported()Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v5

    if-nez v5, :cond_17

    .line 775
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectListType()I

    move-result v5

    if-ne v5, v6, :cond_17

    .line 776
    const/16 v3, 0x7d

    .line 780
    :cond_17
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->collapseMenu()V

    .line 782
    const/high16 v5, 0x7f0e0000

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 783
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 784
    new-instance v5, Lcom/sec/android/app/camera/menu/BaseMenu$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/menu/BaseMenu$5;-><init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 798
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->startBaseMenuAnimation(Landroid/view/animation/Animation;)V

    .line 800
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onLaunchMenu(I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 801
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v2, v12, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 802
    .restart local v2    # "backgroundAnimation":Landroid/view/animation/Animation;
    const v5, 0x7f0e0008

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 803
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 804
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v5

    invoke-interface {v5, v2, v11}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 806
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v7, 0x1d4e

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/menu/PageNavigator;->onPageSelected(I)V

    .line 807
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v7, "G011"

    const/16 v8, 0x8

    invoke-static {v8}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v2    # "backgroundAnimation":Landroid/view/animation/Animation;
    .end local v3    # "commandId":I
    :cond_18
    move v5, v6

    .line 810
    goto/16 :goto_0

    .line 653
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1d -> :sswitch_1
        0x1d4c -> :sswitch_2
        0x1d4d -> :sswitch_3
        0x1d4e -> :sswitch_4
    .end sparse-switch
.end method

.method public onFlingDirection(II)Z
    .locals 11
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x1d4e

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 819
    const-string v5, "BaseMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFlingDirection direction : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", orientation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/menu/BaseMenu;->isPressed(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->isShutterProgressWheelVisible()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchingCamera()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 948
    :cond_0
    :goto_0
    return v3

    .line 825
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAEDrag()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDivideAFDrag()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDivideAFStarted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 829
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/OverlayLayout;->isTouchEVStartMove()Z

    move-result v5

    if-nez v5, :cond_0

    .line 833
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->isSwitchingCamera()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 834
    :cond_2
    const-string v4, "BaseMenu"

    const-string v5, "Switch camera is now in progress."

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 838
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v5

    if-nez v5, :cond_0

    .line 842
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeMSGToStopTouchAE()V

    .line 843
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    .line 845
    if-eq p2, v4, :cond_4

    if-ne p2, v8, :cond_5

    .line 846
    :cond_4
    if-nez p1, :cond_6

    .line 847
    const/4 p1, 0x1

    .line 854
    :cond_5
    :goto_1
    if-nez p1, :cond_a

    .line 855
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/PageNavigator;->isVisible()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v6, 0x1d4c

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/menu/PageNavigator;->isShowing(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 858
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 859
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->isActive(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 860
    const-string v4, "BaseMenu"

    const-string v5, "already show front mode list"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 848
    :cond_6
    if-ne p1, v4, :cond_5

    .line 849
    const/4 p1, 0x0

    goto :goto_1

    .line 864
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->isActive(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 865
    const-string v4, "BaseMenu"

    const-string v5, "already show mode list"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 870
    :cond_8
    const/high16 v3, 0x7f0e0000

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 871
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 872
    new-instance v3, Lcom/sec/android/app/camera/menu/BaseMenu$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/menu/BaseMenu$6;-><init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 886
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->startBaseMenuAnimation(Landroid/view/animation/Animation;)V

    .line 888
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-interface {v3, v8}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onLaunchMenu(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 889
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v1, v10, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 890
    .local v1, "backgroundAnimation":Landroid/view/animation/Animation;
    const v3, 0x7f0e0008

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 891
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 892
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v1, v5}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 894
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v5, 0x1d4c

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/menu/PageNavigator;->onPageSelected(I)V

    .line 895
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v5, "G012"

    invoke-static {v8}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "backgroundAnimation":Landroid/view/animation/Animation;
    :cond_9
    move v3, v4

    .line 897
    goto/16 :goto_0

    .line 898
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_a
    if-ne p1, v4, :cond_e

    .line 899
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/PageNavigator;->isVisible()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/camera/menu/PageNavigator;->isShowing(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 902
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/camera/menu/PageNavigator;->isShowing(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 903
    const/16 v2, 0x7f

    .line 904
    .local v2, "commandId":I
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isWatermarkSupported()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v5

    if-nez v5, :cond_b

    .line 905
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectListType()I

    move-result v5

    if-ne v5, v4, :cond_b

    .line 906
    const/16 v2, 0x7d

    .line 909
    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->isActive(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 910
    const-string v4, "BaseMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "already show effect menu "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 914
    :cond_c
    const/high16 v3, 0x7f0e0000

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 915
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 916
    new-instance v3, Lcom/sec/android/app/camera/menu/BaseMenu$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/menu/BaseMenu$7;-><init>(Lcom/sec/android/app/camera/menu/BaseMenu;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 930
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->startBaseMenuAnimation(Landroid/view/animation/Animation;)V

    .line 932
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onLaunchMenu(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 933
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v1, v10, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 934
    .restart local v1    # "backgroundAnimation":Landroid/view/animation/Animation;
    const v3, 0x7f0e0008

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 935
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 936
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v1, v5}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 938
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v3, v9}, Lcom/sec/android/app/camera/menu/PageNavigator;->onPageSelected(I)V

    .line 939
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v5, "G012"

    const/16 v6, 0x8

    invoke-static {v6}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "backgroundAnimation":Landroid/view/animation/Animation;
    .end local v2    # "commandId":I
    :cond_d
    move v3, v4

    .line 942
    goto/16 :goto_0

    .line 943
    :cond_e
    if-eq p1, v8, :cond_f

    const/4 v5, 0x3

    if-ne p1, v5, :cond_0

    .line 944
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onSwitchCameraSelect()Z

    .line 945
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v5, 0x24

    const/16 v6, 0x1c3f

    invoke-interface {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    move v3, v4

    .line 946
    goto/16 :goto_0
.end method

.method protected onHide()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1381
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    .line 1383
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 1385
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 1386
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->clear()V

    .line 1387
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 1390
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1391
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->isReviewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mQuickView:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/QuickView;->isShareViaWorking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1392
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/BaseMenu;->hideReview(Z)V

    .line 1396
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 1397
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->cancelAnimation()V

    .line 1398
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1399
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1400
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomParentView:Lcom/samsung/android/glview/GLView;

    .line 1401
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    .line 1403
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_3

    .line 1404
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->cancelAnimation()V

    .line 1405
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1406
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1407
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleParentView:Lcom/samsung/android/glview/GLView;

    .line 1408
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    .line 1410
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_4

    .line 1411
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->cancelAnimation()V

    .line 1412
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 1413
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    .line 1414
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopParentView:Lcom/samsung/android/glview/GLView;

    .line 1415
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    .line 1418
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1419
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1421
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTranslate()V

    .line 1422
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->RECORDING_BUTTON_WIDTH:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 1423
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 1425
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->resetTranslate()V

    .line 1426
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->SHUTTER_BUTTON_EXPAND_AREA:F

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->setSize(FF)V

    .line 1427
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    .line 1428
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    .line 1430
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->isVisible()I

    move-result v0

    if-nez v0, :cond_5

    .line 1431
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->endShutterProgressWheel()V

    .line 1434
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    if-eqz v0, :cond_6

    .line 1435
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->setVisibility(I)V

    .line 1438
    :cond_6
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FLOATING_CAMERA_BUTTON:Z

    if-eqz v0, :cond_7

    .line 1439
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 1440
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setVisibility(IZ)V

    .line 1443
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->hideHelp(Z)V

    .line 1444
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1449
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1454
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/menu/OverlayHelp;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1459
    const/4 v0, 0x1

    .line 1461
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

    .line 953
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_7

    .line 954
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 955
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v1, :cond_3

    .line 956
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 957
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 972
    :cond_2
    :goto_0
    return v0

    .line 960
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 961
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 965
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 966
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_7

    .line 967
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_2

    .line 968
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 972
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/menu/OverlayHelp;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    const/4 v0, 0x1

    .line 1469
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x1b

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 977
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x42

    if-eq v2, v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_2

    .line 978
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 979
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_4

    .line 980
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1008
    :cond_2
    :goto_0
    return v0

    .line 982
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_2

    .line 986
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_5

    .line 987
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v0, :cond_6

    .line 988
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_5
    :goto_1
    move v0, v1

    .line 993
    goto :goto_0

    .line 990
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 994
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 995
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    const/16 v3, 0x190

    if-ne v2, v3, :cond_2

    .line 996
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_a

    .line 997
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_2

    .line 999
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1003
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_b

    .line 1004
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x82

    invoke-interface {v0, v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_b
    move v0, v1

    .line 1005
    goto :goto_0
.end method

.method public onScrollDirection(II)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 1013
    const-string v0, "BaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollDirection direction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/menu/BaseMenu;->onFlingDirection(II)Z

    move-result v0

    return v0
.end method

.method protected onShow()V
    .locals 5

    .prologue
    .line 1474
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setFocusChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;)V

    .line 1476
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1477
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 1483
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1484
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    .line 1487
    :cond_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FLOATING_CAMERA_BUTTON:Z

    if-eqz v2, :cond_3

    .line 1488
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_global_camera_floating_camera_mode_pos_x_key"

    iget v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->FLOATING_CAMERA_BUTTON_POS_X:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1489
    .local v0, "savePosX":I
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_global_camera_floating_camera_mode_pos_y_key"

    iget v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->FLOATING_CAMERA_BUTTON_POS_Y:I

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 1491
    .local v1, "savePosY":I
    const-string v2, "BaseMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "floating camera button savePosX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", posY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isFloatingCameraButtonSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    .line 1494
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->getCurrentLeft()F

    move-result v2

    float-to-int v2, v2

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->getCurrentTop()F

    move-result v2

    float-to-int v2, v2

    if-eq v2, v1, :cond_3

    .line 1495
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->getCurrentLeft()F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->getCurrentTop()F

    move-result v4

    float-to-int v4, v4

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->moveBaseLayout(FF)V

    .line 1499
    .end local v0    # "savePosX":I
    .end local v1    # "savePosY":I
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1500
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-nez v2, :cond_4

    .line 1501
    new-instance v2, Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 1506
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1507
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    .line 1508
    return-void

    .line 1479
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1480
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto/16 :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1513
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1518
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

    .line 1019
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->collapseMenu()V

    .line 1021
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1067
    :cond_0
    :goto_0
    return v0

    .line 1023
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1026
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1027
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, p2}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1036
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1038
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 1039
    goto :goto_0

    .line 1031
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, p2}, Lcom/samsung/android/glview/GLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1041
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 1042
    goto :goto_0

    .line 1044
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    move v0, v1

    .line 1045
    goto :goto_0

    .line 1050
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1053
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 1055
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 1056
    goto :goto_0

    .line 1058
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 1059
    goto :goto_0

    .line 1061
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    move v0, v1

    .line 1062
    goto :goto_0

    .line 1021
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x41 -> :sswitch_1
    .end sparse-switch

    .line 1036
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1053
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    const/16 v2, 0x19d

    const/16 v1, 0x19c

    .line 1073
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->isShareViaWorking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->hideReview(Z)V

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-nez v0, :cond_2

    .line 1095
    :cond_1
    :goto_0
    return-void

    .line 1081
    :cond_2
    if-eqz p1, :cond_4

    .line 1082
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1083
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1084
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->registerEAM(I)V

    .line 1087
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1089
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->registerEAM(I)V

    goto :goto_0

    .line 1093
    :cond_4
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->unregisterEAM(I)V

    goto :goto_0
.end method

.method public removeSideQuickSettingItems()V
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->clearSideQuickSetting()V

    .line 1100
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 1101
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideSideQuickSettingToast()V

    .line 1102
    return-void
.end method

.method public setBaseMenuAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->setAlpha(F)V

    .line 1109
    :cond_0
    return-void
.end method

.method public setCapturingProgress(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

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

    .line 1114
    return-void
.end method

.method public setCoverCamera(Z)V
    .locals 1
    .param p1, "coverCamera"    # Z

    .prologue
    .line 1118
    if-nez p1, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->refreshItem()V

    .line 1121
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setCoverCamera(Z)V

    .line 1122
    return-void
.end method

.method protected declared-synchronized setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 1
    .param p1, "shootingModeViewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p2, "shootingModeControllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 1522
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 1523
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->resetView()V

    .line 1524
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->resetPageNavigatorItem()V

    .line 1525
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/BaseMenu;->hideView(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    monitor-exit p0

    return-void

    .line 1522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs setSideQuickSettingItems([I)V
    .locals 1
    .param p1, "commandIds"    # [I

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mSideQuickSetting:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->updateSideQuickSetting([I)V

    .line 1128
    :cond_0
    return-void
.end method

.method public showCaptureProgressText()V
    .locals 2

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCaptureProgressText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1133
    return-void
.end method

.method public showView(I)V
    .locals 8
    .param p1, "bitMarker"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v3, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1137
    const-string v0, "BaseMenu"

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

    .line 1138
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1139
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(I)V

    .line 1142
    :cond_0
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_1

    .line 1143
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 1145
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_4

    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1147
    invoke-virtual {p0, v5, v5}, Lcom/sec/android/app/camera/menu/BaseMenu;->setDim(IZ)V

    .line 1149
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1150
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1151
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 1153
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FLOATING_CAMERA_BUTTON:Z

    if-eqz v0, :cond_4

    .line 1154
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isFloatingCameraButtonSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFloatingCameraButton()I

    move-result v0

    if-ne v0, v5, :cond_12

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setVisibility(IZ)V

    .line 1161
    :cond_4
    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v6, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_7

    .line 1162
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v0

    if-eq v0, v5, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 1163
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1164
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 1166
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1168
    :cond_7
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v7, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_8

    .line 1169
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->showThumbnailButton()V

    .line 1171
    :cond_8
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableSideQuickSetting:Z

    if-nez v0, :cond_9

    .line 1172
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->showSideQuickSetting()V

    .line 1174
    :cond_9
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShootingModeView:Z

    if-nez v0, :cond_a

    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_a

    .line 1176
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    .line 1179
    :cond_a
    and-int/lit16 v0, p1, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisablePageNavigatorsGroup:Z

    if-nez v0, :cond_b

    .line 1180
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->showPageNavigator()V

    .line 1182
    :cond_b
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingAnimation:Z

    if-eqz v0, :cond_11

    .line 1183
    iput-boolean v4, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingAnimation:Z

    .line 1184
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_c

    .line 1185
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 1188
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_d

    .line 1189
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1190
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 1192
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_e

    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1194
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 1196
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1197
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1198
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1200
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1202
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1203
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1204
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->startAnimation()V

    .line 1205
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_f

    .line 1206
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1208
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_10

    .line 1209
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mMiddleVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1211
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_11

    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mTopVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 1243
    :cond_11
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    .line 1244
    return-void

    .line 1157
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setVisibility(IZ)V

    goto/16 :goto_0

    .line 1216
    :cond_13
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->hideSideQuickSetting()V

    .line 1217
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1218
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1220
    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableIndicators:Z

    if-nez v0, :cond_14

    .line 1221
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/Indicators;->setVisibility(I)V

    .line 1223
    :cond_14
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableOverlayLayout:Z

    if-nez v0, :cond_15

    .line 1224
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 1225
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setVisibility(I)V

    .line 1227
    :cond_15
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v7, :cond_16

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableThumbnailButton:Z

    if-nez v0, :cond_16

    .line 1228
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_THUMBNAIL_BUTTON_POS_X:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->COVER_THUMBNAIL_BUTTON_POS_Y:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButtonY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FFZ)V

    .line 1229
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setRotatableForCoverCamera(Z)V

    .line 1230
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BaseMenu;->showThumbnailButton()V

    .line 1232
    :cond_16
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v6, :cond_17

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableRecordingButton:Z

    if-nez v0, :cond_17

    .line 1233
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_17

    .line 1234
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1237
    :cond_17
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v5, :cond_11

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mDisableShutterButton:Z

    if-nez v0, :cond_11

    .line 1238
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1239
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 1240
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(IZ)V

    goto/16 :goto_1
.end method
