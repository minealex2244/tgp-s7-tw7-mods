.class public Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "AntiFogSliderMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$MainHandler;,
        Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$AntiFogLevelMenuSelectListener;
    }
.end annotation


# static fields
.field private static final MENU_TIMER_INTERVAL:J = 0xbb8L

.field private static final MSG_TIME_OUT:I = 0x1


# instance fields
.field private final ANTI_FOG_LEVEL_NUM_OF_STEP_10:I

.field private final ANTI_FOG_LEVEL_TEXT_HEIGHT:I

.field private final ANTI_FOG_LEVEL_TEXT_MARGIN:I

.field private final ANTI_FOG_LEVEL_TEXT_SIZE:F

.field private final ANTI_FOG_LEVEL_TEXT_STROKE_WIDTH:I

.field private final ANTI_FOG_LEVEL_TEXT_WIDTH:I

.field private final ANTI_FOG_LEVEL_TEXT_X:I

.field private final ANTI_FOG_LEVEL_TEXT_Y:I

.field private final ANTI_FOG_SLIDEBAR_HEIGHT:I

.field private final ANTI_FOG_SLIDEBAR_POS_X:I

.field private final ANTI_FOG_SLIDEBAR_POS_Y:I

.field private final ANTI_FOG_SLIDEBAR_WIDTH:I

.field private final SLIDEBAR_TOUCH_AREA_HEIGHT:I

.field private final SLIDEBAR_TOUCH_AREA_HEIGHT_EXTRA:I

.field private final SLIDEBAR_TOUCH_AREA_WIDTH:I

.field private final SLIDE_ANTI_FOG_GROUP_HEIGHT:I

.field private final SLIDE_ANTI_FOG_GROUP_POS_X:I

.field private final SLIDE_ANTI_FOG_GROUP_POS_Y:I

.field private final SLIDE_ANTI_FOG_GROUP_WIDTH:I

.field private final ZOOM_TEXT_COLOR:I

.field private final ZOOM_TEXT_STROKE_COLOR:I

.field private mCommonLevelText:Lcom/samsung/android/glview/GLText;

.field private final mHandler:Landroid/os/Handler;

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSlider:Lcom/samsung/android/glview/GLSlider;

.field private mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
    .locals 13
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
    .line 100
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v8, v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v9, v0

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v12}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 56
    const v0, 0x7f0a01f2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_WIDTH:I

    .line 57
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_HEIGHT:I

    .line 58
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f0a01f3

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_WIDTH:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_POS_X:I

    .line 59
    const v0, 0x7f0a0269

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_POS_Y:I

    .line 60
    const v0, 0x7f0a01fb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    .line 61
    const v0, 0x7f0a039f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_WIDTH:I

    .line 62
    const v0, 0x7f0a039c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_HEIGHT:I

    .line 63
    const v0, 0x7f0a039d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_MARGIN:I

    .line 64
    const v0, 0x7f0a01f5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_WIDTH:I

    .line 65
    const v0, 0x7f0a01f4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_HEIGHT:I

    .line 66
    iget v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_POS_X:I

    .line 67
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_HEIGHT:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_WIDTH:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_MARGIN:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_WIDTH:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_POS_Y:I

    .line 68
    iget v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_X:I

    .line 69
    iget v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_POS_Y:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_WIDTH:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_Y:I

    .line 70
    const v0, 0x7f0a01f9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    .line 71
    const v0, 0x7f0a01fa

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT_EXTRA:I

    .line 72
    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    .line 73
    const v0, 0x7f0d005d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ZOOM_TEXT_COLOR:I

    .line 74
    const v0, 0x7f0a039e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_SIZE:F

    .line 75
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_STROKE_WIDTH:I

    .line 76
    const v0, 0x7f0b0056

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_NUM_OF_STEP_10:I

    .line 77
    new-instance v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$MainHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$1;-><init>(Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    .line 104
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDE_ANTI_FOG_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 107
    new-instance v0, Lcom/samsung/android/glview/GLText;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_HEIGHT:I

    int-to-float v5, v5

    const-string v6, ""

    iget v7, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 108
    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ZOOM_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 119
    new-instance v0, Lcom/samsung/android/glview/GLSlider;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02019a

    const v7, 0x7f02019c

    iget v8, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->ANTI_FOG_LEVEL_NUM_OF_STEP_10:I

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v1, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$2;-><init>(Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const v1, 0x7f020086

    const v2, 0x7f020087

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(II)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    iget v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT_EXTRA:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLSlider;->expandTouchAreaFromCenter(FF)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->refreshSlider()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;)Lcom/samsung/android/glview/GLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method private refreshSlider()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v0

    .line 222
    .local v0, "currentStep":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 225
    return-void
.end method


# virtual methods
.method protected onHide()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 175
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->stopSliderMenuTimer()V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 180
    :cond_0
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 185
    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 190
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 142
    packed-switch p1, :pswitch_data_0

    .line 147
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 144
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->hideMenu()V

    .line 145
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onShow()V
    .locals 8

    .prologue
    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 195
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "camera.action.ACTION_ANTI_FOG_UI_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v2, v3, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 198
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    if-nez v2, :cond_0

    .line 207
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->restartSliderMenuTimer()V

    .line 203
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v1

    .line 204
    .local v1, "value":I
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    .line 206
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 212
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 217
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v2

    .line 154
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->stopSliderMenuTimer()V

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->restartSliderMenuTimer()V

    goto :goto_0
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 165
    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    return-void
.end method
