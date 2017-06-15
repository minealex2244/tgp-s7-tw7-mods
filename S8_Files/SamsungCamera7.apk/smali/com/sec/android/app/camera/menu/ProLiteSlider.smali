.class public Lcom/sec/android/app/camera/menu/ProLiteSlider;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ProLiteSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderTouchListener;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;,
        Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_150:I = 0x96

.field private static final HIDE_SLIDER_TIMER_INTERVAL:J = 0xbb8L

.field private static final HIDE_SLIDER_TIME_OUT_MSG:I = 0x0

.field public static final SLIDER_ID_EXPOSURE_VALUE:I = 0x0

.field public static final SLIDER_ID_ISO:I = 0x1

.field public static final SLIDER_ID_WB:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ProLiteSlider"


# instance fields
.field private final AUTO_LABEL_MARGIN:F

.field private final AUTO_LABEL_TOP_MARGIN:F

.field private final AUTO_LABEL_WIDTH:F

.field private final EXPOSURE_VALUE_OFFSET:I

.field private final INDICATOR_RIGHT_MARGIN:F

.field private final INDICATOR_TEXT_COLOR:I

.field private final ISO_VALUE_OFFSET:I

.field private final LABEL_MARGIN:F

.field private final LABEL_NORMAL_COLOR:I

.field private final LABEL_PRESSED_COLOR:I

.field private final LABEL_SELECTED_COLOR:I

.field private final LABEL_TEXT_COLOR:I

.field private final LABEL_TEXT_HEIGHT:F

.field private final LABEL_TEXT_SIZE:I

.field private final LABEL_TOP_MARGIN:F

.field private final NUM_OF_EXPOSURE_VALUE_STEP:[I

.field private final NUM_OF_ISO_STEP:[I

.field private final PRO_RECORDING_RIGHT_MARGIN:F

.field private final PRO_SLIDE_RECORDING_SLIDER_OFFSET_X:F

.field private final PRO_SLIDE_RIGHT_MARGIN:F

.field private final SCREEN_HEIGHT:I

.field private final SLIDER_HEIGHT:F

.field private final SLIDER_TOP_MARGIN:F

.field private final SLIDER_WIDTH:F

.field private final TICK_BAR_HEIGHT:F

.field private final VALUE_TEXT_FONT_SIZE:I

.field private final VALUE_TEXT_HEIGHT:F

.field private final VALUE_TEXT_MARGIN:F

.field private final VALUE_TEXT_WIDTH:F

.field private final WB_LABEL_GROUP_HEIGHT:F

.field private mAutoButton:Lcom/samsung/android/glview/GLButton;

.field private mAutoLabelTouchListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mHideSliderAnimation:Landroid/view/animation/Animation;

.field private mHideValueTextAnimation:Landroid/view/animation/Animation;

.field private mLabelGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;

.field private mLabelTouchListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;

.field private mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

.field protected mProSliderHideListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;

.field protected mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

.field private mSelectedLabel:Lcom/samsung/android/glview/GLView;

.field private mShowSliderAnimation:Landroid/view/animation/Animation;

.field private mShowValueTextAnimation:Landroid/view/animation/Animation;

.field private mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

.field private mSliderChangeListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;

.field private mSliderId:I

.field private mSliderTouchListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderTouchListener;

.field private mValueText:Lcom/samsung/android/glview/GLText;

.field private mWBIndicatorGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;

.field private mWBIndicatorTouchListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;

.field private mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "viewId"    # I

    .prologue
    .line 121
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 58
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    .line 59
    const v0, 0x7f0a0044

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_RIGHT_MARGIN:F

    .line 60
    const v0, 0x7f0a0192

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_RECORDING_RIGHT_MARGIN:F

    .line 61
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_RECORDING_RIGHT_MARGIN:F

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_RIGHT_MARGIN:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_RECORDING_SLIDER_OFFSET_X:F

    .line 62
    const v0, 0x7f0a0299

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_WIDTH:F

    .line 63
    const v0, 0x7f0a0385

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_HEIGHT:F

    .line 64
    const v0, 0x7f0a01a2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_MARGIN:F

    .line 65
    const v0, 0x7f0a0298

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_FONT_SIZE:I

    .line 66
    const v0, 0x7f0b004c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->EXPOSURE_VALUE_OFFSET:I

    .line 67
    const v0, 0x7f0b004e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_VALUE_OFFSET:I

    .line 68
    const v0, 0x7f0d000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_COLOR:I

    .line 71
    const v0, 0x7f0a037e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_TOP_MARGIN:F

    .line 72
    const v0, 0x7f0a0382

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->AUTO_LABEL_TOP_MARGIN:F

    .line 73
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->AUTO_LABEL_TOP_MARGIN:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->WB_LABEL_GROUP_HEIGHT:F

    .line 74
    const v0, 0x7f0a037f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_WIDTH:F

    .line 75
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_TOP_MARGIN:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_HEIGHT:F

    .line 76
    const v0, 0x7f0a03cc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->TICK_BAR_HEIGHT:F

    .line 77
    const v0, 0x7f0a03ca

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TEXT_HEIGHT:F

    .line 78
    const v0, 0x7f0a03cb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_MARGIN:F

    .line 79
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_TOP_MARGIN:F

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TEXT_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->TICK_BAR_HEIGHT:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TOP_MARGIN:F

    .line 80
    const v0, 0x7f0a03c8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->AUTO_LABEL_WIDTH:F

    .line 81
    const v0, 0x7f0a037c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->AUTO_LABEL_MARGIN:F

    .line 82
    const v0, 0x7f0a037d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_RIGHT_MARGIN:F

    .line 83
    const v0, 0x7f0a0297

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TEXT_SIZE:I

    .line 84
    const v0, 0x7f0d000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TEXT_COLOR:I

    .line 85
    const v0, 0x7f0d0011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_NORMAL_COLOR:I

    .line 86
    const v0, 0x7f0d0041

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_SELECTED_COLOR:I

    .line 87
    const v0, 0x7f0d0040

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_PRESSED_COLOR:I

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->NUM_OF_EXPOSURE_VALUE_STEP:[I

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->NUM_OF_ISO_STEP:[I

    .line 105
    new-instance v0, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    .line 106
    new-instance v0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/sec/android/app/camera/menu/ProLiteSlider$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;

    .line 107
    new-instance v0, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderTouchListener;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/sec/android/app/camera/menu/ProLiteSlider$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderTouchListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderTouchListener;

    .line 108
    new-instance v0, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/sec/android/app/camera/menu/ProLiteSlider$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicatorTouchListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;

    .line 109
    new-instance v0, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/sec/android/app/camera/menu/ProLiteSlider$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mLabelTouchListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;

    .line 110
    new-instance v0, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/sec/android/app/camera/menu/ProLiteSlider$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoLabelTouchListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    .line 122
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 123
    iput p6, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    .line 125
    const/16 v0, 0x96

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mShowSliderAnimation:Landroid/view/animation/Animation;

    .line 126
    const/16 v0, 0x96

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mHideSliderAnimation:Landroid/view/animation/Animation;

    .line 128
    const/16 v0, 0x96

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mShowValueTextAnimation:Landroid/view/animation/Animation;

    .line 129
    const/16 v0, 0x96

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mHideValueTextAnimation:Landroid/view/animation/Animation;

    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->initProSlider()V

    .line 132
    return-void

    .line 89
    nop

    :array_0
    .array-data 4
        0x5
        0xa
    .end array-data

    .line 90
    :array_1
    .array-data 4
        0x4
        0x1
    .end array-data
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TEXT_SIZE:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/ProLiteSlider;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_MARGIN:F

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TEXT_HEIGHT:F

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/menu/ProLiteSlider;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_HEIGHT:F

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/menu/ProLiteSlider;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->TICK_BAR_HEIGHT:F

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TEXT_COLOR:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mLabelTouchListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelTouchListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/menu/ProLiteSlider;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TOP_MARGIN:F

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/menu/ProLiteSlider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setValueText(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->isTtsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/menu/ProLiteSlider;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->speakTtsString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->AUTO_LABEL_WIDTH:F

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicatorTouchListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorTouchListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->WB_LABEL_GROUP_HEIGHT:F

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;
    .param p1, "x1"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_PRESSED_COLOR:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;
    .param p1, "x1"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_NORMAL_COLOR:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/ProLiteSlider;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/ProLiteSlider;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProLiteSlider;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_SELECTED_COLOR:I

    return v0
.end method

.method private getOffset()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    packed-switch v0, :pswitch_data_0

    .line 280
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 276
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->EXPOSURE_VALUE_OFFSET:I

    goto :goto_0

    .line 278
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->ISO_VALUE_OFFSET:I

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getWBKelvinString(I)Ljava/lang/String;
    .locals 4
    .param p1, "wbValue"    # I

    .prologue
    .line 285
    const-string v0, " "

    .line 286
    .local v0, "kelvinString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_0
    return-object v0

    .line 288
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090335

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    goto :goto_0

    .line 291
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090334

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    goto :goto_0

    .line 294
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090337

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    goto :goto_0

    .line 297
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090336

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initAutoButton()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 306
    const/16 v0, 0x5dc

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v10

    .line 308
    .local v10, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getLayoutX()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->AUTO_LABEL_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->AUTO_LABEL_WIDTH:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->AUTO_LABEL_TOP_MARGIN:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->AUTO_LABEL_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->AUTO_LABEL_WIDTH:F

    iget v6, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v7, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v8, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoLabelTouchListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoLabelTouchListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$AutoLabelTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 318
    :cond_0
    return-void
.end method

.method private initProSlider()V
    .locals 20

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    packed-switch v1, :pswitch_data_0

    .line 369
    :goto_0
    new-instance v10, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_WIDTH:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_MARGIN:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_WIDTH:F

    sub-float v12, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v13, v1, v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_HEIGHT:F

    const-string v16, ""

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_FONT_SIZE:I

    int-to-float v0, v1

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_TEXT_COLOR:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_WIDTH:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_MARGIN:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_HEIGHT:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_WIDTH:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_MARGIN:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_WIDTH:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getWidth()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_WIDTH:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_MARGIN:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->VALUE_TEXT_WIDTH:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 378
    return-void

    .line 327
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0c0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    .line 328
    .local v8, "stepArray":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 329
    .local v9, "textArray":[Ljava/lang/String;
    new-instance v1, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getWidth()F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_WIDTH:F

    sub-float v4, v2, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    int-to-float v7, v2

    const/4 v10, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/samsung/android/glview/GLContext;FFFF[I[Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;

    .line 330
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;->setClipping(Z)V

    .line 332
    new-instance v10, Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_WIDTH:F

    sub-float v12, v1, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_TOP_MARGIN:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->NUM_OF_EXPOSURE_VALUE_STEP:[I

    const/4 v2, 0x0

    aget v16, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->NUM_OF_EXPOSURE_VALUE_STEP:[I

    const/4 v2, 0x1

    aget v17, v1, v2

    const/16 v18, 0x1

    invoke-direct/range {v10 .. v18}, Lcom/sec/android/app/camera/widget/gl/TickSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setTickSliderOffsetChangeListener(Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderTouchListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderTouchListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->EXPOSURE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setGaugeZeroStep(I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->EXPOSURE_VALUE_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setCurrentStep(I)Z

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    .line 343
    .end local v8    # "stepArray":[I
    .end local v9    # "textArray":[Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    .line 344
    .restart local v8    # "stepArray":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 345
    .restart local v9    # "textArray":[Ljava/lang/String;
    new-instance v1, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getWidth()F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_WIDTH:F

    sub-float v4, v2, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SCREEN_HEIGHT:I

    int-to-float v7, v2

    const/4 v10, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/samsung/android/glview/GLContext;FFFF[I[Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;->setClipping(Z)V

    .line 348
    new-instance v10, Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_WIDTH:F

    sub-float v12, v1, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_TOP_MARGIN:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_WIDTH:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->SLIDER_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->NUM_OF_ISO_STEP:[I

    const/4 v2, 0x0

    aget v16, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->NUM_OF_ISO_STEP:[I

    const/4 v2, 0x1

    aget v17, v1, v2

    const/16 v18, 0x1

    invoke-direct/range {v10 .. v18}, Lcom/sec/android/app/camera/widget/gl/TickSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setTickSliderOffsetChangeListener(Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderTouchListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$SliderTouchListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setGaugeZeroStep(I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setCurrentStep(I)Z

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 358
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->initAutoButton()V

    goto/16 :goto_0

    .line 361
    .end local v8    # "stepArray":[I
    .end local v9    # "textArray":[Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    .line 362
    .restart local v8    # "stepArray":[I
    new-instance v10, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->INDICATOR_RIGHT_MARGIN:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->AUTO_LABEL_WIDTH:F

    sub-float v13, v1, v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->AUTO_LABEL_TOP_MARGIN:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->AUTO_LABEL_WIDTH:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->WB_LABEL_GROUP_HEIGHT:F

    move/from16 v16, v0

    const/16 v18, 0x9

    move-object/from16 v11, p0

    move-object/from16 v17, v8

    invoke-direct/range {v10 .. v18}, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;-><init>(Lcom/sec/android/app/camera/menu/ProLiteSlider;Lcom/samsung/android/glview/GLContext;FFFF[II)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicatorGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicatorGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;->setClipping(Z)V

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicatorGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isTtsEnabled()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 382
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

.method private setValueText(I)V
    .locals 7
    .param p1, "value"    # I

    .prologue
    .line 386
    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    packed-switch v1, :pswitch_data_0

    .line 414
    :goto_0
    return-void

    .line 388
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    if-lez p1, :cond_0

    const-string v1, "+%.1f"

    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-float v5, p1

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "%.1f"

    goto :goto_1

    .line 391
    :pswitch_1
    if-nez p1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "isoString":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getOffset()I

    move-result v2

    sub-int v2, p1, v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    .end local v0    # "isoString":[Ljava/lang/String;
    :pswitch_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090106

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getWBKelvinString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090105

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getWBKelvinString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 404
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090108

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getWBKelvinString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 406
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090107

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getWBKelvinString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private speakTtsString(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttsString"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 418
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hideSlider()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mHideSliderAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mHideSliderAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->startAnimation()V

    .line 145
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setVisibility(I)V

    .line 146
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->stopSliderMenuTimer()V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->stopSliderExpand()V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHideListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;->onHideProSlider(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V

    .line 152
    return-void
.end method

.method public hideValueText()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mHideValueTextAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mHideValueTextAnimation:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 159
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x2

    .line 163
    packed-switch p1, :pswitch_data_0

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 180
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 181
    return-void

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;->removeMessages(I)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 186
    return-void
.end method

.method public setAutoDim(Z)V
    .locals 2
    .param p1, "isDimmed"    # Z

    .prologue
    .line 189
    if-eqz p1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_NORMAL_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTint(I)V

    .line 196
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 197
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTint(I)V

    goto :goto_0
.end method

.method public setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHideListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;

    .line 201
    return-void
.end method

.method public setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderValueSelectListener:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;

    .line 205
    return-void
.end method

.method public showValueText()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mShowValueTextAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mShowValueTextAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->startAnimation()V

    .line 213
    :cond_0
    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mProSliderHandler:Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHandler;->removeMessages(I)V

    .line 217
    return-void
.end method

.method public updateProRecordingSliderPosition()V
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->PRO_SLIDE_RECORDING_SLIDER_OFFSET_X:F

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->moveBaseLayoutAbsolute(FF)V

    .line 221
    return-void
.end method

.method public updateProSliderPosition()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->moveBaseLayoutAbsolute(FF)V

    .line 225
    return-void
.end method

.method public updateSliderValue(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mShowSliderAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mShowSliderAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setAnimation(Landroid/view/animation/Animation;)V

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->startAnimation()V

    .line 232
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setVisibility(I)V

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->restartSliderMenuTimer()V

    .line 235
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 236
    if-le p1, v3, :cond_3

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicatorGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 244
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setValueText(I)V

    .line 271
    :cond_2
    :goto_1
    return-void

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBIndicatorGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$WBIndicatorGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mWBSelectedIndicator:Lcom/samsung/android/glview/GLView;

    goto :goto_0

    .line 246
    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSliderId:I

    if-ne v0, v3, :cond_7

    if-nez p1, :cond_7

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_5

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setMarkerVisible(I)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTint(I)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setSelected(Z)V

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_6

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_NORMAL_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 255
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_1

    .line 259
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setMarkerVisible(I)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getOffset()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setCurrentStep(I)Z

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mLabelGroup:Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getOffset()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider$LabelGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_8

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mSelectedLabel:Lcom/samsung/android/glview/GLView;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->LABEL_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 265
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProLiteSlider;->mValueText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    .line 268
    :cond_9
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setValueText(I)V

    goto :goto_1
.end method
