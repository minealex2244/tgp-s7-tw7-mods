.class public Lcom/sec/android/app/camera/widget/gl/AfButton;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "AfButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;,
        Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;
    }
.end annotation


# static fields
.field private static MAX_PAF_CONTROL_POSITION:F = 0.0f

.field private static MAX_PAF_LENS_POSITION:I = 0x0

.field private static final MAX_SCALE_VALUE:F = 1.0f

.field private static MIN_PAF_CONTROL_POSITION:F = 0.0f

.field private static final MIN_SCALE_VALUE:F = 0.8f

.field private static PAF_BASE_DURATION:I = 0x0

.field private static PAF_CONTROL_DURATION:I = 0x0

.field private static PAF_RELIABILITY_THRESHOLD_TOUCH_AF:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "AfButton"


# instance fields
.field private final CONTRAST_AF_HEIGHT:I

.field private final CONTRAST_AF_WIDTH:I

.field private final PHASE_AF_BASE_HEIGHT:I

.field private final PHASE_AF_BASE_WIDTH:I

.field private final PHASE_AF_CONTROL_HEIGHT:I

.field private final PHASE_AF_CONTROL_WIDTH:I

.field private mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mAfGroupPosX:I

.field private mAfGroupPosY:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mDegrees:F

.field private mFocusBase:Lcom/samsung/android/glview/GLResourceTexture;

.field private mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

.field private mGrowScaleAnimation:Landroid/view/animation/Animation;

.field private mOldPosX:I

.field private mOldPosY:I

.field private mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

.field private mPhaseRotateEndAction:Landroid/view/animation/Animation$AnimationListener;

.field private mReliability:I

.field private mShrinkScaleAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x12c

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PAF_BASE_DURATION:I

    .line 46
    const/16 v0, 0x96

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PAF_CONTROL_DURATION:I

    .line 47
    const/16 v0, 0x190

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->MAX_PAF_LENS_POSITION:I

    .line 48
    const/high16 v0, 0x42340000    # 45.0f

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->MIN_PAF_CONTROL_POSITION:F

    .line 49
    const/high16 v0, 0x43340000    # 180.0f

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->MAX_PAF_CONTROL_POSITION:F

    .line 50
    const/16 v0, 0x384

    sput v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PAF_RELIABILITY_THRESHOLD_TOUCH_AF:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V
    .locals 12
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 75
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 51
    const v0, 0x7f0a02e6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_WIDTH:I

    .line 52
    const v0, 0x7f0a02e5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_HEIGHT:I

    .line 53
    const v0, 0x7f0a0375

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    .line 54
    const v0, 0x7f0a0374

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    .line 55
    const v0, 0x7f0a0377

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_CONTROL_WIDTH:I

    .line 56
    const v0, 0x7f0a0376

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_CONTROL_HEIGHT:I

    .line 67
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mDegrees:F

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mReliability:I

    .line 72
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/widget/gl/AfButton$EndAction;-><init>(Lcom/sec/android/app/camera/widget/gl/AfButton;Lcom/sec/android/app/camera/widget/gl/AfButton$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateEndAction:Landroid/view/animation/Animation$AnimationListener;

    .line 77
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 79
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/widget/gl/AfButton;->setBypassTouch(Z)V

    .line 82
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    int-to-float v5, v3

    const v6, 0x7f020015

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusBase:Lcom/samsung/android/glview/GLResourceTexture;

    .line 85
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_CONTROL_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v7

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_CONTROL_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_CONTROL_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_CONTROL_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020016

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLResourceTexture;->setRotatable(Z)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLResourceTexture;->setCenterPivot(Z)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLResourceTexture;->setRotateAnimation(Z)V

    .line 91
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    int-to-float v0, v0

    mul-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    .line 92
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    int-to-float v0, v0

    mul-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    .line 94
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v7

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusBase:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 122
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f4ccccd    # 0.8f

    const v4, 0x3f4ccccd    # 0.8f

    move v1, v11

    move v3, v11

    move v5, v9

    move v6, v10

    move v7, v9

    move v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PHASE_AF_BASE_HEIGHT:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    sget v1, Lcom/sec/android/app/camera/widget/gl/AfButton;->PAF_BASE_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineInOut60;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/AfButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/AfButton$1;-><init>(Lcom/sec/android/app/camera/widget/gl/AfButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    :goto_1
    return-void

    .line 102
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_HEIGHT:I

    int-to-float v5, v3

    const v6, 0x7f020023

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusBase:Lcom/samsung/android/glview/GLResourceTexture;

    .line 103
    new-instance v0, Lcom/samsung/android/glview/GLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_WIDTH:I

    int-to-float v3, v3

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_HEIGHT:I

    int-to-float v3, v3

    const v5, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v3

    const v6, 0x7f020023

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLResourceTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

    .line 104
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_WIDTH:I

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    .line 105
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    .line 107
    new-instance v3, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_WIDTH:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v5, v0, v7

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_HEIGHT:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v6, v0, v7

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_WIDTH:I

    int-to-float v7, v0

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->CONTRAST_AF_HEIGHT:I

    int-to-float v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusBase:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 115
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/AfButton;->addView(Lcom/samsung/android/glview/GLView;)V

    goto/16 :goto_0

    .line 146
    :cond_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd    # 1.1f

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3f8ccccd    # 1.1f

    const v4, 0x3f4ccccd    # 0.8f

    move v5, v9

    move v6, v10

    move v7, v9

    move v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/AfButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/AfButton$2;-><init>(Lcom/sec/android/app/camera/widget/gl/AfButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 169
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f8ccccd    # 1.1f

    const v4, 0x3f8ccccd    # 1.1f

    move v1, v11

    move v3, v11

    move v5, v9

    move v6, v10

    move v7, v9

    move v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/AfButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/AfButton$3;-><init>(Lcom/sec/android/app/camera/widget/gl/AfButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_1
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PAF_CONTROL_DURATION:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/AfButton;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfButton;

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mDegrees:F

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/AfButton;JFFLandroid/view/animation/Interpolator;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfButton;
    .param p1, "x1"    # J
    .param p3, "x2"    # F
    .param p4, "x3"    # F
    .param p5, "x4"    # Landroid/view/animation/Interpolator;
    .param p6, "x5"    # Z

    .prologue
    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/widget/gl/AfButton;->startPhaseInfoAnimation(JFFLandroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/widget/gl/AfButton;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/widget/gl/AfButton;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/widget/gl/AfButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/AfButton;

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mReliability:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/sec/android/app/camera/widget/gl/AfButton;->PAF_RELIABILITY_THRESHOLD_TOUCH_AF:I

    return v0
.end method

.method private startPhaseInfoAnimation(JFFLandroid/view/animation/Interpolator;Z)V
    .locals 7
    .param p1, "duration"    # J
    .param p3, "fromDegrees"    # F
    .param p4, "toDegrees"    # F
    .param p5, "i"    # Landroid/view/animation/Interpolator;
    .param p6, "hasEndAction"    # Z

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLResourceTexture;->getLeft()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLResourceTexture;->getWidth()F

    move-result v2

    div-float/2addr v2, v5

    add-float v4, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

    .line 255
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLResourceTexture;->getTop()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLResourceTexture;->getHeight()F

    move-result v2

    div-float/2addr v2, v5

    add-float v6, v1, v2

    move v1, p3

    move v2, p4

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLResourceTexture;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLResourceTexture;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->initialize(IIII)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->reset()V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->setDuration(J)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    invoke-virtual {v0, p5}, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->setDegree(FF)V

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateEndAction:Landroid/view/animation/Animation$AnimationListener;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mPhaseRotateAnimation:Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLResourceTexture;->setAnimation(Landroid/view/animation/Animation;)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusControl:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLResourceTexture;->startAnimation()V

    .line 265
    return-void

    .line 262
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 195
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 200
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public setPositionGap(I)V
    .locals 4
    .param p1, "positionGap"    # I

    .prologue
    .line 204
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 205
    .local v0, "diff":I
    sget v1, Lcom/sec/android/app/camera/widget/gl/AfButton;->MIN_PAF_CONTROL_POSITION:F

    sget v2, Lcom/sec/android/app/camera/widget/gl/AfButton;->MAX_PAF_CONTROL_POSITION:F

    sget v3, Lcom/sec/android/app/camera/widget/gl/AfButton;->MIN_PAF_CONTROL_POSITION:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/widget/gl/AfButton;->MAX_PAF_LENS_POSITION:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 207
    int-to-float v1, v0

    sget v2, Lcom/sec/android/app/camera/widget/gl/AfButton;->MAX_PAF_CONTROL_POSITION:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 208
    sget v1, Lcom/sec/android/app/camera/widget/gl/AfButton;->MAX_PAF_CONTROL_POSITION:F

    float-to-int v0, v1

    .line 211
    :cond_0
    if-lez p1, :cond_1

    .line 212
    mul-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mDegrees:F

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_1
    int-to-float v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mDegrees:F

    goto :goto_0
.end method

.method public setReliability(I)V
    .locals 0
    .param p1, "reliability"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mReliability:I

    .line 220
    return-void
.end method

.method public setTouchAfPosition(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x6

    .line 223
    const-string v2, "AfButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTouchAfPosition- x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosX:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, p1, v2

    .line 226
    .local v0, "moveX":I
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroupPosY:I

    div-int/lit8 v2, v2, 0x2

    sub-int v1, p2, v2

    .line 228
    .local v1, "moveY":I
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mOldPosX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v5, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mOldPosY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v5, :cond_1

    .line 229
    :cond_0
    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mOldPosX:I

    .line 230
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mOldPosY:I

    .line 232
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/AfButton;->translateAbsolute(FF)V

    .line 234
    :cond_1
    return-void
.end method

.method public showAfProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v0, :cond_0

    .line 239
    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mReliability:I

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusBase:Lcom/samsung/android/glview/GLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLResourceTexture;->setAnimation(Landroid/view/animation/Animation;)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mFocusBase:Lcom/samsung/android/glview/GLResourceTexture;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLResourceTexture;->startAnimation()V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 250
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton;->mAfAniGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
