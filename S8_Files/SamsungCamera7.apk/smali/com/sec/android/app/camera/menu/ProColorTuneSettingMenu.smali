.class public Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "ProColorTuneSettingMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;,
        Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;,
        Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;
    }
.end annotation


# static fields
.field public static final COLOR_TUNE_SLIDE_PRESET_TYPE:I = 0x0

.field public static final COLOR_TUNE_SLIDE_TONE_TYPE:I = 0x1

.field private static final CONTRAST:I = 0x2

.field private static final HIGHLIGHT:I = 0x4

.field private static final NUM_OF_COLOR_TUNE_SLIDER:I = 0x6

.field private static final SATURATION:I = 0x3

.field private static final SHADOW:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ProColorTuneSettingMenu"

.field private static final TEMPERATURE:I = 0x0

.field private static final TINT:I = 0x1


# instance fields
.field private final BACK_BUTTON_POS_X:I

.field private final BACK_BUTTON_WIDTH:I

.field private final BUTTON_TEXT_FONT_SIZE:I

.field private final BUTTON_TEXT_POSITION:I

.field private final BUTTON_TEXT_STROKE_COLOR:I

.field private final BUTTON_TEXT_STROKE_WIDTH:I

.field private final LIST_ITEM_WIDTH:I

.field private final LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

.field private final MENU_BAR_LANDSCAPE_HEIGHT:I

.field private final MENU_BAR_LANDSCAPE_LEFT_MARGIN:I

.field private final MENU_BAR_LANDSCAPE_RIGHT_MARGIN:I

.field private final MENU_BAR_PORTRAIT_HEIGHT:I

.field private final PRESET_SLIDE_NUM_OF_STEP:I

.field private final PRESET_SLIDE_VALUE_OFFSET:I

.field private final RESET_BUTTON_OFFSET:I

.field private final SAVE_BUTTON_LANDSCAPE_MARGIN:I

.field private final SAVE_BUTTON_PORTRAIT_MARGIN:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SLIDE_CENTER_DIVIDER_HEIGHT:I

.field private final SLIDE_CENTER_DIVIDER_WIDTH:I

.field private final SLIDE_FONT_SIZE:I

.field private final SLIDE_GROUP_POS_X:I

.field private final SLIDE_GROUP_POS_Y:I

.field private final SLIDE_GROUP_WIDTH:I

.field private final SLIDE_HEIGHT:I

.field private final SLIDE_POS_X:I

.field private final SLIDE_RIGHT_PADDING:I

.field private final SLIDE_TEXT_STROKE_COLOR:I

.field private final SLIDE_TEXT_STROKE_WIDTH:I

.field private final SLIDE_TEXT_TOP_MARGIN:I

.field private final SLIDE_TOP_PADDING:I

.field private final SLIDE_TOUCH_AREA_HEIGHT:I

.field private final SLIDE_TOUCH_AREA_WIDTH:I

.field private final SLIDE_WIDTH:I

.field private final SLIDE_WIDTH_INTERVAL:I

.field private final TONE_SLIDE_NUM_OF_STEP:I

.field private final TONE_SLIDE_VALUE_OFFSET:I

.field private mBackButton:Lcom/samsung/android/glview/GLButton;

.field private mColorTuneItem:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

.field private mColorTuneSettingListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;

.field private mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

.field private mColorTuneSettingSliderBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;

.field private mColorTuneSlideType:I

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

.field private mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

.field private mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

.field private mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mResetButton:Lcom/samsung/android/glview/GLButton;

.field private mSaveButton:Lcom/samsung/android/glview/GLButton;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mSliderCenter:Lcom/samsung/android/glview/GLView;

.field private mSliderText:[Lcom/samsung/android/glview/GLText;

.field private mToneSlider:[Lcom/samsung/android/glview/GLSlider;

.field private mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

.field private mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 28
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p7, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p8, "zOrder"    # I

    .prologue
    .line 124
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v10, v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v11, v2

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v2 .. v14}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 60
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    .line 61
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    .line 62
    const v2, 0x7f0a00f6

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    .line 63
    const v2, 0x7f0a00f7

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

    .line 64
    const v2, 0x7f0a02da

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    .line 65
    const v2, 0x7f0a02dd

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    .line 66
    const v2, 0x7f0a02dc

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_RIGHT_MARGIN:I

    .line 67
    const v2, 0x7f0a02db

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_LEFT_MARGIN:I

    .line 68
    const v2, 0x7f0a02d1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    .line 69
    const v2, 0x7f0a02d2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    .line 70
    const v2, 0x7f0a02df

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_LANDSCAPE_MARGIN:I

    .line 71
    const v2, 0x7f0a02e0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    .line 72
    const v2, 0x7f0a02de

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    .line 73
    const v2, 0x7f0a02d3

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_FONT_SIZE:I

    .line 74
    const v2, 0x7f0b0025

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_WIDTH:I

    .line 75
    const v2, 0x7f0d002f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_COLOR:I

    .line 76
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_POSITION:I

    .line 77
    const v2, 0x7f0a00fd

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH:I

    .line 78
    const v2, 0x7f0a00fa

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    .line 79
    const v2, 0x7f0a02e2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    .line 80
    const v2, 0x7f0a02e1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    .line 81
    const v2, 0x7f0a00fc

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_X:I

    .line 82
    const v2, 0x7f0a02e6

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    .line 83
    const v2, 0x7f0a02e3

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_RIGHT_PADDING:I

    .line 84
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    .line 85
    const v2, 0x7f0a00fb

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH_INTERVAL:I

    .line 86
    const v2, 0x7f0a02e8

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_WIDTH:I

    .line 87
    const v2, 0x7f0a02e7

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_HEIGHT:I

    .line 88
    const v2, 0x7f0a00f9

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DIVIDER_WIDTH:I

    .line 89
    const v2, 0x7f0a00f8

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DIVIDER_HEIGHT:I

    .line 90
    const v2, 0x7f0a02e5

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_TOP_MARGIN:I

    .line 91
    const v2, 0x7f0b0025

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_STROKE_WIDTH:I

    .line 92
    const v2, 0x7f0d002f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_STROKE_COLOR:I

    .line 93
    const v2, 0x7f0a02e4

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_FONT_SIZE:I

    .line 94
    const v2, 0x7f0b0021

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_NUM_OF_STEP:I

    .line 95
    const v2, 0x7f0b0022

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    .line 96
    const v2, 0x7f0b0023

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_NUM_OF_STEP:I

    .line 97
    const v2, 0x7f0b0024

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    .line 98
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    .line 126
    new-instance v2, Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    int-to-float v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/menu/ProColorTuneList;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setOnProColorTuneListSelectListener(Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setVisibility(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 131
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    int-to-float v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v3, 0x7f0b0009

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    const v4, 0x7f0b000a

    .line 133
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 132
    invoke-static {v3, v4, v5}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 135
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    int-to-float v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    int-to-float v7, v7

    const v8, 0x7f020283

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090205

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    .line 141
    .local v25, "resetText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090214

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v27

    .line 142
    .local v27, "saveText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v26

    .line 143
    .local v26, "resetTextWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v6

    .line 145
    .local v6, "saveTextWidth":F
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_RIGHT_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    const v4, 0x7f0d002c

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTextFont(Landroid/graphics/Typeface;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setStroke(ZFI)V

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 154
    new-instance v7, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->getLeft()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float v9, v2, v26

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    int-to-float v12, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v11, v26

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    const v4, 0x7f0d002c

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTextFont(Landroid/graphics/Typeface;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setStroke(ZFI)V

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 164
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const v3, 0x7f020284

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_LEFT_MARGIN:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    sub-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_LANDSCAPE_MARGIN:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    int-to-float v5, v5

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_LEFT_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_LANDSCAPE_MARGIN:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_LEFT_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 203
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 210
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    .line 211
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    .line 212
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    .line 213
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    .line 214
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    .line 216
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v24, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09000e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v24, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v24, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v24, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v24, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v24, v2

    .line 217
    .local v24, "mText":[Ljava/lang/String;
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090249

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09024f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090157

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090213

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09019d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090227

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v23, v2

    .line 219
    .local v23, "mContentDescription":[Ljava/lang/String;
    new-instance v7, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 222
    new-instance v7, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_MENU_EDIT_TYPE_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->LIST_ITEM_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 225
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    const/4 v2, 0x6

    move/from16 v0, v22

    if-ge v0, v2, :cond_2

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v7, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_X:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH_INTERVAL:I

    add-int/2addr v4, v5

    mul-int v4, v4, v22

    add-int/2addr v3, v4

    int-to-float v9, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    int-to-float v10, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_RIGHT_PADDING:I

    add-int/2addr v3, v4

    int-to-float v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v12, v3

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v7, v2, v22

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    new-instance v7, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    int-to-float v9, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    int-to-float v10, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH:I

    int-to-float v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    int-to-float v12, v3

    const v13, 0x7f02019a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_NUM_OF_STEP:I

    const/4 v15, 0x1

    invoke-direct/range {v7 .. v15}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    aput-object v7, v2, v22

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v23, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090082

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v22

    const v3, 0x7f020086

    const v4, 0x7f020087

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v22

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    .line 235
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setPresetSliderListener(I)V

    .line 237
    new-instance v7, Lcom/samsung/android/glview/GLNinePatch;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DIVIDER_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DIVIDER_HEIGHT:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DIVIDER_WIDTH:I

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_CENTER_DIVIDER_HEIGHT:I

    int-to-float v12, v2

    const v13, 0x7f02019a

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderCenter:Lcom/samsung/android/glview/GLView;

    .line 240
    aget-object v2, v24, v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v11

    .line 241
    .local v11, "sliderTextWidth":F
    aget-object v2, v24, v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v12

    .line 242
    .local v12, "sliderTextHeight":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v13, v24, v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_FONT_SIZE:I

    int-to-float v14, v3

    const v3, 0x7f0d0011

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v15

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    aput-object v7, v2, v22

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v22

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v22

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v11, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_TOP_MARGIN:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v22

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v22

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    add-float/2addr v4, v12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v5, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v22

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v22

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v11, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_TOP_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 246
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v22

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v22

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    add-float/2addr v5, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 251
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v22

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v22

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v22

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v22

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderCenter:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v3, v3, v22

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v22

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v22

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    new-instance v13, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_X:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH_INTERVAL:I

    add-int/2addr v4, v5

    mul-int v4, v4, v22

    add-int/2addr v3, v4

    int-to-float v15, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_RIGHT_PADDING:I

    add-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v18, v0

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    aput-object v13, v2, v22

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    new-instance v13, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_POS_X:I

    int-to-float v15, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_WIDTH:I

    int-to-float v0, v3

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    int-to-float v0, v3

    move/from16 v18, v0

    const v19, 0x7f02019a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_NUM_OF_STEP:I

    move/from16 v20, v0

    const/16 v21, 0x1

    invoke-direct/range {v13 .. v21}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    aput-object v13, v2, v22

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v23, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090082

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v22

    const v3, 0x7f020086

    const v4, 0x7f020087

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOUCH_AREA_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v2, v2, v22

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    .line 270
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setToneSliderListener(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderCenter:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v2, v2, v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v3, v3, v22

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v3, v3, v22

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v3, v3, v22

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 225
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 184
    .end local v11    # "sliderTextWidth":F
    .end local v12    # "sliderTextHeight":F
    .end local v22    # "i":I
    .end local v23    # "mContentDescription":[Ljava/lang/String;
    .end local v24    # "mText":[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_LEFT_MARGIN:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BACK_BUTTON_POS_X:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_RIGHT_MARGIN:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v6

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_LANDSCAPE_MARGIN:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    int-to-float v5, v5

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float v4, v4, v26

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    sub-float v5, v5, v26

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_LANDSCAPE_MARGIN:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float v4, v4, v26

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SAVE_BUTTON_PORTRAIT_MARGIN:I

    int-to-float v5, v5

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->RESET_BUTTON_OFFSET:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    add-float v5, v5, v26

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_0

    .line 249
    .restart local v11    # "sliderTextWidth":F
    .restart local v12    # "sliderTextHeight":F
    .restart local v22    # "i":I
    .restart local v23    # "mContentDescription":[Ljava/lang/String;
    .restart local v24    # "mText":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSliderText:[Lcom/samsung/android/glview/GLText;

    aget-object v2, v2, v22

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderGroup:[Lcom/samsung/android/glview/GLViewGroup;

    aget-object v4, v4, v22

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_GROUP_POS_Y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_TOP_PADDING:I

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->SLIDE_HEIGHT:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    goto/16 :goto_2

    .line 277
    .end local v11    # "sliderTextWidth":F
    .end local v12    # "sliderTextHeight":F
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 282
    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 283
    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mShowAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mHideAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 286
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingSliderBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->isTtsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)[Lcom/samsung/android/glview/GLSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->speakTtsString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;)[Lcom/samsung/android/glview/GLSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    return-object v0
.end method

.method private isTtsEnabled()Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 504
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPresetSliderListener(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 508
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, p1

    new-instance v1, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$1;-><init>(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 547
    return-void
.end method

.method private setToneSliderListener(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, p1

    new-instance v1, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$2;-><init>(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 589
    return-void
.end method

.method private speakTtsString(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttsString"    # Ljava/lang/String;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 593
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 290
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 291
    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 6
    .param p1, "v"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 295
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;->onColorTuneSettingCancel()V

    .line 297
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->hideMenu()V

    .line 324
    :goto_0
    return v0

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 300
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-nez v2, :cond_2

    .line 301
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v2, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v3

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v4

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 305
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 306
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 315
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;->onColorTuneSettingReset()V

    .line 316
    const-string v1, "2051"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-ne v2, v0, :cond_1

    .line 308
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v2, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 309
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 310
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v3

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v4

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 313
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    goto :goto_1

    .line 318
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 319
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;->onColorTuneSettingSave()V

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->hideMenu()V

    .line 321
    const-string v1, "2052"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 324
    goto/16 :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 417
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setPreviewTouchEnabled(Z)V

    .line 418
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 424
    const-string v0, "201"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 430
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 434
    sparse-switch p1, :sswitch_data_0

    .line 444
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 440
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 434
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 449
    sparse-switch p1, :sswitch_data_0

    .line 464
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 451
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;->onColorTuneSettingCancel()V

    .line 452
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->hideMenu()V

    goto :goto_0

    .line 449
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 329
    packed-switch p1, :pswitch_data_0

    .line 347
    :goto_0
    return-void

    .line 332
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setHeight(F)V

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_LANDSCAPE_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setHeight(F)V

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    goto :goto_0

    .line 339
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setHeight(F)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->MENU_BAR_PORTRAIT_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setHeight(F)V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_POSITION:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->BUTTON_TEXT_POSITION:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLButton;->setTextPosition(FF)V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onProColorTuneListSelect(I)V
    .locals 1
    .param p1, "selectId"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;->onColorTuneSettingListSelect(I)V

    .line 354
    :cond_0
    return-void
.end method

.method protected onShow()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->getItem(I)Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneItem:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneItem:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneItem:Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->setDim(Z)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->refreshColorTuneItems()V

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mList:Lcom/sec/android/app/camera/menu/ProColorTuneList;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 479
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 486
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setPreviewTouchEnabled(Z)V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    .line 490
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 494
    const-string v0, "202"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 500
    return-void
.end method

.method public setColorTuneSettingListSelectListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingListSelectListener;

    .line 358
    return-void
.end method

.method public setColorTuneSettingMenuBarListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingMenuBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuBarListener;

    .line 362
    return-void
.end method

.method public setColorTuneSettingSlideType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 365
    iput p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    .line 367
    if-nez p1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 375
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSliderViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setColorTuneSettingSliderBarListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSettingSliderBarListener:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderBarListener;

    .line 379
    return-void
.end method

.method public setResetButtonDim(Z)V
    .locals 1
    .param p1, "isDim"    # Z

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mResetButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 383
    return-void
.end method

.method public setSaveButtonDim(Z)V
    .locals 1
    .param p1, "isDim"    # Z

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mSaveButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 387
    return-void
.end method

.method public updateColorTuneSlider([I)V
    .locals 7
    .param p1, "values"    # [I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 390
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v1

    aget v1, p1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v3

    aget v1, p1, v3

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v4

    aget v1, p1, v4

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v5

    aget v1, p1, v5

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v6

    aget v1, p1, v6

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mPresetSlider:[Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->PRESET_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mColorTuneSlideType:I

    if-ne v0, v3, :cond_0

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v1

    aget v1, p1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v3

    aget v1, p1, v3

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v4

    aget v1, p1, v4

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v5

    aget v1, p1, v5

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    aget-object v0, v0, v6

    aget v1, p1, v6

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->mToneSlider:[Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->TONE_SLIDE_VALUE_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    goto :goto_0
.end method
