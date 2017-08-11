.class public Lcom/sec/android/app/camera/menu/OverlayLayout;
.super Ljava/lang/Object;
.source "OverlayLayout.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewSizeChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$PhaseAFListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$MultiAFListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$FocusStateListener;


# static fields
.field private static final FACE_IS_CENTER:I = 0x0

.field public static final FACE_IS_CENTER_BOTTOM:I = 0x8

.field public static final FACE_IS_CENTER_MIDDLE:I = 0x5

.field public static final FACE_IS_CENTER_TOP:I = 0x2

.field private static final FACE_IS_LEFT:I = 0x1

.field public static final FACE_IS_LEFT_BOTTOM:I = 0x7

.field public static final FACE_IS_LEFT_MIDDLE:I = 0x4

.field public static final FACE_IS_LEFT_TOP:I = 0x1

.field private static final FACE_IS_RIGHT:I = 0x2

.field public static final FACE_IS_RIGHT_BOTTOM:I = 0x9

.field public static final FACE_IS_RIGHT_MIDDLE:I = 0x6

.field public static final FACE_IS_RIGHT_TOP:I = 0x3

.field private static final HELPTEXT_TIMEOUT:I = 0x1b58

.field private static final MAX_FACE_COUNT:I = 0xa

.field private static final PALM_ID:I = 0x3e7

.field protected static final TAG:Ljava/lang/String; = "OverlayLayout"

.field private static final TOAST_TIMEOUT:I = 0x7d0


# instance fields
.field private final FACE_CIRCLE_DEFAULT_THICKNESS:I

.field private final FACE_COLOR:I

.field private final HELP_TEXT_BOTTOM_MARGIN:F

.field private final HELP_TEXT_FOOD_BOTTOM_MARGIN:F

.field private final HELP_TEXT_FOOD_BOTTOM_MARGIN_PORTRAIT:F

.field private final HELP_TEXT_HEIGHT:I

.field private final HELP_TEXT_HEIGHT_VERTICAL:I

.field private final HELP_TEXT_LINE_SPACING:F

.field private final HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

.field private final HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

.field private final HELP_TEXT_POS_X:F

.field private final HELP_TEXT_POS_Y:F

.field private final HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN:F

.field private final HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN_PORTRAIT:F

.field private final HELP_TEXT_SET_SHADOW:Z

.field private final HELP_TEXT_SIDE_MARGIN:F

.field private final HELP_TEXT_SIZE:F

.field private final HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

.field private final HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN_PORTRAIT:F

.field private final HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_BOTTOM_MARGIN_PORTRAIT:F

.field private final HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_HEIGHT:F

.field private final HELP_TEXT_STROKE_WIDTH:I

.field private final HELP_TEXT_VIRTUAL_BOTTOM_MARGIN:F

.field private final HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN:F

.field private final HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN_PORTRAIT:F

.field private final HELP_TEXT_WIDTH:F

.field private final HELP_TEXT_WIDTH_VERTICAL:F

.field private final OVERLAYLAYOUT_EFFECT_EDIT_WIDTH:I

.field private final OVERLAYLAYOUT_EFFECT_EDIT_X:I

.field private final OVERLAYLAYOUT_EFFECT_EDIT_Y:I

.field private final PAGE_NAVIGATOR_HEIGHT:F

.field private final PALM_COLOR:I

.field private final PALM_RECT_DEFAULT_THICKNESS:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHOOTINGMODE_HEIGHT:I

.field private final SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

.field private final SHOOTINGMODE_LANDSCAPE_TOP_MARGIN_FREEFORM:I

.field private final SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

.field private final SHOOTINGMODE_PORTRAIT_TOP_MARGIN_FREEFORM:I

.field private SHOOTINGMODE_TEXT_GROUP_X:F

.field private final SHOOTINGMODE_TEXT_STROKE_COLOR:I

.field private final SHOOTINGMODE_TEXT_STROKE_WIDTH:I

.field private final SHOOTINGMODE_WIDTH:I

.field private final TEXT_COLOR:I

.field private final TEXT_SIZE:F

.field private final TEXT_STROKE_COLOR:I

.field private final TOAST_HEIGHT:I

.field private final TOAST_LANDSCAPE_TOP_MARGIN:I

.field private final TOAST_PORTRAIT_TOP_MARGIN:I

.field private final TOAST_TEXT_MARGIN:F

.field private final TOAST_WIDTH:I

.field private mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

.field private mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCoverSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

.field private mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mDetectedFaceCount:I

.field private mEffectEditButton:Lcom/samsung/android/glview/GLButton;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

.field private mFaceInfo:[Lcom/samsung/android/camera/core/SemCamera$Face;

.field private mFaceRectInvisibled:Z

.field private mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

.field private mHelpText:Lcom/samsung/android/glview/GLText;

.field private mHelpTextHeight:I

.field private mHelpTextHeightVertical:I

.field private final mHideShootingModeText:Ljava/lang/Runnable;

.field private final mHideToastView:Ljava/lang/Runnable;

.field private mIsShootingModeTextHidedByTimeOut:Z

.field private final mMatrixForFace:Landroid/graphics/Matrix;

.field private final mMatrixForObjectTracking:Landroid/graphics/Matrix;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

.field private final mObjectTrackingRect:Landroid/graphics/RectF;

.field private mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

.field private mOldDetectedFaceCount:I

.field private mOrientation:I

.field private mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

.field private mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private final mRect:Landroid/graphics/RectF;

.field private mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mShootingModeText:Lcom/samsung/android/glview/GLText;

.field private mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

.field private mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0e0017

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    .line 84
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    .line 85
    const v3, 0x7f0b0331

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_SIZE:F

    .line 86
    const v3, 0x7f0d000e

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_COLOR:I

    .line 87
    const v3, 0x7f0d000f

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_STROKE_COLOR:I

    .line 88
    const v3, 0x7f0b0146

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    .line 89
    const v3, 0x7f0b0148

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    .line 90
    const v3, 0x7f0b0147

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN_FREEFORM:I

    .line 91
    const v3, 0x7f0b0149

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_PORTRAIT_TOP_MARGIN_FREEFORM:I

    .line 92
    const v3, 0x7f0b0330

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    .line 93
    const v3, 0x7f0b032f

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    .line 94
    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_WIDTH:I

    .line 95
    const v3, 0x7f0d0029

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_COLOR:I

    .line 96
    const v3, 0x7f0b0032

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    .line 97
    const v3, 0x7f0b01bd

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    .line 98
    const v3, 0x7f0b01bb

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    .line 99
    const v3, 0x7f0b01bc

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    .line 100
    const v3, 0x7f0b002d

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    .line 101
    const v3, 0x7f0b002f

    .line 102
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

    .line 103
    const v3, 0x7f0b01b7

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    .line 104
    const v3, 0x7f0b01ba

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN_PORTRAIT:F

    .line 105
    const v3, 0x7f0b0203

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_HEIGHT:F

    .line 106
    const v3, 0x7f0b0205

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_BOTTOM_MARGIN_PORTRAIT:F

    .line 107
    const v3, 0x7f0b002e

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN:F

    .line 108
    const v3, 0x7f0b0348

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_VIRTUAL_BOTTOM_MARGIN:F

    .line 109
    const v3, 0x7f0b01b5

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_FOOD_BOTTOM_MARGIN:F

    .line 110
    const v3, 0x7f0b01b8

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_FOOD_BOTTOM_MARGIN_PORTRAIT:F

    .line 111
    const v3, 0x7f0b0030

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN_PORTRAIT:F

    .line 112
    const v3, 0x7f0b01b9

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN_PORTRAIT:F

    .line 113
    const v3, 0x7f0b01b6

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN:F

    .line 114
    const v3, 0x7f0b0031

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    .line 115
    const v3, 0x7f0b01b4

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    .line 116
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    .line 117
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    .line 118
    const v3, 0x7f0b028e

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    .line 119
    const v3, 0x7f0b02c1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_LINE_SPACING:F

    .line 120
    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_STROKE_WIDTH:I

    .line 121
    const v3, 0x7f0e0021

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SET_SHADOW:Z

    .line 122
    const v0, 0x7f0d0017

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->FACE_COLOR:I

    .line 123
    const v0, 0x7f0e001e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->FACE_CIRCLE_DEFAULT_THICKNESS:I

    .line 124
    const v0, 0x7f0d002a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PALM_COLOR:I

    .line 125
    const v0, 0x7f0e0035

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PALM_RECT_DEFAULT_THICKNESS:I

    .line 126
    const v0, 0x7f0b02d5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_WIDTH:I

    .line 127
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    const v3, 0x7f0b00d5

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_WIDTH:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_X:I

    .line 128
    const v0, 0x7f0b02d4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_Y:I

    .line 129
    const v0, 0x7f0b014e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    .line 130
    const v0, 0x7f0b014a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    .line 131
    const v0, 0x7f0b014b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    .line 132
    const v0, 0x7f0b014c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    .line 133
    const v0, 0x7f0b014d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_TEXT_MARGIN:F

    .line 134
    const v0, 0x7f0b014f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PAGE_NAVIGATOR_HEIGHT:F

    .line 135
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    .line 136
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForObjectTracking:Landroid/graphics/Matrix;

    .line 137
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    .line 138
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    .line 139
    iput v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_GROUP_X:F

    .line 152
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    .line 160
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    .line 163
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    .line 164
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    .line 165
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    .line 166
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$1;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    .line 175
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$2;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideToastView:Ljava/lang/Runnable;

    .line 182
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    .line 183
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/samsung/android/camera/core/SemCamera$Face;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/samsung/android/camera/core/SemCamera$Face;

    .line 184
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    .line 185
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOldDetectedFaceCount:I

    .line 186
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceRectInvisibled:Z

    .line 201
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 202
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 204
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 205
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 206
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 208
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->init()V

    .line 209
    return-void

    :cond_0
    move v0, v1

    .line 121
    goto/16 :goto_0
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0e0017

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    .line 84
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    .line 85
    const v3, 0x7f0b0331

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_SIZE:F

    .line 86
    const v3, 0x7f0d000e

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_COLOR:I

    .line 87
    const v3, 0x7f0d000f

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_STROKE_COLOR:I

    .line 88
    const v3, 0x7f0b0146

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    .line 89
    const v3, 0x7f0b0148

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    .line 90
    const v3, 0x7f0b0147

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN_FREEFORM:I

    .line 91
    const v3, 0x7f0b0149

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_PORTRAIT_TOP_MARGIN_FREEFORM:I

    .line 92
    const v3, 0x7f0b0330

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    .line 93
    const v3, 0x7f0b032f

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    .line 94
    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_WIDTH:I

    .line 95
    const v3, 0x7f0d0029

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_COLOR:I

    .line 96
    const v3, 0x7f0b0032

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    .line 97
    const v3, 0x7f0b01bd

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    .line 98
    const v3, 0x7f0b01bb

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    .line 99
    const v3, 0x7f0b01bc

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    .line 100
    const v3, 0x7f0b002d

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    .line 101
    const v3, 0x7f0b002f

    .line 102
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

    .line 103
    const v3, 0x7f0b01b7

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    .line 104
    const v3, 0x7f0b01ba

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN_PORTRAIT:F

    .line 105
    const v3, 0x7f0b0203

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_HEIGHT:F

    .line 106
    const v3, 0x7f0b0205

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_BOTTOM_MARGIN_PORTRAIT:F

    .line 107
    const v3, 0x7f0b002e

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN:F

    .line 108
    const v3, 0x7f0b0348

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_VIRTUAL_BOTTOM_MARGIN:F

    .line 109
    const v3, 0x7f0b01b5

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_FOOD_BOTTOM_MARGIN:F

    .line 110
    const v3, 0x7f0b01b8

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_FOOD_BOTTOM_MARGIN_PORTRAIT:F

    .line 111
    const v3, 0x7f0b0030

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN_PORTRAIT:F

    .line 112
    const v3, 0x7f0b01b9

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN_PORTRAIT:F

    .line 113
    const v3, 0x7f0b01b6

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN:F

    .line 114
    const v3, 0x7f0b0031

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    .line 115
    const v3, 0x7f0b01b4

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    .line 116
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    .line 117
    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    .line 118
    const v3, 0x7f0b028e

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    .line 119
    const v3, 0x7f0b02c1

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_LINE_SPACING:F

    .line 120
    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_STROKE_WIDTH:I

    .line 121
    const v3, 0x7f0e0021

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SET_SHADOW:Z

    .line 122
    const v0, 0x7f0d0017

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->FACE_COLOR:I

    .line 123
    const v0, 0x7f0e001e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->FACE_CIRCLE_DEFAULT_THICKNESS:I

    .line 124
    const v0, 0x7f0d002a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PALM_COLOR:I

    .line 125
    const v0, 0x7f0e0035

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PALM_RECT_DEFAULT_THICKNESS:I

    .line 126
    const v0, 0x7f0b02d5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_WIDTH:I

    .line 127
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    const v3, 0x7f0b00d5

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_WIDTH:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_X:I

    .line 128
    const v0, 0x7f0b02d4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_Y:I

    .line 129
    const v0, 0x7f0b014e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    .line 130
    const v0, 0x7f0b014a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    .line 131
    const v0, 0x7f0b014b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    .line 132
    const v0, 0x7f0b014c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    .line 133
    const v0, 0x7f0b014d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_TEXT_MARGIN:F

    .line 134
    const v0, 0x7f0b014f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PAGE_NAVIGATOR_HEIGHT:F

    .line 135
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    .line 136
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForObjectTracking:Landroid/graphics/Matrix;

    .line 137
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    .line 138
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    .line 139
    iput v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_GROUP_X:F

    .line 152
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    .line 160
    iput-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    .line 163
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    .line 164
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    .line 165
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    .line 166
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$1;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    .line 175
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$2;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideToastView:Ljava/lang/Runnable;

    .line 182
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    .line 183
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/samsung/android/camera/core/SemCamera$Face;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/samsung/android/camera/core/SemCamera$Face;

    .line 184
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    .line 185
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOldDetectedFaceCount:I

    .line 186
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceRectInvisibled:Z

    .line 189
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 190
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 192
    iput-object p3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 193
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 194
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 195
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 197
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->init()V

    .line 198
    return-void

    :cond_0
    move v0, v1

    .line 121
    goto/16 :goto_0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/menu/OverlayLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/OverlayLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceRectInvisibled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/OverlayLayout;)[Lcom/samsung/android/glview/GLCircle;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/MenuManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-object v0
.end method

.method private getBigRect(I)I
    .locals 6
    .param p1, "max"    # I

    .prologue
    .line 848
    const/4 v1, 0x0

    .line 849
    .local v1, "MaxValue":F
    const/4 v0, 0x0

    .line 851
    .local v0, "BigRectIndex":I
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v1, v3

    .line 853
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 854
    const-string v3, "OverlayLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rect i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    add-int/lit8 v3, v2, 0x1

    if-lt v3, p1, :cond_1

    .line 865
    :cond_0
    return v0

    .line 859
    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    .line 860
    add-int/lit8 v0, v2, 0x1

    .line 861
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v1, v3

    .line 853
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getDownRect(II)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "BigRectIndex"    # I

    .prologue
    .line 870
    const/4 v0, 0x0

    .line 872
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 873
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 874
    add-int/lit8 v0, v0, 0x1

    .line 872
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 876
    :cond_1
    return v0
.end method

.method private getFaceRect(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 880
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/samsung/android/camera/core/SemCamera$Face;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 881
    const/4 v0, 0x0

    .line 882
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/samsung/android/camera/core/SemCamera$Face;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/samsung/android/camera/core/SemCamera$Face;->rect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private getLeftRect(II)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "BigRectIndex"    # I

    .prologue
    .line 886
    const/4 v0, 0x0

    .line 888
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 889
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    .line 890
    add-int/lit8 v0, v0, 0x1

    .line 888
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 892
    :cond_1
    return v0
.end method

.method private getRectPosition(II)I
    .locals 7
    .param p1, "max"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 896
    const/4 v0, 0x0

    .line 897
    .local v0, "BigRectIndex":I
    const/4 v1, 0x0

    .line 899
    .local v1, "CountIndex":I
    if-nez p2, :cond_2

    .line 900
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getBigRect(I)I

    move-result v0

    .line 901
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getLeftRect(II)I

    move-result v1

    .line 913
    :cond_0
    :goto_0
    const-string v4, "OverlayLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BigRectIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   CountIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    if-ne p1, v3, :cond_6

    .line 916
    if-nez v1, :cond_5

    .line 926
    :cond_1
    :goto_1
    return v2

    .line 902
    :cond_2
    const/4 v4, 0x3

    if-ne p2, v4, :cond_3

    .line 903
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getBigRect(I)I

    move-result v0

    .line 904
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getDownRect(II)I

    move-result v1

    goto :goto_0

    .line 905
    :cond_3
    if-ne p2, v3, :cond_4

    .line 906
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getBigRect(I)I

    move-result v0

    .line 907
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getRightRect(II)I

    move-result v1

    goto :goto_0

    .line 908
    :cond_4
    if-ne p2, v2, :cond_0

    .line 909
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getBigRect(I)I

    move-result v0

    .line 910
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getUpRect(II)I

    move-result v1

    goto :goto_0

    :cond_5
    move v2, v3

    .line 919
    goto :goto_1

    .line 921
    :cond_6
    if-eqz v1, :cond_1

    .line 923
    if-ne v1, v2, :cond_7

    .line 924
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    move v2, v3

    .line 926
    goto :goto_1
.end method

.method private getRectPositionBasedScreenForVoiceGuide(ILandroid/graphics/RectF;)I
    .locals 11
    .param p1, "orientation"    # I
    .param p2, "faceRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v5, 0x3

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v4, 0x1

    .line 940
    const/4 v1, 0x0

    .line 941
    .local v1, "bound_row":F
    const/4 v0, 0x0

    .line 942
    .local v0, "bound_col":F
    const/4 v3, 0x0

    .line 943
    .local v3, "rectCenter_row":F
    const/4 v2, 0x0

    .line 945
    .local v2, "rectCenter_col":F
    if-nez p1, :cond_2

    .line 946
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 947
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 948
    iget v6, p2, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float v2, v6, v9

    .line 949
    iget v6, p2, Landroid/graphics/RectF;->top:F

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float v3, v6, v9

    .line 967
    :goto_0
    mul-float v6, v0, v10

    cmpg-float v6, v2, v6

    if-gez v6, :cond_7

    .line 968
    mul-float v6, v1, v10

    cmpg-float v6, v3, v6

    if-gez v6, :cond_5

    .line 969
    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_1

    .line 970
    :cond_0
    const/4 v4, 0x7

    .line 1007
    :cond_1
    :goto_1
    return v4

    .line 950
    :cond_2
    if-ne p1, v4, :cond_3

    .line 951
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 952
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 953
    iget v6, p2, Landroid/graphics/RectF;->top:F

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float v2, v6, v9

    .line 954
    iget v6, p2, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float v3, v6, v9

    goto :goto_0

    .line 955
    :cond_3
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4

    .line 956
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 957
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 958
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v2, v6, v9

    .line 959
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v3, v6, v9

    goto :goto_0

    .line 961
    :cond_4
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 962
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 963
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v2, v6, v9

    .line 964
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v7

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float v3, v6, v9

    goto/16 :goto_0

    .line 973
    :cond_5
    mul-float v6, v1, v10

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_6

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    cmpg-float v6, v3, v6

    if-gez v6, :cond_6

    .line 974
    const/4 v4, 0x4

    goto/16 :goto_1

    .line 976
    :cond_6
    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_1

    .line 979
    const/4 v4, 0x7

    goto/16 :goto_1

    .line 981
    :cond_7
    mul-float v6, v0, v10

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_e

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_e

    .line 982
    mul-float v6, v1, v10

    cmpg-float v6, v3, v6

    if-gez v6, :cond_a

    .line 983
    if-eq p1, v4, :cond_8

    if-ne p1, v5, :cond_9

    .line 984
    :cond_8
    const/16 v4, 0x8

    goto/16 :goto_1

    .line 986
    :cond_9
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 987
    :cond_a
    mul-float v6, v1, v10

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_b

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    cmpg-float v6, v3, v6

    if-gez v6, :cond_b

    .line 988
    const/4 v4, 0x5

    goto/16 :goto_1

    .line 990
    :cond_b
    if-eq p1, v4, :cond_c

    if-ne p1, v5, :cond_d

    .line 991
    :cond_c
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 993
    :cond_d
    const/16 v4, 0x8

    goto/16 :goto_1

    .line 996
    :cond_e
    mul-float v6, v1, v10

    cmpg-float v6, v3, v6

    if-gez v6, :cond_11

    .line 997
    if-eq p1, v4, :cond_f

    if-ne p1, v5, :cond_10

    .line 998
    :cond_f
    const/16 v4, 0x9

    goto/16 :goto_1

    :cond_10
    move v4, v5

    .line 1000
    goto/16 :goto_1

    .line 1001
    :cond_11
    mul-float v6, v1, v10

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_12

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    cmpg-float v6, v3, v6

    if-gez v6, :cond_12

    .line 1002
    const/4 v4, 0x6

    goto/16 :goto_1

    .line 1004
    :cond_12
    if-eq p1, v4, :cond_13

    if-ne p1, v5, :cond_14

    :cond_13
    move v4, v5

    .line 1005
    goto/16 :goto_1

    .line 1007
    :cond_14
    const/16 v4, 0x9

    goto/16 :goto_1
.end method

.method private getRightRect(II)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "BigRectIndex"    # I

    .prologue
    .line 1013
    const/4 v0, 0x0

    .line 1015
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1016
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    .line 1017
    add-int/lit8 v0, v0, 0x1

    .line 1015
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1019
    :cond_1
    return v0
.end method

.method private getShootingmodeHelpTextResIdByCommandId(I)I
    .locals 3
    .param p1, "commandId"    # I

    .prologue
    .line 1023
    const/4 v0, -0x1

    .line 1024
    .local v0, "helpTextResId":I
    sparse-switch p1, :sswitch_data_0

    .line 1071
    :cond_0
    :goto_0
    return v0

    .line 1029
    :sswitch_0
    const v0, 0x7f0a004a

    .line 1030
    goto :goto_0

    .line 1034
    :sswitch_1
    const v0, 0x7f0a001f

    .line 1035
    goto :goto_0

    .line 1037
    :sswitch_2
    const v0, 0x7f0a01b0

    .line 1038
    goto :goto_0

    .line 1040
    :sswitch_3
    const v0, 0x7f0a00bf

    .line 1041
    goto :goto_0

    .line 1044
    :sswitch_4
    const v0, 0x7f0a0196

    .line 1045
    goto :goto_0

    .line 1047
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 1048
    const v0, 0x7f0a0223

    goto :goto_0

    .line 1049
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1050
    const v0, 0x7f0a0222

    goto :goto_0

    .line 1054
    :sswitch_6
    const v0, 0x7f0a0218

    .line 1055
    goto :goto_0

    .line 1059
    :sswitch_7
    const v0, 0x7f0a0197

    .line 1060
    goto :goto_0

    .line 1062
    :sswitch_8
    const v0, 0x7f0a0194

    .line 1063
    goto :goto_0

    .line 1065
    :sswitch_9
    const v0, 0x7f0a0114

    .line 1066
    goto :goto_0

    .line 1068
    :sswitch_a
    const v0, 0x7f0a0238

    goto :goto_0

    .line 1024
    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_1
        0x12e -> :sswitch_4
        0x13a -> :sswitch_0
        0x13d -> :sswitch_1
        0x13f -> :sswitch_0
        0x149 -> :sswitch_5
        0x14d -> :sswitch_0
        0x14f -> :sswitch_9
        0x151 -> :sswitch_3
        0x152 -> :sswitch_0
        0x156 -> :sswitch_7
        0x157 -> :sswitch_6
        0x15b -> :sswitch_2
        0x15d -> :sswitch_1
        0x161 -> :sswitch_8
        0x162 -> :sswitch_4
        0x166 -> :sswitch_7
        0x167 -> :sswitch_7
        0x168 -> :sswitch_a
    .end sparse-switch
.end method

.method private getUpRect(II)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "BigRectIndex"    # I

    .prologue
    .line 1075
    const/4 v0, 0x0

    .line 1077
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1078
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_0

    .line 1079
    add-int/lit8 v0, v0, 0x1

    .line 1077
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1081
    :cond_1
    return v0
.end method

.method private hideMultiAFView()V
    .locals 3

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    const-string v0, "OverlayLayout"

    const-string v1, "hideMultiAFView"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->setVisibility(IZ)V

    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->hideMultiAFLayout()V

    .line 1090
    :cond_0
    return-void
.end method

.method private init()V
    .locals 22

    .prologue
    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v19

    .line 1094
    .local v19, "glContext":Lcom/samsung/android/glview/GLContext;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int v21, v2, v3

    .line 1096
    .local v21, "ratioMargin":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    .line 1102
    :goto_0
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/AfButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/AfButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    .line 1103
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_TOUCH_AE:Z

    if-eqz v2, :cond_0

    .line 1104
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    .line 1107
    :cond_0
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;IILandroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    .line 1108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v2

    if-eqz v2, :cond_9

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    .line 1114
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_GROUP_X:F

    .line 1116
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 1117
    :cond_1
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_GROUP_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN_FREEFORM:I

    int-to-float v4, v4

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1125
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeResourceString()Ljava/lang/String;

    move-result-object v8

    .line 1126
    .local v8, "mode":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v9, v3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_COLOR:I

    const/4 v11, 0x0

    move-object/from16 v3, v19

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v4, v21

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v4, v21

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PAGE_NAVIGATOR_HEIGHT:F

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1143
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    if-eqz v2, :cond_3

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1150
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1155
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1156
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v3, 0x7f0201bf

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    neg-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 1163
    new-instance v9, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_TEXT_MARGIN:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    int-to-float v14, v2

    const-string v15, ""

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_SIZE:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_COLOR:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v10, v19

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    .line 1164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1171
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1172
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 1173
    :cond_6
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    int-to-float v4, v4

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1182
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v3, 0x7f0201bf

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    .line 1184
    new-instance v9, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_TEXT_MARGIN:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    int-to-float v14, v2

    const-string v15, ""

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_SIZE:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_COLOR:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v10, v19

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    .line 1185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move/from16 v0, v21

    int-to-float v5, v0

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move/from16 v0, v21

    int-to-float v5, v0

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1195
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1199
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/samsung/android/glview/GLCircle;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    .line 1201
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_4
    const/16 v2, 0xa

    move/from16 v0, v20

    if-ge v0, v2, :cond_e

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    new-instance v9, Lcom/samsung/android/glview/GLCircle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x42700000    # 60.0f

    const/high16 v14, 0x42700000    # 60.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->FACE_COLOR:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->FACE_CIRCLE_DEFAULT_THICKNESS:I

    int-to-float v0, v3

    move/from16 v16, v0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLCircle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    aput-object v9, v2, v20

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v20

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLCircle;->setVisibility(I)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v3, v3, v20

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1201
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 1099
    .end local v8    # "mode":Ljava/lang/String;
    .end local v20    # "i":I
    :cond_8
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    goto/16 :goto_0

    .line 1111
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1119
    :cond_a
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_GROUP_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_PORTRAIT_TOP_MARGIN_FREEFORM:I

    int-to-float v4, v4

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    goto/16 :goto_2

    .line 1122
    :cond_b
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    int-to-float v4, v4

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    goto/16 :goto_2

    .line 1175
    .restart local v8    # "mode":Ljava/lang/String;
    :cond_c
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    int-to-float v4, v4

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    goto/16 :goto_3

    .line 1178
    :cond_d
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    int-to-float v4, v4

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    goto/16 :goto_3

    .line 1207
    .restart local v20    # "i":I
    :cond_e
    new-instance v9, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x42700000    # 60.0f

    const/high16 v14, 0x42700000    # 60.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PALM_COLOR:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PALM_RECT_DEFAULT_THICKNESS:I

    int-to-float v0, v2

    move/from16 v16, v0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1211
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OBJECT_TRACKING_AF:Z

    if-eqz v2, :cond_f

    .line 1212
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const v4, 0x7f02000f

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;-><init>(Lcom/samsung/android/glview/GLContext;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setVisibility(I)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1217
    :cond_f
    new-instance v9, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    int-to-float v14, v2

    const-string v15, ""

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v16, v2, v3

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SET_SHADOW:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setOrientation(I)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1230
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_10

    .line 1231
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_X:I

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_Y:I

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_WIDTH:I

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->OVERLAYLAYOUT_EFFECT_EDIT_WIDTH:I

    int-to-float v14, v2

    const v15, 0x7f0200a0

    const v16, 0x7f0200a1

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/OverlayLayout$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout$4;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x232f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v4, 0x7f0a0349

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    const v4, 0x7f0a034a

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1255
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1b58

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerPhaseAFListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PhaseAFListener;)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerPreviewSizeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewSizeChangedListener;)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerMultiAFListener(Lcom/sec/android/app/camera/interfaces/CameraContext$MultiAFListener;)V

    .line 1265
    return-void
.end method

.method private needToSetShootingModeText()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1272
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCommandIdByCurrentShootingMode()I

    move-result v0

    .line 1274
    .local v0, "commandId":I
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-nez v2, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return v1

    .line 1278
    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1279
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private playFaceCount(I)V
    .locals 6
    .param p1, "faceCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1286
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1289
    if-nez p1, :cond_1

    .line 1290
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a027b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1301
    .local v0, "text":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1302
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1304
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 1291
    :cond_1
    if-ne p1, v3, :cond_2

    .line 1292
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1294
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x3

    if-lt p1, v1, :cond_3

    .line 1295
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0277

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1297
    .end local v0    # "text":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0173

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method private playFacePosition(II)V
    .locals 6
    .param p1, "faceCount"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1307
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1310
    if-nez p2, :cond_1

    .line 1311
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0278

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, "text":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1318
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1321
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 1312
    :cond_1
    if-ne p2, v3, :cond_2

    .line 1313
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0279

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1315
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a027a

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method private playFacePositionBasedScreenForVoiceGuide(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1329
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1330
    const-string v0, ""

    .line 1332
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1333
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1353
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1354
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1357
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 1334
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1335
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1336
    :cond_2
    const/4 v1, 0x7

    if-ne p1, v1, :cond_3

    .line 1337
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1339
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1340
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1341
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 1342
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a016a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1343
    :cond_5
    const/16 v1, 0x8

    if-ne p1, v1, :cond_6

    .line 1344
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1346
    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    .line 1347
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1348
    :cond_7
    const/4 v1, 0x6

    if-ne p1, v1, :cond_8

    .line 1349
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0171

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1351
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V
    .locals 8
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v7, 0x44fa0000    # 2000.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    .line 1360
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v0, v3

    .line 1363
    .local v0, "mirror":Z
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1364
    .local v2, "previewWidth":I
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1366
    .local v1, "previewHeight":I
    if-eqz v0, :cond_2

    const/high16 v4, -0x40800000    # -1.0f

    :goto_1
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1368
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getCameraDisplayOrientation()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1371
    int-to-float v4, v2

    div-float/2addr v4, v7

    int-to-float v5, v1

    div-float/2addr v5, v7

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1372
    int-to-float v4, v2

    div-float/2addr v4, v6

    int-to-float v5, v1

    div-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1375
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v4

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isWidePreviewAspectRatio()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1376
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1377
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_HEIGHT:I

    .line 1381
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1382
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1386
    :goto_2
    return-void

    .line 1360
    .end local v0    # "mirror":Z
    .end local v1    # "previewHeight":I
    .end local v2    # "previewWidth":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "mirror":Z
    .restart local v1    # "previewHeight":I
    .restart local v2    # "previewWidth":I
    :cond_2
    move v4, v5

    .line 1366
    goto :goto_1

    .line 1384
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2
.end method

.method private resetFaceInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1390
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/samsung/android/camera/core/SemCamera$Face;

    aput-object v2, v1, v0

    .line 1389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1392
    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/samsung/android/camera/core/SemCamera$Face;

    .line 1393
    return-void
.end method

.method private setAlignForOrientation()V
    .locals 3

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1408
    :goto_0
    return-void

    .line 1399
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto :goto_0

    .line 1403
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto :goto_0

    .line 1396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCoverCamera(Z)V
    .locals 2
    .param p1, "coverCamera"    # Z

    .prologue
    .line 1411
    if-nez p1, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1413
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1417
    :cond_0
    return-void
.end method

.method private showAfProgress()V
    .locals 2

    .prologue
    .line 1420
    const-string v0, "OverlayLayout"

    const-string v1, "showAfProgress"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->showAfProgress()V

    .line 1424
    :cond_0
    return-void
.end method

.method private showMultiAFView()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1427
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    if-nez v0, :cond_0

    .line 1428
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;-><init>(Lcom/samsung/android/glview/GLContext;IILandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    .line 1429
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    invoke-virtual {v0, v6, v5}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->setVisibility(IZ)V

    .line 1430
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getTouchAeLockState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isObjectTrackingAFStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1433
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1434
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 1435
    const-string v0, "OverlayLayout"

    const-string v1, "showMultiAFView"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->setVisibility(IZ)V

    .line 1439
    :cond_1
    return-void
.end method

.method private updateFaceRect()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 1442
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V

    .line 1444
    const/4 v0, 0x0

    .line 1446
    .local v0, "bUpdate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_1

    .line 1447
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1448
    .local v1, "faceRect":Landroid/graphics/Rect;
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    add-int/lit8 v4, v4, -0x1

    if-gt v2, v4, :cond_0

    if-nez v1, :cond_7

    .line 1449
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLCircle;->getVisibility()I

    move-result v4

    if-ne v4, v10, :cond_6

    .line 1472
    .end local v1    # "faceRect":Landroid/graphics/Rect;
    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    .line 1473
    const/4 v3, 0x0

    .line 1475
    .local v3, "minFaceCount":I
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOldDetectedFaceCount:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    if-lt v4, v3, :cond_3

    .line 1476
    const-string v4, "OverlayLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFaceRect: Face Detected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    .line 1479
    :cond_2
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getRectPosition(II)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/menu/OverlayLayout;->playFacePosition(II)V

    .line 1486
    :cond_3
    :goto_2
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 1487
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v4, v10, v9}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setVisibility(IZ)V

    .line 1490
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v4

    if-ne v4, v11, :cond_5

    .line 1491
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideMultiAFView()V

    .line 1494
    .end local v3    # "minFaceCount":I
    :cond_5
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    iput v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOldDetectedFaceCount:I

    .line 1496
    return-void

    .line 1452
    .restart local v1    # "faceRect":Landroid/graphics/Rect;
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v2

    invoke-virtual {v4, v10, v9}, Lcom/samsung/android/glview/GLCircle;->setVisibility(IZ)V

    .line 1453
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLCircle;->resetTranslate()V

    .line 1446
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1456
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1458
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1460
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/samsung/android/glview/GLCircle;->setCircle(FFFF)V

    .line 1461
    iget-boolean v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceRectInvisibled:Z

    if-eqz v4, :cond_8

    .line 1462
    const-string v4, "OverlayLayout"

    const-string v5, "updateFaceRect mFaceRectInvisibled break"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const/4 v0, 0x0

    .line 1464
    goto/16 :goto_1

    .line 1466
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v2

    invoke-virtual {v4, v9, v9}, Lcom/samsung/android/glview/GLCircle;->setVisibility(IZ)V

    .line 1468
    const/4 v0, 0x1

    goto :goto_3

    .line 1480
    .end local v1    # "faceRect":Landroid/graphics/Rect;
    .restart local v3    # "minFaceCount":I
    :cond_9
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    if-ne v4, v11, :cond_a

    .line 1481
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getRectPositionBasedScreenForVoiceGuide(ILandroid/graphics/RectF;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->playFacePositionBasedScreenForVoiceGuide(I)V

    goto/16 :goto_2

    .line 1483
    :cond_a
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->playFaceCount(I)V

    goto/16 :goto_2
.end method

.method private updatePalmRect()V
    .locals 10

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 1503
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 1505
    .local v2, "faceRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideFaceRect(Z)V

    .line 1506
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/OverlayLayout;->prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V

    .line 1507
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1508
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1510
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v7

    add-float v0, v5, v6

    .line 1511
    .local v0, "centerX":F
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v7

    add-float v1, v5, v6

    .line 1512
    .local v1, "centerY":F
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v3

    .local v3, "height":F
    :goto_0
    move v4, v3

    .line 1513
    .local v4, "width":F
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    div-float v6, v4, v7

    sub-float v6, v0, v6

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 1514
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    div-float v6, v3, v7

    sub-float v6, v1, v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 1516
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6, v7, v4, v3}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 1517
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v5, v8, v8}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(IZ)V

    .line 1518
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5, v8}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 1519
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x23

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1520
    return-void

    .line 1512
    .end local v3    # "height":F
    .end local v4    # "width":F
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v3

    goto :goto_0
.end method

.method private updateSideQuickSettingToast(Ljava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x40000000    # 2.0f

    .line 1523
    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v0, v1, v2

    .line 1525
    .local v0, "ratio_margin":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1526
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1527
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_SIZE:F

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setWidth(F)V

    .line 1528
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v5, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1530
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_TEXT_MARGIN:F

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setWidth(F)V

    .line 1531
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    neg-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    .line 1533
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1534
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v8}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 1552
    :goto_0
    return-void

    .line 1536
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1537
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_SIZE:F

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setWidth(F)V

    .line 1538
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v5, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1540
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_TEXT_MARGIN:F

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setWidth(F)V

    .line 1541
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1542
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    int-to-float v3, v3

    invoke-virtual {v1, v7, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1543
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1544
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    invoke-virtual {v1, v8, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1545
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1549
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1550
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v8}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 1547
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    div-float/2addr v2, v6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterPreviewSizeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewSizeChangedListener;)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideToastView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterPhaseAFListener()V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterMultiAFListener()V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/samsung/android/camera/core/SemCamera$Face;

    if-eqz v0, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->resetFaceInfo()V

    .line 223
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    .line 224
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 228
    return-void
.end method

.method public getFaceCount()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    return v0
.end method

.method public getPreviewOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getShootingModeOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getToastViewGroup()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public hideAfButton()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setVisibility(I)V

    .line 251
    :cond_0
    return-void
.end method

.method public hideDivideAFButton()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->hideDivideAFButton()V

    .line 258
    :cond_0
    return-void
.end method

.method public hideEffectEditButton()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 265
    :cond_0
    return-void
.end method

.method public hideFaceRect(Z)V
    .locals 5
    .param p1, "bAnimation"    # Z

    .prologue
    const/16 v4, 0xa

    .line 269
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 309
    :cond_0
    return-void

    .line 272
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceRectInvisibled:Z

    if-nez v2, :cond_0

    .line 276
    if-eqz p1, :cond_2

    .line 277
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 278
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    new-instance v2, Lcom/sec/android/app/camera/menu/OverlayLayout$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$3;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 296
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 297
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 298
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLCircle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLCircle;->startAnimation()V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "anim":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceRectInvisibled:Z

    .line 303
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 304
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLCircle;->cancelAnimation()V

    .line 305
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLCircle;->setVisibility(I)V

    .line 306
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLCircle;->resetTranslate()V

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public hideObjectTrackingView()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->resetTranslate()V

    goto :goto_0
.end method

.method public hidePalmRect()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    goto :goto_0
.end method

.method public hideShootingModeText()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 333
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    if-eqz v0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideSideQuickSettingToast()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideTouchAEButton()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->hideTouchAEButton()V

    .line 362
    :cond_0
    return-void
.end method

.method public hideTouchEVSlider()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->hideTouchEVSlider()V

    .line 369
    :cond_0
    return-void
.end method

.method protected isTouchEVStartMove()Z
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->isTouchEVStartMove()Z

    move-result v0

    .line 843
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 7
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x4

    .line 373
    const/4 v0, 0x0

    .line 375
    .local v0, "ratio_margin":I
    sparse-switch p1, :sswitch_data_0

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 378
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->showShootingModeText()V

    goto :goto_0

    .line 381
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->showShootingModeText()V

    .line 382
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 385
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->resetFaceRect()V

    goto :goto_0

    .line 390
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    if-eqz v1, :cond_0

    .line 391
    if-eqz p2, :cond_1

    .line 392
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    goto :goto_0

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    goto :goto_0

    .line 399
    :sswitch_4
    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v0, v1, v2

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    int-to-float v3, v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PAGE_NAVIGATOR_HEIGHT:F

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v6}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    goto :goto_0

    .line 408
    :sswitch_5
    if-ne p2, v6, :cond_3

    .line 409
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setCoverCamera(Z)V

    goto :goto_0

    .line 411
    :cond_3
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setCoverCamera(Z)V

    goto :goto_0

    .line 415
    :sswitch_6
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 375
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_4
        0x5 -> :sswitch_2
        0x8 -> :sswitch_6
        0x13 -> :sswitch_3
        0x4d -> :sswitch_1
        0x137 -> :sswitch_5
    .end sparse-switch
.end method

.method public onFocusStateChanged(I)V
    .locals 3
    .param p1, "focusState"    # I

    .prologue
    .line 428
    const-string v0, "OverlayLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    packed-switch p1, :pswitch_data_0

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 431
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 432
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideAfButton()V

    .line 436
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->showMultiAFView()V

    goto :goto_0

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideObjectTrackingView()V

    goto :goto_1

    .line 441
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideMultiAFView()V

    .line 442
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->showAfProgress()V

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChanged(III)V
    .locals 12
    .param p1, "orientation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 450
    const-string v0, "OverlayLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLayoutChanged : orientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setSize(FF)V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->updateGuideLineSize()V

    .line 458
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_GROUP_X:F

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v10, v0, v2

    .line 459
    .local v10, "modifiedShootingModeTextGroupX":F
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    neg-float v2, v10

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    .line 462
    .local v1, "glContext":Lcom/samsung/android/glview/GLContext;
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v11

    .line 463
    .local v11, "quickSettingToastVisibility":I
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v6

    .line 465
    .local v6, "quickSettingToastText":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 470
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 471
    :cond_1
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 475
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v2, 0x7f0201bf

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    .line 479
    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_TEXT_MARGIN:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    int-to-float v5, v5

    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_SIZE:F

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 483
    return-void

    .line 473
    :cond_3
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    goto :goto_0
.end method

.method public onMultiAFChanged([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->onMultiAFChanged([B)V

    .line 490
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 494
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 495
    iput p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setAlignForOrientation()V

    .line 499
    return-void
.end method

.method public onPhaseAFChanged(II)V
    .locals 1
    .param p1, "positionGap"    # I
    .param p2, "reliability"    # I

    .prologue
    .line 503
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setPositionGap(I)V

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setReliability(I)V

    .line 509
    :cond_0
    return-void
.end method

.method public onPreviewSizeChanged()V
    .locals 2

    .prologue
    .line 513
    const-string v0, "OverlayLayout"

    const-string v1, "onPreviewSizeChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->updateGuideLineSize()V

    .line 515
    return-void
.end method

.method public onTouchEVSliderTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->onTouchEVSliderTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 522
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshOverlayLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 528
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 536
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    .line 542
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v0

    if-eqz v0, :cond_4

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isObjectTrackingAFStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setVisibility(I)V

    .line 549
    :cond_1
    :goto_2
    return-void

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    .line 539
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    goto :goto_1

    .line 547
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideObjectTrackingView()V

    goto :goto_2
.end method

.method public resetFaceRect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideFaceRect(Z)V

    .line 558
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOldDetectedFaceCount:I

    .line 559
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    goto :goto_0
.end method

.method public resetFaceRectVisibility()V
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceRectInvisibled:Z

    .line 565
    return-void
.end method

.method public setDivideAfPosition(II)V
    .locals 1
    .param p1, "afPosX"    # I
    .param p2, "afPosY"    # I

    .prologue
    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->setDivideAfPosition(II)V

    .line 572
    :cond_0
    return-void
.end method

.method public setTouchAePosition(II)V
    .locals 1
    .param p1, "aePosX"    # I
    .param p2, "aePosY"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->setTouchAePosition(II)V

    .line 579
    :cond_0
    return-void
.end method

.method public setTouchAfPosition(II)V
    .locals 2
    .param p1, "afPosX"    # I
    .param p2, "afPosY"    # I

    .prologue
    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setTouchAfPosition(II)V

    .line 587
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 593
    return-void
.end method

.method public showEffectEditButton()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 600
    :cond_0
    return-void
.end method

.method public showShootingModeText()V
    .locals 13

    .prologue
    .line 604
    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    sub-int v3, v7, v8

    .line 606
    .local v3, "ratio_margin":I
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCommandIdByCurrentShootingMode()I

    move-result v5

    .line 607
    .local v5, "shootingModeCommandId":I
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getShootingmodeHelpTextResIdByCommandId(I)I

    move-result v1

    .line 608
    .local v1, "helpTextResId":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_7

    .line 609
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v6

    .line 610
    .local v6, "stringHeight":F
    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    iget-object v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v4

    .line 611
    .local v4, "rows":I
    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    iget-object v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v2

    .line 612
    .local v2, "portraitRows":I
    const/4 v7, 0x2

    if-le v4, v7, :cond_0

    .line 613
    const/4 v4, 0x2

    .line 615
    :cond_0
    int-to-float v7, v4

    mul-float/2addr v7, v6

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_LINE_SPACING:F

    add-int/lit8 v9, v4, -0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    .line 616
    int-to-float v7, v2

    mul-float/2addr v7, v6

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_LINE_SPACING:F

    add-int/lit8 v9, v2, -0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    .line 617
    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 618
    const v7, 0x7f0b0349

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    float-to-int v0, v7

    .line 619
    .local v0, "HELP_TEXT_MARGIN":I
    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    .line 626
    .end local v0    # "HELP_TEXT_MARGIN":I
    .end local v2    # "portraitRows":I
    .end local v4    # "rows":I
    .end local v6    # "stringHeight":F
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 628
    sparse-switch v5, :sswitch_data_0

    .line 713
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 716
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    .line 717
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 721
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->updateLayout(Z)V

    .line 723
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->needToSetShootingModeText()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 724
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeResourceString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 726
    :cond_4
    const-string v7, ""

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 727
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v7

    if-nez v7, :cond_5

    .line 728
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v9, v3

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    int-to-float v10, v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 729
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v8, 0x2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v9, v3

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PAGE_NAVIGATOR_HEIGHT:F

    add-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 730
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 732
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 735
    :cond_6
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    .line 737
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 738
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1b58

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 739
    return-void

    .line 622
    :cond_7
    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    iput v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    .line 623
    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    iput v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    goto/16 :goto_0

    .line 639
    :sswitch_0
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    int-to-float v10, v3

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    add-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 640
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x1

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 641
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v9, v10

    int-to-float v10, v3

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 642
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x3

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 643
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 644
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 647
    :sswitch_1
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    int-to-float v10, v3

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_VIRTUAL_BOTTOM_MARGIN:F

    add-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 648
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x1

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 649
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v9, v10

    int-to-float v10, v3

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_VIRTUAL_BOTTOM_MARGIN:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 650
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x3

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 651
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 652
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 656
    :sswitch_2
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    sub-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 657
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x1

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 658
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 659
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x3

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 660
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 661
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 664
    :sswitch_3
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v7

    if-nez v7, :cond_9

    .line 665
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    int-to-float v10, v3

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 666
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x1

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 667
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v9, v10

    int-to-float v10, v3

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 668
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x3

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 669
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a0223

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 677
    :cond_8
    :goto_3
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 670
    :cond_9
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 671
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    int-to-float v10, v3

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 672
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x1

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 673
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v9, v10

    int-to-float v10, v3

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 674
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x3

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 675
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a0222

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 680
    :sswitch_4
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    int-to-float v10, v3

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN:F

    add-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 681
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v9, v10

    int-to-float v10, v3

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 682
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x1

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 683
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x3

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 684
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v8, v1, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 685
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 690
    :sswitch_5
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    int-to-float v10, v3

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN:F

    add-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 691
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v9, v10

    int-to-float v10, v3

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 692
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x1

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 693
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x3

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 694
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 695
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 698
    :sswitch_6
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 701
    :sswitch_7
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 702
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    int-to-float v10, v3

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    add-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 703
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    add-float/2addr v9, v10

    int-to-float v10, v3

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 704
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x1

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_FOOD_BOTTOM_MARGIN:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 706
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x3

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_FOOD_BOTTOM_MARGIN:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 708
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 709
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 719
    :cond_a
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto/16 :goto_2

    .line 628
    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x12e -> :sswitch_2
        0x13a -> :sswitch_0
        0x13d -> :sswitch_0
        0x13f -> :sswitch_0
        0x149 -> :sswitch_3
        0x14d -> :sswitch_0
        0x14f -> :sswitch_0
        0x151 -> :sswitch_0
        0x152 -> :sswitch_0
        0x154 -> :sswitch_6
        0x156 -> :sswitch_5
        0x157 -> :sswitch_4
        0x15b -> :sswitch_1
        0x15d -> :sswitch_0
        0x161 -> :sswitch_7
        0x162 -> :sswitch_2
        0x166 -> :sswitch_5
        0x167 -> :sswitch_5
        0x168 -> :sswitch_0
    .end sparse-switch
.end method

.method public showSideQuickSettingToast(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v0

    if-nez v0, :cond_1

    .line 749
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideSideQuickSettingToast()V

    .line 757
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->updateSideQuickSettingToast(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideToastView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideToastView:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 763
    :cond_2
    return-void

    .line 752
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v0

    if-nez v0, :cond_1

    .line 753
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideSideQuickSettingToast()V

    goto :goto_0
.end method

.method public showTouchEVSlider()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    if-nez v0, :cond_0

    .line 768
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    .line 769
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->setTouchEVSliderChangeListener(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;)V

    .line 770
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->showTouchEVSlider()V

    .line 773
    return-void
.end method

.method public updateFaceRect([Lcom/samsung/android/camera/core/SemCamera$Face;)V
    .locals 6
    .param p1, "faces"    # [Lcom/samsung/android/camera/core/SemCamera$Face;

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 777
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/samsung/android/camera/core/SemCamera$Face;

    if-nez v1, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    aget-object v1, p1, v3

    iget v1, v1, Lcom/samsung/android/camera/core/SemCamera$Face;->id:I

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_2

    .line 782
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->isVisible()I

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    iput v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    .line 787
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/samsung/android/camera/core/SemCamera$Face;

    aget-object v2, p1, v3

    aput-object v2, v1, v3

    .line 789
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->updatePalmRect()V

    .line 791
    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceRectInvisibled:Z

    goto :goto_0

    .line 793
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceRectInvisibled:Z

    if-nez v1, :cond_0

    .line 796
    array-length v1, p1

    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    .line 798
    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    if-le v1, v4, :cond_3

    .line 799
    iput v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    .line 802
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_5

    .line 803
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_4

    .line 804
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/samsung/android/camera/core/SemCamera$Face;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 802
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 806
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Lcom/samsung/android/camera/core/SemCamera$Face;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    goto :goto_2

    .line 810
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->updateFaceRect()V

    goto :goto_0
.end method

.method public updateGuideLineSize()V
    .locals 3

    .prologue
    .line 816
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 817
    .local v0, "previewRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    if-eqz v1, :cond_0

    .line 818
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setGuideLineSize(Landroid/graphics/Rect;I)V

    .line 820
    :cond_0
    return-void
.end method

.method public updateMultiAFLayout()V
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAFView:Lcom/sec/android/app/camera/widget/gl/MultiAFView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/MultiAFView;->updateMultiAFLayout(Landroid/graphics/Rect;)V

    .line 827
    :cond_0
    return-void
.end method

.method public updateObjectTrackingRect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 831
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideObjectTrackingView()V

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForObjectTracking:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V

    .line 833
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getObjectTrackingRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForObjectTracking:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setRect(FFFF)V

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setVisibility(IZ)V

    .line 837
    return-void
.end method
