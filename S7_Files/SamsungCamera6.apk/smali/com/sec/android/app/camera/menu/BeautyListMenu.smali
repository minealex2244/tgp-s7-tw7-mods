.class public Lcom/sec/android/app/camera/menu/BeautyListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "BeautyListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;,
        Lcom/sec/android/app/camera/menu/BeautyListMenu$BeautySliderHandler;
    }
.end annotation


# static fields
.field private static final HELP_TEXT_TIMEOUT:I = 0x1b58

.field private static final HIDE_SLIDER_TIME_OUT_MSG:I = 0x0

.field private static final HIDE_TIME_INTERVAL:J = 0x1770L

.field private static final TAG:Ljava/lang/String; = "BeautyListMenu"


# instance fields
.field private final BEAUTY_ITEM_HEIGHT:F

.field private final BEAUTY_ITEM_WIDTH:F

.field private final BEAUTY_MENU_BOTTOM_MARGIN:F

.field private final BEAUTY_MENU_HEIGHT:F

.field private final BEAUTY_MENU_SIDE_MARGIN:F

.field private final BEAUTY_MENU_WIDTH:F

.field private final BEAUTY_SLIDER_GROUP_WIDTH:F

.field private final BEAUTY_SLIDER_HEIGHT:F

.field private final BEAUTY_SLIDER_SPACE:F

.field private final BEAUTY_SLIDER_TEXT_MARGIN:F

.field private final BEAUTY_SLIDER_TEXT_WIDTH:F

.field private final BEAUTY_SLIDER_WIDTH:F

.field private final HELP_TEXT_BOTTOM_LANDSCAPE_MARGIN:F

.field private final HELP_TEXT_BOTTOM_PORTRAIT_MARGIN_FROM_MENU:F

.field private final HELP_TEXT_HEIGHT:F

.field private final HELP_TEXT_HEIGHT_VERTICAL:F

.field private final HELP_TEXT_SET_SHADOW:Z

.field private final HELP_TEXT_SIZE:F

.field private final HELP_TEXT_STROKE_WIDTH:I

.field private final HELP_TEXT_WIDTH:F

.field private final HELP_TEXT_WIDTH_VERTICAL:F

.field private final INDICATOR_TEXT_STROKE_COLOR:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SKIN_COLOR_SLIDER_GROUP_WIDTH:I

.field private final SKIN_COLOR_SLIDER_WIDTH:I

.field private final SLIDEBAR_TOUCH_AREA_HEIGHT:F

.field private final SLIDEBAR_TOUCH_AREA_WIDTH:F

.field private final SLIDER_LEVEL_TEXT_COLOR:I

.field private final SLIDER_LEVEL_TEXT_SIZE:F

.field private final SLIDER_LEVEL_TEXT_STROKE_COLOR:I

.field private final SLIDER_LEVEL_TEXT_STROKE_WIDTH:I

.field private final SLIDER_TITLE_HEIGHT:I

.field private final SLIDER_TITLE_TEXT_SIZE:I

.field private final SLIDER_TITLE_TOP_PADDING:I

.field private final SPOT_LIGHT_IMAGE_SIZE:F

.field private final SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:F

.field private final SPOT_LIGHT_INDICATOR_TEXT_SIZE:F

.field private final SPOT_LIGHT_SLIDER_DIVIDER_SIZE:F

.field private final SPOT_LIGHT_SLIDER_IMAGE_MARGIN:F

.field private final SPOT_LIGHT_SLIDER_TEXT_MARGIN:F

.field private mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

.field private mBeautyLevelText:Lcom/samsung/android/glview/GLText;

.field private mBeautyMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mBeautySlider:Lcom/samsung/android/glview/GLSlider;

.field private mBeautySliderGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mBeautySliderHandler:Lcom/sec/android/app/camera/menu/BeautyListMenu$BeautySliderHandler;

.field private mColorText:Lcom/samsung/android/glview/GLText;

.field private final mHideShapeCorrectionText:Ljava/lang/Runnable;

.field private mIsShapeCorrectionTextHidedByTimeOut:Z

.field private mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/BeautyItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/samsung/android/glview/GLGridList;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

.field private mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

.field private mSkinColorSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mSmoothText:Lcom/samsung/android/glview/GLText;

.field private mSpotLightImage:Lcom/samsung/android/glview/GLImage;

.field private mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

.field private mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

.field private mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
    .locals 19
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p7, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p8, "zOrder"    # I
    .param p9, "slideDirection"    # I

    .prologue
    .line 139
    const/4 v10, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 63
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_WIDTH:I

    .line 64
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    .line 66
    const v2, 0x7f0b028d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_MENU_WIDTH:F

    .line 67
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_MENU_HEIGHT:F

    .line 68
    const v2, 0x7f0b005d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_MENU_BOTTOM_MARGIN:F

    .line 69
    const v2, 0x7f0b026e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_MENU_SIDE_MARGIN:F

    .line 70
    const v2, 0x7f0b0268

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_WIDTH:F

    .line 71
    const v2, 0x7f0b0267

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_HEIGHT:F

    .line 72
    const v2, 0x7f0d000f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->INDICATOR_TEXT_STROKE_COLOR:I

    .line 74
    const v2, 0x7f0b0346

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_BOTTOM_LANDSCAPE_MARGIN:F

    .line 75
    const v2, 0x7f0b0347

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_BOTTOM_PORTRAIT_MARGIN_FROM_MENU:F

    .line 76
    const v2, 0x7f0b01b2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH:F

    .line 77
    const v2, 0x7f0b01b3

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    .line 78
    const v2, 0x7f0b01b0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT:F

    .line 79
    const v2, 0x7f0b01b1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT_VERTICAL:F

    .line 80
    const v2, 0x7f0b028f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_SIZE:F

    .line 81
    const v2, 0x7f0e0017

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_STROKE_WIDTH:I

    .line 82
    const v2, 0x7f0e0021

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_SET_SHADOW:Z

    .line 84
    const v2, 0x7f0b005f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_SPACE:F

    .line 85
    const v2, 0x7f0b027b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_TEXT_WIDTH:F

    .line 86
    const v2, 0x7f0b0283

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_TEXT_MARGIN:F

    .line 87
    const v2, 0x7f0b0276

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_GROUP_WIDTH:F

    .line 88
    const v2, 0x7f0b028a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_WIDTH:F

    .line 89
    const v2, 0x7f0b0277

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_HEIGHT:F

    .line 90
    const v2, 0x7f0b0289

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:F

    .line 91
    const v2, 0x7f0b0288

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:F

    .line 92
    const v2, 0x7f0b027a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_SIZE:F

    .line 93
    const v2, 0x7f0d0010

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_COLOR:I

    .line 94
    const v2, 0x7f0e0017

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_WIDTH:I

    .line 95
    const v2, 0x7f0d000f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_COLOR:I

    .line 96
    const v2, 0x7f0b0282

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_SIZE:F

    .line 97
    const v2, 0x7f0b027f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_DIVIDER_SIZE:F

    .line 98
    const v2, 0x7f0b028b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_IMAGE_MARGIN:F

    .line 99
    const v2, 0x7f0b028c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_TEXT_MARGIN:F

    .line 100
    const v2, 0x7f0b0281

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:F

    .line 101
    const v2, 0x7f0b0280

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_SIZE:F

    .line 102
    const v2, 0x7f0b027c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SKIN_COLOR_SLIDER_GROUP_WIDTH:I

    .line 103
    const v2, 0x7f0b027d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SKIN_COLOR_SLIDER_WIDTH:I

    .line 104
    const v2, 0x7f0b027e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_TEXT_SIZE:I

    .line 105
    const v2, 0x7f0b0287

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_TOP_PADDING:I

    .line 106
    const v2, 0x7f0b0284

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_HEIGHT:I

    .line 111
    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyListMenu$BeautySliderHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu$BeautySliderHandler;-><init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderHandler:Lcom/sec/android/app/camera/menu/BeautyListMenu$BeautySliderHandler;

    .line 112
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mIsShapeCorrectionTextHidedByTimeOut:Z

    .line 117
    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyListMenu$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu$1;-><init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mHideShapeCorrectionText:Ljava/lang/Runnable;

    .line 130
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 131
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    .line 132
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mColorText:Lcom/samsung/android/glview/GLText;

    .line 133
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSmoothText:Lcom/samsung/android/glview/GLText;

    .line 134
    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/sec/android/app/camera/menu/BeautyListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;Lcom/sec/android/app/camera/menu/BeautyListMenu$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    .line 135
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mItemList:Landroid/util/SparseArray;

    .line 141
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-nez v2, :cond_2

    .line 143
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_MENU_BOTTOM_MARGIN:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_HEIGHT:F

    sub-float v4, v6, v7

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_MENU_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_MENU_HEIGHT:F

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 148
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    .line 149
    .local v4, "helpTextX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_BOTTOM_LANDSCAPE_MARGIN:F

    sub-float v5, v2, v3

    .line 151
    .local v5, "helpTextY":F
    new-instance v2, Lcom/samsung/android/glview/GLText;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT:F

    const-string v8, ""

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_SET_SHADOW:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_STROKE_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v6, v7}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 158
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int v18, v2, v3

    .line 160
    .local v18, "helpTextMargin":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-nez v2, :cond_3

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    move/from16 v0, v18

    int-to-float v6, v0

    sub-float v6, v4, v6

    invoke-virtual {v2, v3, v6, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_MENU_BOTTOM_MARGIN:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_HEIGHT:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_BOTTOM_PORTRAIT_MARGIN_FROM_MENU:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v2, v3, v6, v7}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH:F

    add-float/2addr v6, v4

    move/from16 v0, v18

    int-to-float v7, v0

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_BOTTOM_LANDSCAPE_MARGIN:F

    sub-float/2addr v7, v8

    invoke-virtual {v2, v3, v6, v7}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_MENU_BOTTOM_MARGIN:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_HEIGHT:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_BOTTOM_PORTRAIT_MARGIN_FROM_MENU:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v2, v3, v6, v7}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 169
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setOrientation(I)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->initBeautySliderMenu()V

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->initSpotLightSliderMenu()V

    .line 176
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SKINCOLOR:Z

    if-eqz v2, :cond_0

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->initSkinToneSliderMenu()V

    .line 180
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v2}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_MENU_SIDE_MARGIN:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_WIDTH:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v6}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v3}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v14, v2, v3

    .line 182
    .local v14, "weight":F
    :goto_3
    new-instance v6, Lcom/samsung/android/glview/GLGridList;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_MENU_SIDE_MARGIN:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_WIDTH:F

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v6 .. v17}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFFFI)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLGridList;->setInternalFocus(Z)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    const/16 v3, 0x81

    move-object/from16 v0, p0

    invoke-interface {v2, v3, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    const/16 v3, 0x71

    move-object/from16 v0, p0

    invoke-interface {v2, v3, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 192
    return-void

    .line 82
    .end local v4    # "helpTextX":F
    .end local v5    # "helpTextY":F
    .end local v14    # "weight":F
    .end local v18    # "helpTextMargin":I
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 145
    :cond_2
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_HEIGHT:F

    sub-float v4, v6, v7

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_MENU_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_MENU_HEIGHT:F

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    goto/16 :goto_1

    .line 166
    .restart local v4    # "helpTextX":F
    .restart local v5    # "helpTextY":F
    .restart local v18    # "helpTextMargin":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_HEIGHT:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_BOTTOM_PORTRAIT_MARGIN_FROM_MENU:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v2, v3, v6, v7}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    goto/16 :goto_2

    .line 180
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v14, v2, v3

    goto/16 :goto_3
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/menu/BeautyListMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mIsShapeCorrectionTextHidedByTimeOut:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/BeautyListMenu;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_WIDTH:F

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/BeautyListMenu;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_ITEM_HEIGHT:F

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Lcom/samsung/android/glview/GLSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySlider:Lcom/samsung/android/glview/GLSlider;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Lcom/samsung/android/glview/GLGridList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/BeautyListMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->updateLevel(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->restartSliderMenuTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/BeautyListMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->speakBeautyLevel(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/BeautyListMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->updateSkinColorLevel(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/BeautyListMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->updateSpotLightPosition(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/BeautyListMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->speakSpotLightPosition(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->stopSliderMenuTimer()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/BeautyListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method private findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    .locals 4

    .prologue
    .line 381
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    .line 383
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 384
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    .line 385
    .local v0, "beautyItem":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    .end local v0    # "beautyItem":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    :goto_1
    return-object v0

    .line 383
    .restart local v0    # "beautyItem":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "beautyItem":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getCurrentSpotLightPosition()I
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 394
    const-string v0, "BeautyListMenu"

    const-string v1, "mCameraContext is null, so return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v0, 0x1

    .line 398
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightPosition()I

    move-result v0

    goto :goto_0
.end method

.method private getCurrentStep(I)I
    .locals 3
    .param p1, "beautyMode"    # I

    .prologue
    const/4 v0, 0x0

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v1, :cond_0

    .line 403
    const-string v1, "BeautyListMenu"

    const-string v2, "mCameraContext is null, so return"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_0
    return v0

    .line 406
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 408
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v0

    goto :goto_0

    .line 410
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v0

    goto :goto_0

    .line 412
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v0

    goto :goto_0

    .line 414
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v0

    goto :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private initBeautySliderMenu()V
    .locals 17

    .prologue
    .line 421
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_HEIGHT:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_TEXT_MARGIN:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_TEXT_WIDTH:F

    add-float v6, v1, v2

    .line 423
    .local v6, "beautySliderGroupHeight":F
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_SPACE:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_GROUP_WIDTH:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sub-float/2addr v4, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_GROUP_WIDTH:F

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 426
    new-instance v7, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_TEXT_MARGIN:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_TEXT_WIDTH:F

    add-float v10, v1, v2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_WIDTH:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_HEIGHT:F

    const v13, 0x7f02018c

    const/16 v14, 0x9

    const/4 v15, 0x1

    invoke-direct/range {v7 .. v15}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySlider:Lcom/samsung/android/glview/GLSlider;

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyListMenu$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu$2;-><init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySlider:Lcom/samsung/android/glview/GLSlider;

    const v2, 0x7f0a0080

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySlider:Lcom/samsung/android/glview/GLSlider;

    const v2, 0x7f020082

    const v3, 0x7f020083

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setClipping(Z)V

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    .line 447
    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_TEXT_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, v1, v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_GROUP_WIDTH:F

    const-string v13, ""

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 448
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float v14, v1, v2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_COLOR:I

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyLevelText:Lcom/samsung/android/glview/GLText;

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 452
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyLevelText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 457
    return-void
.end method

.method private initSkinToneSliderMenu()V
    .locals 24

    .prologue
    .line 460
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_HEIGHT:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_TEXT_MARGIN:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_TEXT_WIDTH:F

    add-float v6, v1, v2

    .line 462
    .local v6, "skinToneSliderGroupHeight":F
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_HEIGHT:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_SPACE:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SKIN_COLOR_SLIDER_GROUP_WIDTH:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sub-float/2addr v4, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SKIN_COLOR_SLIDER_GROUP_WIDTH:I

    int-to-float v5, v5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 464
    new-instance v7, Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SKIN_COLOR_SLIDER_GROUP_WIDTH:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_TEXT_MARGIN:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_TEXT_WIDTH:F

    add-float v10, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SKIN_COLOR_SLIDER_WIDTH:I

    int-to-float v11, v1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_HEIGHT:F

    const v13, 0x7f020022

    const/16 v14, 0x9

    const/4 v15, 0x0

    invoke-direct/range {v7 .. v15}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    .line 466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyListMenu$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu$3;-><init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    const v2, 0x7f0a0080

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setTitle(Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    const v2, 0x7f020082

    const v3, 0x7f020083

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setGaugeZeroStep(I)V

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setClickable(Z)V

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setClipping(Z)V

    .line 481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    .line 483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a011a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    .line 484
    .local v13, "colorText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a011b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    .line 485
    .local v20, "smoothText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v13, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v11

    .line 486
    .local v11, "colorTextWidth":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v18

    .line 488
    .local v18, "smoothTextWidth":F
    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SKIN_COLOR_SLIDER_GROUP_WIDTH:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SKIN_COLOR_SLIDER_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v11, v2

    sub-float v9, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_TOP_PADDING:I

    int-to-float v1, v1

    add-float v10, v6, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_HEIGHT:I

    int-to-float v12, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_TEXT_SIZE:I

    int-to-float v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_COLOR:I

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mColorText:Lcom/samsung/android/glview/GLText;

    .line 489
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mColorText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_HEIGHT:I

    int-to-float v3, v3

    sub-float v4, v6, v11

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mColorText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SKIN_COLOR_SLIDER_GROUP_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SKIN_COLOR_SLIDER_WIDTH:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v11, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_TOP_PADDING:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mColorText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v6}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mColorText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mColorText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mColorText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 495
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mColorText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 497
    new-instance v14, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v15

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SKIN_COLOR_SLIDER_GROUP_WIDTH:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_SPACE:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_HEIGHT:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v18, v2

    sub-float v16, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_TOP_PADDING:I

    int-to-float v1, v1

    add-float v17, v6, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_HEIGHT:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_TEXT_SIZE:I

    int-to-float v0, v1

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_COLOR:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v14 .. v23}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSmoothText:Lcom/samsung/android/glview/GLText;

    .line 498
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSmoothText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SKIN_COLOR_SLIDER_GROUP_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_SPACE:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_HEIGHT:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, v6, v18

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 499
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSmoothText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SKIN_COLOR_SLIDER_GROUP_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_SPACE:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_HEIGHT:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_WIDTH:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v18, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_TOP_PADDING:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_TITLE_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 500
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSmoothText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SKIN_COLOR_SLIDER_GROUP_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_SPACE:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3, v6}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 501
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSmoothText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 502
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSmoothText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 503
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSmoothText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSmoothText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 506
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 507
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mColorText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSmoothText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 511
    return-void
.end method

.method private initSpotLightSliderMenu()V
    .locals 24

    .prologue
    .line 514
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_HEIGHT:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_IMAGE_MARGIN:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_SIZE:F

    add-float v6, v1, v2

    .line 515
    .local v6, "spotLightSliderGroupHeight":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_TEXT_MARGIN:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:F

    add-float v5, v1, v2

    .line 517
    .local v5, "spotLightSliderGroupWidth":F
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_SPACE:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 518
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v7

    sub-float v7, v6, v7

    sub-float/2addr v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 519
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 521
    new-instance v7, Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_TEXT_MARGIN:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v9, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_SIZE:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_IMAGE_MARGIN:F

    add-float v10, v1, v2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_WIDTH:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_HEIGHT:F

    const v13, 0x7f02018c

    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-direct/range {v7 .. v15}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    .line 523
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyListMenu$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu$4;-><init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const v2, 0x7f0a0080

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setTitle(Ljava/lang/String;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const v2, 0x7f020175

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_DIVIDER_SIZE:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->getHeight()F

    move-result v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_DIVIDER_SIZE:F

    sub-float/2addr v4, v7

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setDivider(III)V

    .line 536
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const v2, 0x7f020082

    const v3, 0x7f020083

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setGaugeMarker(II)V

    .line 537
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setGaugeZeroStep(I)V

    .line 538
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setCurrentStep(I)Z

    .line 539
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->expandTouchAreaFromCenter(FF)V

    .line 540
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setClickable(Z)V

    .line 541
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setClipping(Z)V

    .line 542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setVisibility(I)V

    .line 544
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a01b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 545
    .local v13, "leftText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v13, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v11

    .line 546
    .local v11, "leftTextWidth":F
    new-instance v7, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:F

    sub-float v9, v1, v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:F

    sub-float v10, v1, v2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_COLOR:I

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    .line 548
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->getBottom()F

    move-result v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:F

    sub-float/2addr v4, v7

    sub-float/2addr v4, v11

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 549
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_TEXT_MARGIN:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 550
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 551
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 555
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0206

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 556
    .local v20, "rightText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_SIZE:F

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v18

    .line 557
    .local v18, "rightTextWidth":F
    new-instance v14, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v15

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:F

    sub-float v16, v1, v18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_SIZE:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_IMAGE_MARGIN:F

    add-float v17, v1, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_SIZE:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_COLOR:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v14 .. v23}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    .line 559
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_SIZE:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_TEXT_MARGIN:F

    add-float/2addr v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->BEAUTY_SLIDER_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_TEXT_MARGIN:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_SIZE:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_TEXT_MARGIN:F

    add-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_INDICATOR_TEXT_HEIGHT:F

    add-float/2addr v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 561
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_SLIDER_IMAGE_MARGIN:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_SIZE:F

    add-float/2addr v4, v7

    add-float v4, v4, v18

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SLIDER_LEVEL_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 566
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->SPOT_LIGHT_IMAGE_SIZE:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    const v7, 0x7f02000a

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    .line 567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 569
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 571
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 572
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorLeft:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderIndicatorRight:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 577
    return-void
.end method

.method private refreshSlider(I)V
    .locals 10
    .param p1, "beautyMode"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 580
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 581
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 582
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    if-ne p1, v9, :cond_4

    .line 585
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 586
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 592
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    move-result-object v2

    .line 593
    .local v2, "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    if-eqz v2, :cond_2

    .line 594
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v4, v2}, Lcom/samsung/android/glview/GLSlider;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 597
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    .line 598
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->getCurrentStep(I)I

    move-result v1

    .line 599
    .local v1, "currentStep":I
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v4, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 600
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyLevelText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 601
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyLevelText:Lcom/samsung/android/glview/GLText;

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 603
    if-ne p1, v9, :cond_3

    .line 604
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->getCurrentSpotLightPosition()I

    move-result v0

    .line 605
    .local v0, "currentPosition":I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->updateSpotLightPosition(I)V

    .line 607
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setCurrentStep(I)Z

    .line 608
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSlider:Lcom/sec/android/app/camera/widget/gl/DividedSlider;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/camera/widget/gl/DividedSlider;->setVisibility(I)V

    .line 611
    .end local v0    # "currentPosition":I
    :cond_3
    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SKINCOLOR:Z

    if-eqz v4, :cond_0

    .line 612
    if-nez p1, :cond_5

    .line 613
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSkinColorLevel()I

    move-result v3

    .line 614
    .local v3, "skinColorStep":I
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v4, v3}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 616
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    .line 617
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mColorText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 618
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSmoothText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    .line 588
    .end local v1    # "currentStep":I
    .end local v2    # "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    .end local v3    # "skinColorStep":I
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 589
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 620
    .restart local v1    # "currentStep":I
    .restart local v2    # "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSkinColorSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    .line 621
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mColorText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 622
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSmoothText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private restartSliderMenuTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 628
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderHandler:Lcom/sec/android/app/camera/menu/BeautyListMenu$BeautySliderHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu$BeautySliderHandler;->removeMessages(I)V

    .line 629
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderHandler:Lcom/sec/android/app/camera/menu/BeautyListMenu$BeautySliderHandler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/menu/BeautyListMenu$BeautySliderHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 630
    return-void
.end method

.method private speakBeautyLevel(I)V
    .locals 4
    .param p1, "step"    # I

    .prologue
    const v3, 0x7f0a0080

    .line 634
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 648
    :pswitch_0
    const-string v0, ""

    .line 651
    .local v0, "ttsMsg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 652
    return-void

    .line 636
    .end local v0    # "ttsMsg":Ljava/lang/String;
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a011d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    .restart local v0    # "ttsMsg":Ljava/lang/String;
    goto :goto_0

    .line 639
    .end local v0    # "ttsMsg":Ljava/lang/String;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0119

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    .restart local v0    # "ttsMsg":Ljava/lang/String;
    goto :goto_0

    .line 642
    .end local v0    # "ttsMsg":Ljava/lang/String;
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a011c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    .restart local v0    # "ttsMsg":Ljava/lang/String;
    goto :goto_0

    .line 645
    .end local v0    # "ttsMsg":Ljava/lang/String;
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a011e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    .restart local v0    # "ttsMsg":Ljava/lang/String;
    goto/16 :goto_0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private speakSpotLightPosition(I)V
    .locals 4
    .param p1, "step"    # I

    .prologue
    const v2, 0x7f0a011f

    const v3, 0x7f0a0080

    .line 656
    packed-switch p1, :pswitch_data_0

    .line 665
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0135

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "ttsMsg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 669
    return-void

    .line 658
    .end local v0    # "ttsMsg":Ljava/lang/String;
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a01b5

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    .restart local v0    # "ttsMsg":Ljava/lang/String;
    goto :goto_0

    .line 661
    .end local v0    # "ttsMsg":Ljava/lang/String;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0207

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    .restart local v0    # "ttsMsg":Ljava/lang/String;
    goto :goto_0

    .line 656
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private stopSliderMenuTimer()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautySliderHandler:Lcom/sec/android/app/camera/menu/BeautyListMenu$BeautySliderHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu$BeautySliderHandler;->removeMessages(I)V

    .line 674
    return-void
.end method

.method private updateLevel(I)V
    .locals 5
    .param p1, "step"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 677
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 678
    const-string v0, "BeautyListMenu"

    const-string v1, "mCameraContext is null, so return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :goto_0
    return-void

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 683
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyLevel(I)V

    .line 684
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyLevelText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEyeEnlargeLevel(I)V

    .line 688
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyLevelText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSlimFaceLevel(I)V

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyLevelText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 695
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSpotlightLevel(I)V

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mBeautyLevelText:Lcom/samsung/android/glview/GLText;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 681
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateSkinColorLevel(I)V
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 704
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSkinColorLevel(I)V

    .line 705
    return-void
.end method

.method private updateSpotLightPosition(I)V
    .locals 2
    .param p1, "step"    # I

    .prologue
    .line 708
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSpotlightPosition(I)V

    .line 710
    packed-switch p1, :pswitch_data_0

    .line 719
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    .line 722
    :goto_0
    return-void

    .line 712
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    .line 715
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mSpotLightImage:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    .line 710
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    const/16 v1, 0x81

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    const/16 v1, 0x71

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 201
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 202
    return-void
.end method

.method public hideShapeCorrectionHelpText()V
    .locals 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mIsShapeCorrectionTextHidedByTimeOut:Z

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 3
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->restartSliderMenuTimer()V

    .line 219
    const/16 v1, 0x81

    if-ne p1, v1, :cond_1

    .line 220
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->refreshSlider(I)V

    .line 221
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->hideShapeCorrectionHelpText()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const/16 v1, 0x71

    if-ne p1, v1, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    move-result-object v0

    .line 224
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x1967

    if-ne v1, v2, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->hideShapeCorrectionHelpText()V

    .line 228
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    .line 230
    const v1, 0x7f0a0161

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->showShapeCorrectionHelpText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->hideShapeCorrectionHelpText()V

    .line 333
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 338
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 343
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 238
    sparse-switch p1, :sswitch_data_0

    .line 245
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 241
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 238
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 250
    sparse-switch p1, :sswitch_data_0

    .line 260
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 253
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->hideMenu()V

    goto :goto_0

    .line 250
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x42 -> :sswitch_0
        0x6f -> :sswitch_1
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 277
    :goto_0
    return-void

    .line 268
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_WIDTH_VERTICAL:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->HELP_TEXT_HEIGHT_VERTICAL:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onShow()V
    .locals 3

    .prologue
    .line 347
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->refreshSlider(I)V

    .line 348
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->restartSliderMenuTimer()V

    .line 350
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 351
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    .line 352
    .local v0, "beautyItem":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelect(Z)V

    .line 350
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->setSelect(Z)V

    goto :goto_1

    .line 360
    .end local v0    # "beautyItem":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    :cond_2
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 364
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/BeautyItem;

    move-result-object v0

    .line 366
    .local v0, "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BeautyItem;->requestFocus()Z

    .line 370
    .end local v0    # "lastSelectedView":Lcom/sec/android/app/camera/widget/gl/BeautyItem;
    :cond_1
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 375
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 282
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->restartSliderMenuTimer()V

    .line 284
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 307
    :goto_0
    :pswitch_0
    const/4 v4, 0x0

    return v4

    .line 286
    :pswitch_1
    const-string v4, "Z075"

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 287
    .local v0, "cv_beauty_level":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 290
    .end local v0    # "cv_beauty_level":Landroid/content/ContentValues;
    :pswitch_2
    const-string v4, "Z072"

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 291
    .local v1, "cv_large_eyes":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 294
    .end local v1    # "cv_large_eyes":Landroid/content/ContentValues;
    :pswitch_3
    const-string v4, "Z073"

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 295
    .local v2, "cv_slim_face":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 298
    .end local v2    # "cv_slim_face":Landroid/content/ContentValues;
    :pswitch_4
    const-string v4, "Z074"

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    .line 299
    .local v3, "cv_spot_light":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 305
    .end local v3    # "cv_spot_light":Landroid/content/ContentValues;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->stopSliderMenuTimer()V

    goto/16 :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public showShapeCorrectionHelpText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 318
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mIsShapeCorrectionTextHidedByTimeOut:Z

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mShapeCorrectionHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mHideShapeCorrectionText:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mHideShapeCorrectionText:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    :cond_2
    return-void
.end method
