.class public Lcom/sec/android/app/camera/menu/OverlayLayout;
.super Ljava/lang/Object;
.source "OverlayLayout.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewSizeChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$AeStateListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$AfListener;


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

.field private static final MAX_VISION_INTELLIGENCE_EFFECT_COUNT:I = 0xc

.field protected static final TAG:Ljava/lang/String; = "OverlayLayout"

.field private static final TOAST_TIMEOUT:I = 0x7d0


# instance fields
.field private final BASEMENU_GROUP_WIDTH:F

.field private final BEAUTY_MENU_BUTTON_WIDTH:I

.field private final EFFECT_EDIT_BUTTON_WIDTH:I

.field private final EFFECT_EDIT_BUTTON_X:I

.field private final EFFECT_EDIT_BUTTON_Y:I

.field private final FACE_CIRCLE_DEFAULT_THICKNESS:I

.field private final FACE_COLOR:I

.field private final HELP_TEXT_BOTTOM_MARGIN:F

.field private final HELP_TEXT_BOTTOM_MARGIN_PORTRAIT:F

.field private final HELP_TEXT_HEIGHT:I

.field private final HELP_TEXT_HEIGHT_VERTICAL:I

.field private final HELP_TEXT_LINE_SPACING:F

.field private final HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

.field private final HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

.field private final HELP_TEXT_POS_X:F

.field private final HELP_TEXT_POS_X_PORTRAIT:F

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

.field private final PAGE_NAVIGATOR_HEIGHT:F

.field private final PALM_COLOR:I

.field private final PALM_RECT_DEFAULT_THICKNESS:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHOOTINGMODE_HEIGHT:I

.field private final SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

.field private final SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

.field private SHOOTINGMODE_TEXT_GROUP_X:F

.field private final SHOOTINGMODE_TEXT_STROKE_COLOR:I

.field private final SHOOTINGMODE_TEXT_STROKE_WIDTH:I

.field private final SHOOTINGMODE_WIDTH:I

.field private final SIDE_QUICK_SETTING_WIDTH:I

.field private final TEXT_COLOR:I

.field private final TEXT_SIZE:F

.field private final TEXT_STROKE_COLOR:I

.field private final TOAST_HEIGHT:I

.field private final TOAST_LANDSCAPE_TOP_MARGIN:I

.field private final TOAST_PORTRAIT_TOP_MARGIN:I

.field private final TOAST_TEXT_MARGIN:F

.field private final TOAST_WIDTH:I

.field private final VISION_INTELLIGENCE_BUTTON_POS_X:I

.field private final VISION_INTELLIGENCE_BUTTON_POS_Y:I

.field private final VISION_INTELLIGENCE_BUTTON_WIDTH:I

.field private final VI_EFFECT_DEFAULT_COLOR:I

.field private final VI_EFFECT_POS_X:[I

.field private final VI_EFFECT_POS_Y:[I

.field private final VI_EFFECT_SIZE:[I

.field private final VI_EFFECT_START_OFFSET:[I

.field private final VI_EFFECT_WHITE_COLOR:I

.field private mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

.field private mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

.field private mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mAnimationListener:Lcom/sec/android/app/camera/interfaces/OverlayLayoutController$VisionIntelligenceEffectAnimationListener;

.field private mAutoFilterPinButton:Lcom/samsung/android/glview/GLButton;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCoverSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

.field private mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mDetectedFaceCount:I

.field private mEffectEditButton:Lcom/samsung/android/glview/GLButton;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

.field private mFaceInfo:[Landroid/graphics/Rect;

.field private mFaceRectInvisibled:Z

.field private mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

.field private mHelpText:Lcom/samsung/android/glview/GLText;

.field private mHelpTextHeight:I

.field private mHelpTextHeightVertical:I

.field private mHelpTextPosX:F

.field private mHelpTextWidth:F

.field private final mHideShootingModeText:Ljava/lang/Runnable;

.field private final mHideToastView:Ljava/lang/Runnable;

.field private mIsShootingModeTextHidedByTimeOut:Z

.field private mIsVisionIntelligenceAnimationCompleted:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mMatrixForFace:Landroid/graphics/Matrix;

.field private final mMatrixForObjectTracking:Landroid/graphics/Matrix;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mMultiAfView:Lcom/sec/android/app/camera/widget/gl/MultiAfView;

.field private final mObjectTrackingRect:Landroid/graphics/RectF;

.field private mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

.field private mOldDetectedFaceCount:I

.field private mOrientation:I

.field private mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

.field private mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mRandomStickerButton:Lcom/samsung/android/glview/GLButton;

.field private final mRect:Landroid/graphics/RectF;

.field private mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mShootingModeText:Lcom/samsung/android/glview/GLText;

.field private mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

.field private mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mStickerRectHandler:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

.field private mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

.field private mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mTouchAeState:I

.field private mTouchAfState:I

.field private mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

.field private mVisionIntelligenceAnimatorset:Landroid/animation/AnimatorSet;

.field public mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

.field private mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 8
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    .line 97
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    .line 98
    const v0, 0x7f0a02b1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_SIZE:F

    .line 99
    const v0, 0x7f0d000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_COLOR:I

    .line 100
    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_STROKE_COLOR:I

    .line 101
    const v0, 0x7f0a017e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    .line 102
    const v0, 0x7f0a017f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    .line 103
    const v0, 0x7f0a02b0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    .line 104
    const v0, 0x7f0a02af

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    .line 105
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_WIDTH:I

    .line 106
    const v0, 0x7f0d002f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_COLOR:I

    .line 107
    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->BASEMENU_GROUP_WIDTH:F

    .line 108
    const v0, 0x7f0a01e0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    .line 109
    const v0, 0x7f0a01e1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    .line 110
    const v0, 0x7f0a01de

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    .line 111
    const v0, 0x7f0a01df

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    .line 112
    const v0, 0x7f0a004f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    .line 113
    const v0, 0x7f0a0051

    .line 114
    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

    .line 115
    const v0, 0x7f0a01da

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    .line 116
    const v0, 0x7f0a01dd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN_PORTRAIT:F

    .line 117
    const v0, 0x7f0a020e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_HEIGHT:F

    .line 118
    const v0, 0x7f0a0210

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_BOTTOM_MARGIN_PORTRAIT:F

    .line 119
    const v0, 0x7f0a0050

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN:F

    .line 120
    const v0, 0x7f0a0052

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN_PORTRAIT:F

    .line 121
    const v0, 0x7f0a0390

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_VIRTUAL_BOTTOM_MARGIN:F

    .line 122
    const v0, 0x7f0a01dc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN_PORTRAIT:F

    .line 123
    const v0, 0x7f0a01d9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN:F

    .line 124
    const v0, 0x7f0a0053

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    .line 125
    const v0, 0x7f0a01d7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    .line 126
    const v0, 0x7f0a0391

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN_PORTRAIT:F

    .line 127
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    .line 128
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    .line 129
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    const v4, 0x3faaaaab

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X_PORTRAIT:F

    .line 130
    const v0, 0x7f0a02ad

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    .line 131
    const v0, 0x7f0a02f1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_LINE_SPACING:F

    .line 132
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_STROKE_WIDTH:I

    .line 133
    const v0, 0x7f0b002e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SET_SHADOW:Z

    .line 134
    const v0, 0x7f0d001b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->FACE_COLOR:I

    .line 135
    const v0, 0x7f0d0055

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_DEFAULT_COLOR:I

    .line 136
    const v0, 0x7f0d0057

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_WHITE_COLOR:I

    .line 137
    new-array v0, v6, [I

    const v4, 0x7f0a0067

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v3

    const v4, 0x7f0a006b

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v4, 0x2

    const v5, 0x7f0a006c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x3

    const v5, 0x7f0a006d

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x4

    const v5, 0x7f0a006e

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x5

    const v5, 0x7f0a006f

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x6

    const v5, 0x7f0a0070

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x7

    const v5, 0x7f0a0071

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/16 v4, 0x8

    const v5, 0x7f0a0072

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/16 v4, 0x9

    const v5, 0x7f0a0068

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const v4, 0x7f0a0069

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v7

    const/16 v4, 0xb

    const v5, 0x7f0a006a

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_POS_X:[I

    .line 138
    new-array v0, v6, [I

    const v4, 0x7f0a0073

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v3

    const v4, 0x7f0a0077

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v4, 0x2

    const v5, 0x7f0a0078

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x3

    const v5, 0x7f0a0079

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x4

    const v5, 0x7f0a007a

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x5

    const v5, 0x7f0a007b

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x6

    const v5, 0x7f0a007c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x7

    const v5, 0x7f0a007d

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/16 v4, 0x8

    const v5, 0x7f0a007e

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/16 v4, 0x9

    const v5, 0x7f0a0074

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const v4, 0x7f0a0075

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v7

    const/16 v4, 0xb

    const v5, 0x7f0a0076

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_POS_Y:[I

    .line 139
    new-array v0, v6, [I

    const v4, 0x7f0a007f

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v3

    const v4, 0x7f0a0083

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v1, 0x2

    const v4, 0x7f0a0084

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v1, 0x3

    const v4, 0x7f0a0085

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v1, 0x4

    const v4, 0x7f0a0086

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v1, 0x5

    const v4, 0x7f0a0087

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v1, 0x6

    const v4, 0x7f0a0088

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v1, 0x7

    const v4, 0x7f0a0089

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/16 v1, 0x8

    const v4, 0x7f0a008a

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/16 v1, 0x9

    const v4, 0x7f0a0080

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const v1, 0x7f0a0081

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v7

    const/16 v1, 0xb

    const v4, 0x7f0a0082

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_SIZE:[I

    .line 140
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_START_OFFSET:[I

    .line 142
    const/high16 v0, 0x7f0b0000

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->FACE_CIRCLE_DEFAULT_THICKNESS:I

    .line 143
    const v0, 0x7f0d0034

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PALM_COLOR:I

    .line 144
    const v0, 0x7f0b0001

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PALM_RECT_DEFAULT_THICKNESS:I

    .line 145
    const v0, 0x7f0a02b3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    .line 146
    const v0, 0x7f0a02b2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    .line 147
    const v0, 0x7f0a0042

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    .line 148
    const v0, 0x7f0a0043

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    .line 149
    const v0, 0x7f0a000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SIDE_QUICK_SETTING_WIDTH:I

    .line 150
    const v0, 0x7f0a0180

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_TEXT_MARGIN:F

    .line 151
    const v0, 0x7f0a0375

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PAGE_NAVIGATOR_HEIGHT:F

    .line 152
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    .line 153
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForObjectTracking:Landroid/graphics/Matrix;

    .line 154
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    .line 155
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    .line 156
    const v0, 0x7f0a0262

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->BEAUTY_MENU_BUTTON_WIDTH:I

    .line 157
    const v0, 0x7f0a030b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_WIDTH:I

    .line 158
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    const v1, 0x7f0a0012

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f0a0306

    .line 159
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_X:I

    .line 160
    const v0, 0x7f0a0307

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_Y:I

    .line 161
    const v0, 0x7f0a0262

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    .line 162
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    const v1, 0x7f0a0012

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VISION_INTELLIGENCE_BUTTON_POS_X:I

    .line 164
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    const v1, 0x7f0a0261

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VISION_INTELLIGENCE_BUTTON_POS_Y:I

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    .line 167
    iput v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_GROUP_X:F

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceAnimatorset:Landroid/animation/AnimatorSet;

    .line 195
    new-array v0, v6, [Landroid/animation/Animator;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    .line 196
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsVisionIntelligenceAnimationCompleted:Z

    .line 198
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextWidth:F

    .line 199
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    .line 200
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    .line 201
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    .line 202
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    .line 203
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$1;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    .line 212
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$2;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideToastView:Ljava/lang/Runnable;

    .line 219
    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    .line 220
    new-array v0, v7, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Landroid/graphics/Rect;

    .line 221
    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    .line 222
    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOldDetectedFaceCount:I

    .line 223
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceRectInvisibled:Z

    .line 224
    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchAeState:I

    .line 225
    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchAfState:I

    .line 229
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$3;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 256
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 257
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 259
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

    .line 260
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

    .line 261
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 262
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

    .line 264
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->init()V

    .line 265
    return-void

    :cond_0
    move v0, v3

    .line 133
    goto/16 :goto_0

    .line 140
    nop

    :array_0
    .array-data 4
        0x12c
        0x16f
        0x16f
        0x12c
        0x12c
        0x12c
        0x279
        0x12c
        0x279
        0x1d3
        0x12c
        0x1d3
    .end array-data
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 8
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    .line 97
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    .line 98
    const v0, 0x7f0a02b1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_SIZE:F

    .line 99
    const v0, 0x7f0d000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_COLOR:I

    .line 100
    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_STROKE_COLOR:I

    .line 101
    const v0, 0x7f0a017e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    .line 102
    const v0, 0x7f0a017f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    .line 103
    const v0, 0x7f0a02b0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    .line 104
    const v0, 0x7f0a02af

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    .line 105
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_WIDTH:I

    .line 106
    const v0, 0x7f0d002f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_COLOR:I

    .line 107
    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->BASEMENU_GROUP_WIDTH:F

    .line 108
    const v0, 0x7f0a01e0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    .line 109
    const v0, 0x7f0a01e1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    .line 110
    const v0, 0x7f0a01de

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    .line 111
    const v0, 0x7f0a01df

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    .line 112
    const v0, 0x7f0a004f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    .line 113
    const v0, 0x7f0a0051

    .line 114
    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

    .line 115
    const v0, 0x7f0a01da

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    .line 116
    const v0, 0x7f0a01dd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN_PORTRAIT:F

    .line 117
    const v0, 0x7f0a020e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_HEIGHT:F

    .line 118
    const v0, 0x7f0a0210

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_BOTTOM_MARGIN_PORTRAIT:F

    .line 119
    const v0, 0x7f0a0050

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN:F

    .line 120
    const v0, 0x7f0a0052

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN_PORTRAIT:F

    .line 121
    const v0, 0x7f0a0390

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_VIRTUAL_BOTTOM_MARGIN:F

    .line 122
    const v0, 0x7f0a01dc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN_PORTRAIT:F

    .line 123
    const v0, 0x7f0a01d9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN:F

    .line 124
    const v0, 0x7f0a0053

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    .line 125
    const v0, 0x7f0a01d7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    .line 126
    const v0, 0x7f0a0391

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN_PORTRAIT:F

    .line 127
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    .line 128
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    .line 129
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    const v4, 0x3faaaaab

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X_PORTRAIT:F

    .line 130
    const v0, 0x7f0a02ad

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    .line 131
    const v0, 0x7f0a02f1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_LINE_SPACING:F

    .line 132
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_STROKE_WIDTH:I

    .line 133
    const v0, 0x7f0b002e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SET_SHADOW:Z

    .line 134
    const v0, 0x7f0d001b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->FACE_COLOR:I

    .line 135
    const v0, 0x7f0d0055

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_DEFAULT_COLOR:I

    .line 136
    const v0, 0x7f0d0057

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_WHITE_COLOR:I

    .line 137
    new-array v0, v6, [I

    const v4, 0x7f0a0067

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v3

    const v4, 0x7f0a006b

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v4, 0x2

    const v5, 0x7f0a006c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x3

    const v5, 0x7f0a006d

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x4

    const v5, 0x7f0a006e

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x5

    const v5, 0x7f0a006f

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x6

    const v5, 0x7f0a0070

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x7

    const v5, 0x7f0a0071

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/16 v4, 0x8

    const v5, 0x7f0a0072

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/16 v4, 0x9

    const v5, 0x7f0a0068

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const v4, 0x7f0a0069

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v7

    const/16 v4, 0xb

    const v5, 0x7f0a006a

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_POS_X:[I

    .line 138
    new-array v0, v6, [I

    const v4, 0x7f0a0073

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v3

    const v4, 0x7f0a0077

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v4, 0x2

    const v5, 0x7f0a0078

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x3

    const v5, 0x7f0a0079

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x4

    const v5, 0x7f0a007a

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x5

    const v5, 0x7f0a007b

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x6

    const v5, 0x7f0a007c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/4 v4, 0x7

    const v5, 0x7f0a007d

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/16 v4, 0x8

    const v5, 0x7f0a007e

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const/16 v4, 0x9

    const v5, 0x7f0a0074

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    const v4, 0x7f0a0075

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v7

    const/16 v4, 0xb

    const v5, 0x7f0a0076

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v0, v4

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_POS_Y:[I

    .line 139
    new-array v0, v6, [I

    const v4, 0x7f0a007f

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v3

    const v4, 0x7f0a0083

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v1, 0x2

    const v4, 0x7f0a0084

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v1, 0x3

    const v4, 0x7f0a0085

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v1, 0x4

    const v4, 0x7f0a0086

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v1, 0x5

    const v4, 0x7f0a0087

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v1, 0x6

    const v4, 0x7f0a0088

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/4 v1, 0x7

    const v4, 0x7f0a0089

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/16 v1, 0x8

    const v4, 0x7f0a008a

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const/16 v1, 0x9

    const v4, 0x7f0a0080

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    const v1, 0x7f0a0081

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v7

    const/16 v1, 0xb

    const v4, 0x7f0a0082

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_SIZE:[I

    .line 140
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_START_OFFSET:[I

    .line 142
    const/high16 v0, 0x7f0b0000

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->FACE_CIRCLE_DEFAULT_THICKNESS:I

    .line 143
    const v0, 0x7f0d0034

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PALM_COLOR:I

    .line 144
    const v0, 0x7f0b0001

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PALM_RECT_DEFAULT_THICKNESS:I

    .line 145
    const v0, 0x7f0a02b3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    .line 146
    const v0, 0x7f0a02b2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    .line 147
    const v0, 0x7f0a0042

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    .line 148
    const v0, 0x7f0a0043

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    .line 149
    const v0, 0x7f0a000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SIDE_QUICK_SETTING_WIDTH:I

    .line 150
    const v0, 0x7f0a0180

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_TEXT_MARGIN:F

    .line 151
    const v0, 0x7f0a0375

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PAGE_NAVIGATOR_HEIGHT:F

    .line 152
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    .line 153
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForObjectTracking:Landroid/graphics/Matrix;

    .line 154
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    .line 155
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    .line 156
    const v0, 0x7f0a0262

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->BEAUTY_MENU_BUTTON_WIDTH:I

    .line 157
    const v0, 0x7f0a030b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_WIDTH:I

    .line 158
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    const v1, 0x7f0a0012

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f0a0306

    .line 159
    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_X:I

    .line 160
    const v0, 0x7f0a0307

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_Y:I

    .line 161
    const v0, 0x7f0a0262

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    .line 162
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    const v1, 0x7f0a0012

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VISION_INTELLIGENCE_BUTTON_POS_X:I

    .line 164
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    const v1, 0x7f0a0261

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VISION_INTELLIGENCE_BUTTON_POS_Y:I

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    .line 167
    iput v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_GROUP_X:F

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceAnimatorset:Landroid/animation/AnimatorSet;

    .line 195
    new-array v0, v6, [Landroid/animation/Animator;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    .line 196
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsVisionIntelligenceAnimationCompleted:Z

    .line 198
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextWidth:F

    .line 199
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X:F

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    .line 200
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    .line 201
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    iput v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    .line 202
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    .line 203
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$1;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    .line 212
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$2;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideToastView:Ljava/lang/Runnable;

    .line 219
    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    .line 220
    new-array v0, v7, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Landroid/graphics/Rect;

    .line 221
    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    .line 222
    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOldDetectedFaceCount:I

    .line 223
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceRectInvisibled:Z

    .line 224
    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchAeState:I

    .line 225
    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchAfState:I

    .line 229
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$3;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 243
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 244
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 246
    iput-object p3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 247
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

    .line 248
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

    .line 249
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 250
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

    .line 252
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->init()V

    .line 253
    return-void

    :cond_0
    move v0, v3

    .line 133
    goto/16 :goto_0

    .line 140
    nop

    :array_0
    .array-data 4
        0x12c
        0x16f
        0x16f
        0x12c
        0x12c
        0x12c
        0x279
        0x12c
        0x279
        0x1d3
        0x12c
        0x1d3
    .end array-data
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/menu/OverlayLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/OverlayLayout;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_POS_Y:[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/OverlayLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsVisionIntelligenceAnimationCompleted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/OverlayLayout;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_SIZE:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/OverlayLayout;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_POS_X:[I

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/menu/OverlayLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_DEFAULT_COLOR:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/OverlayLayoutController$VisionIntelligenceEffectAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAnimationListener:Lcom/sec/android/app/camera/interfaces/OverlayLayoutController$VisionIntelligenceEffectAnimationListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/OverlayLayout;)[Lcom/samsung/android/glview/GLCircle;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/OverlayLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->startVisionIntelligenceEffectAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/MenuManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-object v0
.end method

.method private getBigRect(I)I
    .locals 6
    .param p1, "max"    # I

    .prologue
    .line 985
    const/4 v1, 0x0

    .line 986
    .local v1, "MaxValue":F
    const/4 v0, 0x0

    .line 988
    .local v0, "BigRectIndex":I
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v1, v3

    .line 990
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 991
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

    .line 993
    add-int/lit8 v3, v2, 0x1

    if-lt v3, p1, :cond_1

    .line 1002
    :cond_0
    return v0

    .line 996
    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    .line 997
    add-int/lit8 v0, v2, 0x1

    .line 998
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v1, v3

    .line 990
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getDownRect(II)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "BigRectIndex"    # I

    .prologue
    .line 1007
    const/4 v0, 0x0

    .line 1009
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1010
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 1011
    add-int/lit8 v0, v0, 0x1

    .line 1009
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1013
    :cond_1
    return v0
.end method

.method private getFaceRect(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 1018
    const/4 v0, 0x0

    .line 1019
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getLeftRect(II)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "BigRectIndex"    # I

    .prologue
    .line 1023
    const/4 v0, 0x0

    .line 1025
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1026
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    .line 1027
    add-int/lit8 v0, v0, 0x1

    .line 1025
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1029
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

    .line 1033
    const/4 v0, 0x0

    .line 1034
    .local v0, "BigRectIndex":I
    const/4 v1, 0x0

    .line 1036
    .local v1, "CountIndex":I
    if-nez p2, :cond_2

    .line 1037
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getBigRect(I)I

    move-result v0

    .line 1038
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getLeftRect(II)I

    move-result v1

    .line 1050
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

    .line 1052
    if-ne p1, v3, :cond_6

    .line 1053
    if-nez v1, :cond_5

    .line 1063
    :cond_1
    :goto_1
    return v2

    .line 1039
    :cond_2
    const/4 v4, 0x3

    if-ne p2, v4, :cond_3

    .line 1040
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getBigRect(I)I

    move-result v0

    .line 1041
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getDownRect(II)I

    move-result v1

    goto :goto_0

    .line 1042
    :cond_3
    if-ne p2, v3, :cond_4

    .line 1043
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getBigRect(I)I

    move-result v0

    .line 1044
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getRightRect(II)I

    move-result v1

    goto :goto_0

    .line 1045
    :cond_4
    if-ne p2, v2, :cond_0

    .line 1046
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getBigRect(I)I

    move-result v0

    .line 1047
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getUpRect(II)I

    move-result v1

    goto :goto_0

    :cond_5
    move v2, v3

    .line 1056
    goto :goto_1

    .line 1058
    :cond_6
    if-eqz v1, :cond_1

    .line 1060
    if-ne v1, v2, :cond_7

    .line 1061
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    move v2, v3

    .line 1063
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

    .line 1077
    const/4 v1, 0x0

    .line 1078
    .local v1, "bound_row":F
    const/4 v0, 0x0

    .line 1079
    .local v0, "bound_col":F
    const/4 v3, 0x0

    .line 1080
    .local v3, "rectCenter_row":F
    const/4 v2, 0x0

    .line 1082
    .local v2, "rectCenter_col":F
    if-nez p1, :cond_2

    .line 1083
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 1084
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 1085
    iget v6, p2, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float v2, v6, v9

    .line 1086
    iget v6, p2, Landroid/graphics/RectF;->top:F

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float v3, v6, v9

    .line 1104
    :goto_0
    mul-float v6, v0, v10

    cmpg-float v6, v2, v6

    if-gez v6, :cond_7

    .line 1105
    mul-float v6, v1, v10

    cmpg-float v6, v3, v6

    if-gez v6, :cond_5

    .line 1106
    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_1

    .line 1107
    :cond_0
    const/4 v4, 0x7

    .line 1144
    :cond_1
    :goto_1
    return v4

    .line 1087
    :cond_2
    if-ne p1, v4, :cond_3

    .line 1088
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 1089
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 1090
    iget v6, p2, Landroid/graphics/RectF;->top:F

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float v2, v6, v9

    .line 1091
    iget v6, p2, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float v3, v6, v9

    goto :goto_0

    .line 1092
    :cond_3
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4

    .line 1093
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 1094
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 1095
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

    .line 1096
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

    .line 1098
    :cond_4
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 1099
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v7

    .line 1100
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

    .line 1101
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

    .line 1110
    :cond_5
    mul-float v6, v1, v10

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_6

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    cmpg-float v6, v3, v6

    if-gez v6, :cond_6

    .line 1111
    const/4 v4, 0x4

    goto/16 :goto_1

    .line 1113
    :cond_6
    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_1

    .line 1116
    const/4 v4, 0x7

    goto/16 :goto_1

    .line 1118
    :cond_7
    mul-float v6, v0, v10

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_e

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_e

    .line 1119
    mul-float v6, v1, v10

    cmpg-float v6, v3, v6

    if-gez v6, :cond_a

    .line 1120
    if-eq p1, v4, :cond_8

    if-ne p1, v5, :cond_9

    .line 1121
    :cond_8
    const/16 v4, 0x8

    goto/16 :goto_1

    .line 1123
    :cond_9
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1124
    :cond_a
    mul-float v6, v1, v10

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_b

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    cmpg-float v6, v3, v6

    if-gez v6, :cond_b

    .line 1125
    const/4 v4, 0x5

    goto/16 :goto_1

    .line 1127
    :cond_b
    if-eq p1, v4, :cond_c

    if-ne p1, v5, :cond_d

    .line 1128
    :cond_c
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1130
    :cond_d
    const/16 v4, 0x8

    goto/16 :goto_1

    .line 1133
    :cond_e
    mul-float v6, v1, v10

    cmpg-float v6, v3, v6

    if-gez v6, :cond_11

    .line 1134
    if-eq p1, v4, :cond_f

    if-ne p1, v5, :cond_10

    .line 1135
    :cond_f
    const/16 v4, 0x9

    goto/16 :goto_1

    :cond_10
    move v4, v5

    .line 1137
    goto/16 :goto_1

    .line 1138
    :cond_11
    mul-float v6, v1, v10

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_12

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    cmpg-float v6, v3, v6

    if-gez v6, :cond_12

    .line 1139
    const/4 v4, 0x6

    goto/16 :goto_1

    .line 1141
    :cond_12
    if-eq p1, v4, :cond_13

    if-ne p1, v5, :cond_14

    :cond_13
    move v4, v5

    .line 1142
    goto/16 :goto_1

    .line 1144
    :cond_14
    const/16 v4, 0x9

    goto/16 :goto_1
.end method

.method private getRightRect(II)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "BigRectIndex"    # I

    .prologue
    .line 1150
    const/4 v0, 0x0

    .line 1152
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1153
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    .line 1154
    add-int/lit8 v0, v0, 0x1

    .line 1152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1156
    :cond_1
    return v0
.end method

.method private getShootingmodeHelpTextResIdByCommandId(I)I
    .locals 3
    .param p1, "commandId"    # I

    .prologue
    .line 1160
    const/4 v0, -0x1

    .line 1161
    .local v0, "helpTextResId":I
    sparse-switch p1, :sswitch_data_0

    .line 1205
    :cond_0
    :goto_0
    return v0

    .line 1166
    :sswitch_0
    const v0, 0x7f09004a

    .line 1167
    goto :goto_0

    .line 1171
    :sswitch_1
    const v0, 0x7f09001f

    .line 1172
    goto :goto_0

    .line 1174
    :sswitch_2
    const v0, 0x7f0901af

    .line 1175
    goto :goto_0

    .line 1177
    :sswitch_3
    const v0, 0x7f0900be

    .line 1178
    goto :goto_0

    .line 1181
    :sswitch_4
    const v0, 0x7f090196

    .line 1182
    goto :goto_0

    .line 1184
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 1185
    const v0, 0x7f09022b

    goto :goto_0

    .line 1186
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1187
    const v0, 0x7f09022a

    goto :goto_0

    .line 1191
    :sswitch_6
    const v0, 0x7f090221

    .line 1192
    goto :goto_0

    .line 1196
    :sswitch_7
    const v0, 0x7f090197

    .line 1197
    goto :goto_0

    .line 1199
    :sswitch_8
    const v0, 0x7f090194

    .line 1200
    goto :goto_0

    .line 1202
    :sswitch_9
    const v0, 0x7f090113

    goto :goto_0

    .line 1161
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
    .end sparse-switch
.end method

.method private getUpRect(II)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "BigRectIndex"    # I

    .prologue
    .line 1209
    const/4 v0, 0x0

    .line 1211
    .local v0, "Index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1212
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_0

    .line 1213
    add-int/lit8 v0, v0, 0x1

    .line 1211
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1215
    :cond_1
    return v0
.end method

.method private hideMultiAfView()V
    .locals 3

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAfView:Lcom/sec/android/app/camera/widget/gl/MultiAfView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAfView:Lcom/sec/android/app/camera/widget/gl/MultiAfView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    const-string v0, "OverlayLayout"

    const-string v1, "hideMultiAfView"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAfView:Lcom/sec/android/app/camera/widget/gl/MultiAfView;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->setVisibility(IZ)V

    .line 1222
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAfView:Lcom/sec/android/app/camera/widget/gl/MultiAfView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->hideMultiAfLayout()V

    .line 1224
    :cond_0
    return-void
.end method

.method private init()V
    .locals 23

    .prologue
    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v19

    .line 1228
    .local v19, "glContext":Lcom/samsung/android/glview/GLContext;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    sub-float v22, v2, v3

    .line 1230
    .local v22, "ratioMargin":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    .line 1236
    :goto_0
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/AfButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/AfButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    .line 1237
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_TOUCH_AE:Z

    if-eqz v2, :cond_0

    .line 1238
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    .line 1241
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

    .line 1242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v2

    if-eqz v2, :cond_9

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    .line 1248
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1249
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

    .line 1250
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 1251
    :cond_1
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_GROUP_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    int-to-float v4, v4

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1259
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeResourceString()Ljava/lang/String;

    move-result-object v8

    .line 1260
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

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v4, v4, v22

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v4, v4, v22

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

    .line 1273
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

    .line 1274
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

    .line 1277
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    if-eqz v2, :cond_3

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1284
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1285
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

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1289
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1290
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v3, 0x7f0201d2

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    .line 1294
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

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SIDE_QUICK_SETTING_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 1297
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

    .line 1298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1305
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1306
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 1307
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

    .line 1316
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v3, 0x7f0201d2

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    .line 1318
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

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 1323
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

    sub-float v4, v4, v22

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1324
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

    sub-float v4, v4, v22

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SIDE_QUICK_SETTING_WIDTH:I

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

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SIDE_QUICK_SETTING_WIDTH:I

    add-int/2addr v4, v5

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

    .line 1329
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1333
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/samsung/android/glview/GLCircle;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    .line 1335
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_4
    const/16 v2, 0xa

    move/from16 v0, v20

    if-ge v0, v2, :cond_e

    .line 1336
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

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v20

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLCircle;->setVisibility(I)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v3, v3, v20

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1335
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 1233
    .end local v8    # "mode":Ljava/lang/String;
    .end local v20    # "i":I
    :cond_8
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    goto/16 :goto_0

    .line 1245
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1253
    :cond_a
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_TEXT_GROUP_X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_PORTRAIT_TOP_MARGIN:I

    int-to-float v4, v4

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    goto/16 :goto_2

    .line 1256
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

    .line 1309
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

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SIDE_QUICK_SETTING_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    goto/16 :goto_3

    .line 1312
    :cond_d
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, v19

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    goto/16 :goto_3

    .line 1342
    .restart local v20    # "i":I
    :cond_e
    const/16 v2, 0xc

    new-array v2, v2, [Lcom/samsung/android/glview/GLCircle;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    .line 1344
    const/16 v20, 0x0

    :goto_5
    const/16 v2, 0xc

    move/from16 v0, v20

    if-ge v0, v2, :cond_f

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

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

    iget v15, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_WHITE_COLOR:I

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/glview/GLCircle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    aput-object v9, v2, v20

    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v20

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLCircle;->setVisibility(I)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    aget-object v3, v3, v20

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1344
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 1350
    :cond_f
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceAnimatorset:Landroid/animation/AnimatorSet;

    .line 1352
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

    .line 1353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1356
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OBJECT_TRACKING_AF:Z

    if-eqz v2, :cond_10

    .line 1357
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const v4, 0x7f020017

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;-><init>(Lcom/samsung/android/glview/GLContext;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    .line 1358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setVisibility(I)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1362
    :cond_10
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

    .line 1363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SET_SHADOW:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 1369
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

    .line 1370
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

    .line 1371
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

    .line 1372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 1374
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setOrientation(I)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1377
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_12

    .line 1378
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_X:I

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_Y:I

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_WIDTH:I

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_WIDTH:I

    int-to-float v14, v2

    const v15, 0x7f020211

    const v16, 0x7f020212

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    .line 1381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/OverlayLayout$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout$11;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x232f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090332

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090333

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1398
    new-instance v9, Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_X:I

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_Y:I

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_WIDTH:I

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_WIDTH:I

    int-to-float v14, v2

    const v15, 0x7f02020a

    const v16, 0x7f02020b

    const/16 v17, 0x0

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAutoFilterPinButton:Lcom/samsung/android/glview/GLButton;

    .line 1401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAutoFilterPinButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAutoFilterPinButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAutoFilterPinButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAutoFilterPinButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 1405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAutoFilterPinButton:Lcom/samsung/android/glview/GLButton;

    new-instance v3, Lcom/sec/android/app/camera/menu/OverlayLayout$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout$12;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 1420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAutoFilterPinButton:Lcom/samsung/android/glview/GLButton;

    const/16 v3, 0x2330

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 1421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAutoFilterPinButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAutoFilterPinButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1426
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerPreviewSizeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewSizeChangedListener;)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1b58

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1430
    new-instance v21, Landroid/content/IntentFilter;

    invoke-direct/range {v21 .. v21}, Landroid/content/IntentFilter;-><init>()V

    .line 1431
    .local v21, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "camera.action.ACTION_CAMERA_RESET"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1433
    return-void
.end method

.method private needToSetShootingModeText()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1440
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCommandIdByCurrentShootingMode()I

    move-result v0

    .line 1442
    .local v0, "commandId":I
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-nez v2, :cond_1

    .line 1450
    :cond_0
    :goto_0
    return v1

    .line 1446
    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1447
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private playFaceCount(I)V
    .locals 6
    .param p1, "faceCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1454
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1457
    if-nez p1, :cond_1

    .line 1458
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09028c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1469
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

    .line 1470
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1472
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 1459
    :cond_1
    if-ne p1, v3, :cond_2

    .line 1460
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1462
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x3

    if-lt p1, v1, :cond_3

    .line 1463
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090288

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1465
    .end local v0    # "text":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090178

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

    .line 1475
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1478
    if-nez p2, :cond_1

    .line 1479
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090289

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1485
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

    .line 1486
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v5, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1489
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 1480
    :cond_1
    if-ne p2, v3, :cond_2

    .line 1481
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09028a

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1483
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09028b

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
    .line 1497
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1498
    const-string v0, ""

    .line 1500
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1501
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090174

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1521
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

    .line 1522
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1525
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 1502
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1503
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1504
    :cond_2
    const/4 v1, 0x7

    if-ne p1, v1, :cond_3

    .line 1505
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1507
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1508
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1509
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 1510
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1511
    :cond_5
    const/16 v1, 0x8

    if-ne p1, v1, :cond_6

    .line 1512
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1514
    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    .line 1515
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1516
    :cond_7
    const/4 v1, 0x6

    if-ne p1, v1, :cond_8

    .line 1517
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1519
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090175

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

    .line 1528
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v0, v3

    .line 1531
    .local v0, "mirror":Z
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1532
    .local v2, "previewWidth":I
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1534
    .local v1, "previewHeight":I
    if-eqz v0, :cond_2

    const/high16 v4, -0x40800000    # -1.0f

    :goto_1
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1536
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->getCameraDisplayOrientation()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1539
    int-to-float v4, v2

    div-float/2addr v4, v7

    int-to-float v5, v1

    div-float/2addr v5, v7

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1540
    int-to-float v4, v2

    div-float/2addr v4, v6

    int-to-float v5, v1

    div-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1543
    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isWidePreviewAspectRatio()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1544
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1545
    sget v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FULL_SCREEN_PREVIEW_HEIGHT:I

    .line 1549
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1550
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

    .line 1554
    :goto_2
    return-void

    .line 1528
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

    .line 1534
    goto :goto_1

    .line 1552
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

    .line 1557
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1558
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Landroid/graphics/Rect;

    aput-object v2, v1, v0

    .line 1557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1560
    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Landroid/graphics/Rect;

    .line 1561
    return-void
.end method

.method private setAlignForOrientation()V
    .locals 3

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1576
    :goto_0
    return-void

    .line 1567
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextWidth:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto :goto_0

    .line 1571
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto :goto_0

    .line 1564
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
    .line 1579
    if-nez p1, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1581
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1585
    :cond_0
    return-void
.end method

.method private showAfProgress()V
    .locals 2

    .prologue
    .line 1588
    const-string v0, "OverlayLayout"

    const-string v1, "showAfProgress"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->showAfProgress()V

    .line 1592
    :cond_0
    return-void
.end method

.method private showMultiAfView()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1595
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAfView:Lcom/sec/android/app/camera/widget/gl/MultiAfView;

    if-nez v0, :cond_0

    .line 1596
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/MultiAfView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/MultiAfView;-><init>(Lcom/samsung/android/glview/GLContext;IILandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAfView:Lcom/sec/android/app/camera/widget/gl/MultiAfView;

    .line 1597
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAfView:Lcom/sec/android/app/camera/widget/gl/MultiAfView;

    invoke-virtual {v0, v6, v5}, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->setVisibility(IZ)V

    .line 1598
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAfView:Lcom/sec/android/app/camera/widget/gl/MultiAfView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1600
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->isTouchAfActive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->isTouchAeAfMoving()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isObjectTrackingAFStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 1601
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1602
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAfView:Lcom/sec/android/app/camera/widget/gl/MultiAfView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 1603
    const-string v0, "OverlayLayout"

    const-string v1, "showMultiAfView"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAfView:Lcom/sec/android/app/camera/widget/gl/MultiAfView;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->setVisibility(IZ)V

    .line 1607
    :cond_1
    return-void
.end method

.method private showShootingModeHelpText()V
    .locals 12

    .prologue
    .line 1610
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    sub-float v2, v6, v7

    .line 1611
    .local v2, "ratio_margin":F
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->BASEMENU_GROUP_WIDTH:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextWidth:F

    .line 1612
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextWidth:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    .line 1614
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCommandIdByCurrentShootingMode()I

    move-result v4

    .line 1615
    .local v4, "shootingModeCommandId":I
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getShootingmodeHelpTextResIdByCommandId(I)I

    move-result v0

    .line 1616
    .local v0, "helpTextResId":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_3

    .line 1617
    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v5

    .line 1618
    .local v5, "stringHeight":F
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextWidth:F

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v6

    int-to-float v3, v6

    .line 1619
    .local v3, "rows":F
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIZE:F

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v6

    int-to-float v1, v6

    .line 1620
    .local v1, "landscapeRows":F
    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v6, v3, v6

    if-lez v6, :cond_0

    .line 1621
    const/high16 v3, 0x40000000    # 2.0f

    .line 1623
    :cond_0
    mul-float v6, v5, v3

    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_LINE_SPACING:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v8, v3, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    .line 1624
    mul-float v6, v5, v1

    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_LINE_SPACING:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v8, v1, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    .line 1630
    .end local v1    # "landscapeRows":F
    .end local v3    # "rows":F
    .end local v5    # "stringHeight":F
    :goto_0
    sparse-switch v4, :sswitch_data_0

    .line 1712
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1715
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 1716
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextWidth:F

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    .line 1720
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->updateLayout(Z)V

    .line 1721
    return-void

    .line 1626
    :cond_3
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT:I

    iput v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    .line 1627
    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_HEIGHT_VERTICAL:I

    iput v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    goto :goto_0

    .line 1640
    :sswitch_0
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    sub-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1641
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X_PORTRAIT:F

    add-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1642
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    add-float/2addr v8, v9

    sub-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1643
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x3

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X_PORTRAIT:F

    add-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1644
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1645
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 1648
    :sswitch_1
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    sub-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_VIRTUAL_BOTTOM_MARGIN:F

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1649
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1650
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    add-float/2addr v8, v9

    sub-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_VIRTUAL_BOTTOM_MARGIN:F

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1651
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x3

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1652
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1653
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 1657
    :sswitch_2
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1658
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1659
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    add-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1660
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x3

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_PANORAMA_LIVEPREVIEW_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1661
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1662
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 1665
    :sswitch_3
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v6

    if-nez v6, :cond_5

    .line 1666
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    sub-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1667
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1668
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    add-float/2addr v8, v9

    sub-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_HEIGHT:F

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1669
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x3

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_PROGRESSBAR_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1670
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09022b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1678
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 1671
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSoundAndShotMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1672
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    sub-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1673
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1674
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    add-float/2addr v8, v9

    sub-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN:F

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1675
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x3

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SOUND_AND_SHOT_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1676
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09022a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1681
    :sswitch_4
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    sub-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN:F

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1682
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    add-float/2addr v8, v9

    sub-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1683
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1684
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x3

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_REAR_CAM_SELFIE_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1685
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v0, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1686
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 1691
    :sswitch_5
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    sub-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN:F

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1692
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    add-float/2addr v8, v9

    sub-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_Y:F

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1693
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1694
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x3

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDESELFIE_BOTTOM_MARGIN_PORTRAIT:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1695
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1696
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 1699
    :sswitch_6
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1702
    :sswitch_7
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1703
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    sub-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1704
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextWidth:F

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextPosX:F

    add-float/2addr v8, v9

    sub-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1705
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X_PORTRAIT:F

    add-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1706
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x3

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_POS_X_PORTRAIT:F

    add-float/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 1707
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1708
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_1

    .line 1718
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    iget v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->HELP_TEXT_WIDTH_VERTICAL:F

    iget v8, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpTextHeightVertical:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    goto/16 :goto_2

    .line 1630
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
    .end sparse-switch
.end method

.method private startVisionIntelligenceEffectAnimation()V
    .locals 15

    .prologue
    .line 1724
    const-string v0, "OverlayLayout"

    const-string v1, "startVisionIntelligenceEffectAnimation start"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/16 v0, 0xc

    if-ge v12, v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    aget-object v0, v0, v12

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_POS_Y:[I

    aget v1, v1, v12

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_SIZE:[I

    aget v2, v2, v12

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_POS_X:[I

    aget v2, v2, v12

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_SIZE:[I

    aget v3, v3, v12

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_SIZE:[I

    aget v3, v3, v12

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_SIZE:[I

    aget v4, v4, v12

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLCircle;->setCircle(FFFF)V

    .line 1727
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    aget-object v0, v0, v12

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLCircle;->setAlpha(F)V

    .line 1725
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1730
    :cond_0
    const/4 v12, 0x0

    :goto_1
    const/16 v0, 0xc

    if-ge v12, v0, :cond_1

    .line 1731
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v1, v0, v12

    .line 1730
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1734
    :cond_1
    const/4 v12, 0x0

    :goto_2
    const/16 v0, 0xc

    if-ge v12, v0, :cond_3

    .line 1735
    move v13, v12

    .line 1736
    .local v13, "tempI":I
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    aget-object v0, v0, v12

    if-nez v0, :cond_2

    .line 1742
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 1743
    .local v11, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v0, 0x29a

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1744
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VI_EFFECT_START_OFFSET:[I

    aget v0, v0, v12

    int-to-long v0, v0

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1745
    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/SineOut33;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/interpolator/SineOut33;-><init>()V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1746
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout$13;

    invoke-direct {v0, p0, v13}, Lcom/sec/android/app/camera/menu/OverlayLayout$13;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;I)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1782
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    aget-object v0, v0, v12

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLCircle;->setVisibility(I)V

    .line 1783
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    aput-object v11, v0, v12

    .line 1734
    .end local v11    # "animator":Landroid/animation/ValueAnimator;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1788
    .end local v13    # "tempI":I
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceAnimatorset:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1789
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceAnimatorset:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1791
    const/4 v12, 0x0

    :goto_3
    const/16 v0, 0xc

    if-ge v12, v0, :cond_5

    .line 1792
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1793
    .local v10, "animationset":Landroid/view/animation/AnimationSet;
    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VISION_INTELLIGENCE_BUTTON_POS_X:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLCircle;->getCurrentLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLCircle;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->VISION_INTELLIGENCE_BUTTON_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v12

    .line 1794
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLCircle;->getCurrentTop()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLCircle;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v12

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineOut33;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineOut33;-><init>()V

    const/16 v8, 0x1f4

    .line 1793
    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 1796
    .local v14, "trans":Landroid/view/animation/Animation;
    const-wide/16 v0, 0x513

    invoke-virtual {v14, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1797
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1799
    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    .line 1800
    .local v9, "alpha":Landroid/view/animation/Animation;
    const-wide/16 v0, 0x65d

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1801
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1803
    invoke-virtual {v10, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1804
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1805
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1806
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    aget-object v0, v0, v12

    invoke-virtual {v0, v10}, Lcom/samsung/android/glview/GLCircle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1807
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLCircle;->startAnimation()V

    .line 1809
    if-nez v12, :cond_4

    .line 1810
    new-instance v0, Lcom/sec/android/app/camera/menu/OverlayLayout$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$14;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1791
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 1832
    .end local v9    # "alpha":Landroid/view/animation/Animation;
    .end local v10    # "animationset":Landroid/view/animation/AnimationSet;
    .end local v14    # "trans":Landroid/view/animation/Animation;
    :cond_5
    const-string v0, "OverlayLayout"

    const-string v1, "startVisionIntelligenceEffectAnimation end"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    return-void

    .line 1742
    :array_0
    .array-data 4
        0x0
        0x44268000    # 666.0f
    .end array-data
.end method

.method private updateFaceRect()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 1836
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V

    .line 1838
    const/4 v0, 0x0

    .line 1840
    .local v0, "bUpdate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_1

    .line 1841
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1842
    .local v1, "faceRect":Landroid/graphics/Rect;
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    add-int/lit8 v4, v4, -0x1

    if-gt v2, v4, :cond_0

    if-nez v1, :cond_6

    .line 1843
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLCircle;->getVisibility()I

    move-result v4

    if-ne v4, v10, :cond_5

    .line 1861
    .end local v1    # "faceRect":Landroid/graphics/Rect;
    :cond_1
    if-eqz v0, :cond_4

    .line 1862
    const/4 v3, 0x0

    .line 1864
    .local v3, "minFaceCount":I
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOldDetectedFaceCount:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    if-lt v4, v3, :cond_3

    .line 1865
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

    .line 1867
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 1868
    :cond_2
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getRectPosition(II)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/menu/OverlayLayout;->playFacePosition(II)V

    .line 1875
    :cond_3
    :goto_1
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 1876
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v4, v10, v9}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setVisibility(IZ)V

    .line 1879
    .end local v3    # "minFaceCount":I
    :cond_4
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    iput v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOldDetectedFaceCount:I

    .line 1881
    return-void

    .line 1846
    .restart local v1    # "faceRect":Landroid/graphics/Rect;
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v2

    invoke-virtual {v4, v10, v9}, Lcom/samsung/android/glview/GLCircle;->setVisibility(IZ)V

    .line 1847
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLCircle;->resetTranslate()V

    .line 1840
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1850
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1852
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1854
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

    .line 1855
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v4, v4, v2

    invoke-virtual {v4, v9, v9}, Lcom/samsung/android/glview/GLCircle;->setVisibility(IZ)V

    .line 1857
    const/4 v0, 0x1

    goto :goto_2

    .line 1869
    .end local v1    # "faceRect":Landroid/graphics/Rect;
    .restart local v3    # "minFaceCount":I
    :cond_7
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 1870
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLText;->getOrientation()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getRectPositionBasedScreenForVoiceGuide(ILandroid/graphics/RectF;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->playFacePositionBasedScreenForVoiceGuide(I)V

    goto :goto_1

    .line 1872
    :cond_8
    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->playFaceCount(I)V

    goto :goto_1
.end method

.method private updatePalmRect()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 1888
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/menu/OverlayLayout;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 1890
    .local v2, "faceRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideFaceRect(Z)V

    .line 1891
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/OverlayLayout;->prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V

    .line 1892
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1893
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForFace:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1895
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v7

    add-float v0, v5, v6

    .line 1896
    .local v0, "centerX":F
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v7

    add-float v1, v5, v6

    .line 1897
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

    .line 1898
    .local v4, "width":F
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    div-float v6, v4, v7

    sub-float v6, v0, v6

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 1899
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    div-float v6, v3, v7

    sub-float v6, v1, v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 1901
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6, v7, v4, v3}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 1902
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v5, v8}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 1903
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5, v8}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    .line 1904
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x65

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1905
    return-void

    .line 1897
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

    .line 1908
    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v1, v2

    .line 1910
    .local v0, "ratio_margin":F
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1911
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1912
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_SIZE:F

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setWidth(F)V

    .line 1913
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v5, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1915
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_TEXT_MARGIN:F

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setWidth(F)V

    .line 1916
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

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SIDE_QUICK_SETTING_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    .line 1918
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1919
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v8}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 1937
    :goto_0
    return-void

    .line 1921
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 1922
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TEXT_SIZE:F

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setWidth(F)V

    .line 1923
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v5, v5}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 1925
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_TEXT_MARGIN:F

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 1926
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1927
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    int-to-float v3, v3

    invoke-virtual {v1, v7, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1928
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_LANDSCAPE_TOP_MARGIN:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1929
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SIDE_QUICK_SETTING_WIDTH:I

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

    .line 1930
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SIDE_QUICK_SETTING_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 1934
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 1935
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v8}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    .line 1932
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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterPreviewSizeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewSizeChangedListener;)V

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideToastView:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    .line 280
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->resetFaceInfo()V

    .line 282
    :cond_2
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    .line 283
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceAnimatorset:Landroid/animation/AnimatorSet;

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_3

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffectAnimator:[Landroid/animation/Animator;

    aput-object v3, v1, v0

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_3
    iput-object v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    .line 288
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 290
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 292
    return-void
.end method

.method public getAlwaysVisibleOverlayViewGroup()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getFaceCount()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    return v0
.end method

.method public getPreviewOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getShootingModeOverLayViewGroup()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getToastViewGroup()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public hideAfButton()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setVisibility(I)V

    .line 320
    :cond_0
    return-void
.end method

.method public hideAutoFilterPinButton()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAutoFilterPinButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAutoFilterPinButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 327
    :cond_0
    return-void
.end method

.method public hideDivideAfButton()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->hideDivideAfButton()V

    .line 334
    :cond_0
    return-void
.end method

.method public hideEffectEditButton()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 341
    :cond_0
    return-void
.end method

.method public hideFaceRect(Z)V
    .locals 5
    .param p1, "bAnimation"    # Z

    .prologue
    const/16 v4, 0xa

    .line 345
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    if-eqz p1, :cond_2

    .line 349
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 350
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    new-instance v2, Lcom/sec/android/app/camera/menu/OverlayLayout$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$4;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 367
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 368
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 369
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLCircle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 370
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLCircle;->startAnimation()V

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    .end local v0    # "anim":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v4, :cond_3

    .line 374
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLCircle;->setVisibility(I)V

    .line 375
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLCircle;->resetTranslate()V

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 378
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceRectInvisibled:Z

    goto :goto_0
.end method

.method public hideObjectTrackingView()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->resetTranslate()V

    goto :goto_0
.end method

.method public hidePalmRect()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->resetTranslate()V

    goto :goto_0
.end method

.method public hideRandomStickerButton()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRandomStickerButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRandomStickerButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 406
    :cond_0
    return-void
.end method

.method public hideShootingModeText()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 410
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    if-eqz v0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHelpText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideSideQuickSettingToast()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideStickerRectHandler(Z)V
    .locals 1
    .param p1, "isStickerTouchOverlayEnabled"    # Z

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerRectHandler:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerRectHandler:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->hideRectHandler(Z)V

    .line 446
    :cond_0
    return-void
.end method

.method public hideStickerSoundMuteButton()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 439
    :cond_0
    return-void
.end method

.method public hideTouchAeButton()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->hideTouchAeButton()V

    .line 453
    :cond_0
    return-void
.end method

.method public hideTouchEVSlider()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->hideTouchEVSlider()V

    .line 460
    :cond_0
    return-void
.end method

.method public hideVisionIntelligenceEffect()V
    .locals 3

    .prologue
    .line 463
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceAnimatorset:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    if-nez v1, :cond_1

    .line 474
    :cond_0
    return-void

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->isAnimationFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceAnimatorset:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 467
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceAnimatorset:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 469
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLCircle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 471
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mVisionIntelligenceEffect:[Lcom/samsung/android/glview/GLCircle;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLCircle;->setVisibility(I)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected isTouchAeAfMoving()Z
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 973
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchAeState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchAfState:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTouchEVStartMove()Z
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->isTouchEVStartMove()Z

    move-result v0

    .line 980
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisionIntelligenceAnimationCompleted()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsVisionIntelligenceAnimationCompleted:Z

    return v0
.end method

.method public onAeStateChanged(I)V
    .locals 3
    .param p1, "aeState"    # I

    .prologue
    .line 483
    const-string v0, "OverlayLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAeStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iput p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchAeState:I

    .line 485
    packed-switch p1, :pswitch_data_0

    .line 498
    :goto_0
    :pswitch_0
    return-void

    .line 487
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideTouchAeButton()V

    .line 488
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideDivideAfButton()V

    goto :goto_0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onAfStateChanged(I)V
    .locals 3
    .param p1, "afState"    # I

    .prologue
    .line 502
    const-string v0, "OverlayLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAfStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iput p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchAfState:I

    .line 504
    packed-switch p1, :pswitch_data_0

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 506
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 507
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideAfButton()V

    .line 511
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

    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    if-nez v0, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->showMultiAfView()V

    goto :goto_0

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideObjectTrackingView()V

    goto :goto_1

    .line 516
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideMultiAfView()V

    .line 517
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->showAfProgress()V

    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCameraSettingChanged(II)V
    .locals 7
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x4

    .line 526
    const/4 v0, 0x0

    .line 528
    .local v0, "ratio_margin":F
    sparse-switch p1, :sswitch_data_0

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 531
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->showShootingModeText()V

    goto :goto_0

    .line 534
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->showShootingModeText()V

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 538
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->resetFaceRect()V

    goto :goto_0

    .line 543
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    if-eqz v1, :cond_0

    .line 544
    if-eqz p2, :cond_1

    .line 545
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    goto :goto_0

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    goto :goto_0

    .line 552
    :sswitch_4
    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v1, v2

    .line 553
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_2

    .line 554
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    int-to-float v3, v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 555
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PAGE_NAVIGATOR_HEIGHT:F

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 557
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v6}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    goto :goto_0

    .line 561
    :sswitch_5
    if-ne p2, v6, :cond_3

    .line 562
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setCoverCamera(Z)V

    goto :goto_0

    .line 564
    :cond_3
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setCoverCamera(Z)V

    goto :goto_0

    .line 568
    :sswitch_6
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    if-nez v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 528
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

.method public onLayoutChanged(III)V
    .locals 12
    .param p1, "orientation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 580
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

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 582
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setSize(FF)V

    .line 587
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

    .line 588
    .local v10, "modifiedShootingModeTextGroupX":F
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    neg-float v2, v10

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    .line 591
    .local v1, "glContext":Lcom/samsung/android/glview/GLContext;
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v11

    .line 592
    .local v11, "quickSettingToastVisibility":I
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v6

    .line 594
    .local v6, "quickSettingToastText":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 599
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 600
    :cond_0
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

    .line 604
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v2, 0x7f0201d2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    .line 608
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

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToast:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 612
    return-void

    .line 602
    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_WIDTH:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->TOAST_PORTRAIT_TOP_MARGIN:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SIDE_QUICK_SETTING_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    goto :goto_0
.end method

.method public onMultiAfChanged([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 616
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAfView:Lcom/sec/android/app/camera/widget/gl/MultiAfView;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAfView:Lcom/sec/android/app/camera/widget/gl/MultiAfView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->onMultiAfChanged([B)V

    .line 619
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 623
    iget v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 624
    iput p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOrientation:I

    .line 627
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->setAlignForOrientation()V

    .line 628
    return-void
.end method

.method public onPhaseAfChanged(II)V
    .locals 1
    .param p1, "positionGap"    # I
    .param p2, "reliability"    # I

    .prologue
    .line 632
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setPositionGap(I)V

    .line 634
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setReliability(I)V

    .line 636
    :cond_0
    return-void
.end method

.method public onPreviewSizeChanged()V
    .locals 2

    .prologue
    .line 640
    const-string v0, "OverlayLayout"

    const-string v1, "onPreviewSizeChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->updateGuideLineSize()V

    .line 642
    return-void
.end method

.method public onTouchEVSliderTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 646
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->onTouchEVSliderTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 649
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshOverlayLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 655
    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isEffectCategorySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->showEffectEditButton()V

    .line 663
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->updateAutoFilterPinButton()V

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v0

    if-eqz v0, :cond_4

    .line 667
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    .line 672
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v0

    if-eqz v0, :cond_5

    .line 673
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isObjectTrackingAFStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setVisibility(I)V

    .line 679
    :cond_2
    :goto_2
    return-void

    .line 661
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideEffectEditButton()V

    goto :goto_0

    .line 669
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setVisibility(I)V

    goto :goto_1

    .line 677
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideObjectTrackingView()V

    goto :goto_2
.end method

.method public resetFaceRect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 683
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideFaceRect(Z)V

    .line 688
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mOldDetectedFaceCount:I

    .line 689
    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    goto :goto_0
.end method

.method public resetFaceRectVisibility()V
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceRectInvisibled:Z

    .line 695
    return-void
.end method

.method public setDivideAfPosition(II)V
    .locals 1
    .param p1, "afPosX"    # I
    .param p2, "afPosY"    # I

    .prologue
    .line 699
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->setDivideAfPosition(II)V

    .line 701
    const-string v0, "2011"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 703
    :cond_0
    return-void
.end method

.method public setStickerDefaultPosition(II)V
    .locals 3
    .param p1, "stickerId"    # I
    .param p2, "stickerType"    # I

    .prologue
    const/4 v2, 0x1

    .line 707
    const-string v0, "OverlayLayout"

    const-string v1, "setStickerDefaultPosition"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerRectHandler:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerRectHandler:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerRectHandler:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->setRotatable(Z)V

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerRectHandler:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->setCenterPivot(Z)V

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerRectHandler:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->setClipping(Z)V

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerRectHandler:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayLayout$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$5;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->setDeleteClickListener(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$DeleteClickListener;)V

    .line 719
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerRectHandler:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayLayout$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$6;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->setStickerCoordinateUpdateListener(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$StickerCoordinateUpdateListener;)V

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerRectHandler:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayLayout$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$7;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->setWatermarkUpdateListener(Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$WatermarkImageUpdateListener;)V

    .line 731
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerRectHandler:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerRectHandler:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->setDefaultPosition(II)V

    .line 734
    return-void
.end method

.method public setTouchAePosition(II)V
    .locals 1
    .param p1, "aePosX"    # I
    .param p2, "aePosY"    # I

    .prologue
    .line 738
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfAeButton:Lcom/sec/android/app/camera/widget/gl/AfAeButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/AfAeButton;->setTouchAePosition(II)V

    .line 741
    :cond_0
    return-void
.end method

.method public setTouchAfPosition(II)V
    .locals 2
    .param p1, "afPosX"    # I
    .param p2, "afPosY"    # I

    .prologue
    .line 745
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAfButton:Lcom/sec/android/app/camera/widget/gl/AfButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setTouchAfPosition(II)V

    .line 749
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 752
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPreviewOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mToastViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 755
    return-void
.end method

.method public setVisionIntelligenceEffectAnimationListener(Lcom/sec/android/app/camera/interfaces/OverlayLayoutController$VisionIntelligenceEffectAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/OverlayLayoutController$VisionIntelligenceEffectAnimationListener;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAnimationListener:Lcom/sec/android/app/camera/interfaces/OverlayLayoutController$VisionIntelligenceEffectAnimationListener;

    .line 760
    return-void
.end method

.method public showEffectEditButton()V
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mEffectEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 767
    :cond_0
    return-void
.end method

.method public showRandomStickerButton()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 771
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRandomStickerButton:Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_WIDTH:I

    int-to-float v5, v5

    const v6, 0x7f0201dd

    const v7, 0x7f0201de

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRandomStickerButton:Lcom/samsung/android/glview/GLButton;

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRandomStickerButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f090234

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRandomStickerButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRandomStickerButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRandomStickerButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRandomStickerButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayLayout$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$8;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 786
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRandomStickerButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x232d

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRandomStickerButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRandomStickerButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mRandomStickerButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 791
    return-void
.end method

.method public showShootingModeText()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 795
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 797
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 798
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->showShootingModeHelpText()V

    .line 801
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->needToSetShootingModeText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 802
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeResourceString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    .line 805
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v1, v2

    .line 806
    .local v0, "ratio_margin":F
    const-string v1, ""

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 807
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_2

    .line 808
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    int-to-float v3, v3

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 809
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SCREEN_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_LANDSCAPE_TOP_MARGIN:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->SHOOTINGMODE_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->PAGE_NAVIGATOR_HEIGHT:F

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 811
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 812
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 815
    :cond_3
    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mIsShootingModeTextHidedByTimeOut:Z

    .line 817
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 818
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideShootingModeText:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1b58

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 819
    return-void
.end method

.method public showSideQuickSettingToast(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeTextGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideShootingModeText()V

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCoverSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v0

    if-nez v0, :cond_1

    .line 829
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideSideQuickSettingToast()V

    .line 837
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->updateSideQuickSettingToast(Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_2

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideToastView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mHideToastView:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 843
    :cond_2
    return-void

    .line 832
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mSideQuickSettingToastGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v0

    if-nez v0, :cond_1

    .line 833
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideSideQuickSettingToast()V

    goto :goto_0
.end method

.method public showSticker(Z)V
    .locals 1
    .param p1, "isRectHandlerEnabled"    # Z

    .prologue
    .line 847
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerRectHandler:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerRectHandler:Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/StickerRectHandler;->showSticker(Z)V

    .line 850
    :cond_0
    return-void
.end method

.method public showStickerSoundMuteButton()V
    .locals 10

    .prologue
    const v7, 0x7f02027d

    const v6, 0x7f02027a

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_0

    .line 855
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->EFFECT_EDIT_BUTTON_WIDTH:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f090235

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 858
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayLayout$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$9;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    invoke-virtual {v0, v6, v7, v8, v8}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    .line 874
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f09004c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 876
    return-void

    .line 873
    :cond_1
    const v6, 0x7f02027b

    goto :goto_0

    :cond_2
    const v7, 0x7f02027c

    goto :goto_1

    .line 874
    :cond_3
    const v0, 0x7f09004b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public showTouchEVSlider()V
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    if-nez v0, :cond_0

    .line 881
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    .line 882
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->setTouchEVSliderChangeListener(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;)V

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mShootingModeOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mTouchEVSliderGroup:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->showTouchEVSlider()V

    .line 886
    return-void
.end method

.method public showVisionIntelligenceEffect()V
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayLayout$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/OverlayLayout$10;-><init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 895
    return-void
.end method

.method public updateAutoFilterPinButton()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAutoFilterPinButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x400

    if-ne v0, v1, :cond_1

    .line 965
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAutoFilterPinButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mAutoFilterPinButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateFaceRect([Landroid/graphics/Rect;Z)V
    .locals 6
    .param p1, "faces"    # [Landroid/graphics/Rect;
    .param p2, "isPalm"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 899
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 904
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mPalmRectangle:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLRectangle;->isVisible()I

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    iput v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    .line 909
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Landroid/graphics/Rect;

    aget-object v2, p1, v4

    aput-object v2, v1, v4

    .line 911
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->updatePalmRect()V

    .line 913
    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceRectInvisibled:Z

    goto :goto_0

    .line 915
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceRectInvisibled:Z

    if-nez v1, :cond_0

    .line 918
    array-length v1, p1

    iput v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    .line 920
    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    if-le v1, v3, :cond_3

    .line 921
    iput v3, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mDetectedFaceCount:I

    .line 924
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_5

    .line 925
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_4

    .line 926
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Landroid/graphics/Rect;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 924
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 928
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceInfo:[Landroid/graphics/Rect;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    goto :goto_2

    .line 932
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->updateFaceRect()V

    goto :goto_0
.end method

.method public updateGuideLineSize()V
    .locals 3

    .prologue
    .line 938
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 939
    .local v0, "previewRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    if-eqz v1, :cond_0

    .line 940
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mGuideLineView:Lcom/sec/android/app/camera/widget/gl/GuideLineView;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/camera/widget/gl/GuideLineView;->setGuideLineSize(Landroid/graphics/Rect;I)V

    .line 942
    :cond_0
    return-void
.end method

.method public updateMultiAfLayout()V
    .locals 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAfView:Lcom/sec/android/app/camera/widget/gl/MultiAfView;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMultiAfView:Lcom/sec/android/app/camera/widget/gl/MultiAfView;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/MultiAfView;->updateMultiAfLayout(Landroid/graphics/Rect;)V

    .line 949
    :cond_0
    return-void
.end method

.method public updateObjectTrackingRect(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "trackingRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 953
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideObjectTrackingView()V

    .line 954
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForObjectTracking:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mMatrixForObjectTracking:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 957
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

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout;->mObjectTrackingView:Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setVisibility(IZ)V

    .line 959
    return-void
.end method
