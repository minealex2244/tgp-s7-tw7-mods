.class public Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "TouchEVSliderGroup.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$KeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;
    }
.end annotation


# static fields
.field private static final TOUCH_EV_MOVE_THRESHOLD_DIP:F = 10.0f


# instance fields
.field private final PROEXPOSURE_NUM_OF_STEP:I

.field private final PROEXPOSURE_VALUE_OFFSET:I

.field private final TOUCH_AREA_OFFSET_WIDTH:I

.field private final TOUCH_EV_CONTROL_ICON_HEIGHT:I

.field private final TOUCH_EV_CONTROL_ICON_WIDTH:I

.field private final TOUCH_EV_ICON_HEIGHT:I

.field private final TOUCH_EV_ICON_PADDING:I

.field private final TOUCH_EV_LEVEL_ICON_MARGIN:I

.field private final TOUCH_EV_LEVEL_ICON_POS_X:I

.field private final TOUCH_EV_SLIDEBAR_EMPTY_SPACE_HEIGHT:I

.field private final TOUCH_EV_SLIDEBAR_HEIGHT:I

.field private final TOUCH_EV_SLIDEBAR_POS_X:I

.field private final TOUCH_EV_SLIDEBAR_WIDTH:I

.field private final TOUCH_EV_SLIDE_GROUP_HEIGHT:I

.field private final TOUCH_EV_SLIDE_GROUP_POS_X:I

.field private final TOUCH_EV_SLIDE_GROUP_POS_Y:I

.field private final TOUCH_EV_SLIDE_GROUP_WIDTH:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mIsTouchDragging:Z

.field private mIsTouchStarted:Z

.field private mLastTouchPosY:I

.field private mMinusImage:Lcom/samsung/android/glview/GLImage;

.field private mPlusImage:Lcom/samsung/android/glview/GLImage;

.field private mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mTouchEVControlAreaRect:Landroid/graphics/Rect;

.field private mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

.field protected mTouchEVSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;

.field private mTouchEVStartMoveThreshold:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 13
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    .line 72
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    .line 39
    const v0, 0x7f0b0226

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_WIDTH:I

    .line 40
    const v0, 0x7f0b0225

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_HEIGHT:I

    .line 41
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f0b0033

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_X:I

    .line 42
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_Y:I

    .line 43
    const v0, 0x7f0b022a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_WIDTH:I

    .line 44
    const v0, 0x7f0b0228

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_HEIGHT:I

    .line 45
    const v0, 0x7f0b0227

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_EMPTY_SPACE_HEIGHT:I

    .line 46
    const v0, 0x7f0b0229

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_POS_X:I

    .line 47
    const v0, 0x7f0b0222

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_PADDING:I

    .line 48
    const v0, 0x7f0b0221

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    .line 49
    const v0, 0x7f0b0223

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    .line 50
    const v0, 0x7f0b0224

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_POS_X:I

    .line 51
    const v0, 0x7f0b0220

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_CONTROL_ICON_WIDTH:I

    .line 52
    const v0, 0x7f0b021f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_CONTROL_ICON_HEIGHT:I

    .line 53
    const v0, 0x7f0e0040

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->PROEXPOSURE_NUM_OF_STEP:I

    .line 54
    const v0, 0x7f0e0041

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->PROEXPOSURE_VALUE_OFFSET:I

    .line 55
    const v0, 0x7f0b0373

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_AREA_OFFSET_WIDTH:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVStartMoveThreshold:F

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_AREA_OFFSET_WIDTH:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_Y:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_X:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_WIDTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_AREA_OFFSET_WIDTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_Y:I

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_HEIGHT:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVControlAreaRect:Landroid/graphics/Rect;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    .line 74
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->setBypassTouch(Z)V

    .line 77
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setFocusable(Z)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClickable(Z)V

    .line 82
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const v4, 0x7f020014

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 88
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x7f020013

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 96
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_Y:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    add-int/2addr v0, v1

    int-to-float v12, v0

    .line 97
    .local v12, "sliderOffset":F
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_EMPTY_SPACE_HEIGHT:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_PADDING:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_CONTROL_ICON_WIDTH:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_CONTROL_ICON_HEIGHT:I

    int-to-float v9, v9

    const v10, 0x7f020015

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->PROEXPOSURE_NUM_OF_STEP:I

    invoke-direct/range {v0 .. v12}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFFIIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setClipping(Z)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setFocusable(Z)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setClickable(Z)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    const v1, 0x7f0a00ca

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setTitle(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;-><init>(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setSliderChangeListener(Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVStartMoveThreshold:F

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->PROEXPOSURE_VALUE_OFFSET:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    return-object v0
.end method

.method private initTouchEVSlider()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->PROEXPOSURE_VALUE_OFFSET:I

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setCurrentEVStep(I)Z

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->resetEVSliderAlpha()V

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public hideTouchEVSlider()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 130
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    .line 131
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    .line 132
    return-void
.end method

.method public isTouchEVStartMove()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v7, 0x14

    const/16 v6, 0x13

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 140
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartHideTouchEVMessage()V

    .line 142
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    .line 143
    .local v0, "orientation":I
    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v2, v7, :cond_3

    :cond_0
    if-ne v0, v1, :cond_1

    .line 144
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x16

    if-eq v2, v3, :cond_3

    :cond_1
    if-ne v0, v4, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v2, v6, :cond_3

    :cond_2
    if-ne v0, v5, :cond_4

    .line 145
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_4

    .line 146
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getCurrentEVStep()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setCurrentEVStep(I)Z

    .line 154
    :goto_0
    return v1

    .line 148
    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v2, v6, :cond_8

    :cond_5
    if-ne v0, v1, :cond_6

    .line 149
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x15

    if-eq v2, v3, :cond_8

    :cond_6
    if-ne v0, v4, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v2, v7, :cond_8

    :cond_7
    if-ne v0, v5, :cond_9

    .line 150
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_9

    .line 151
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getCurrentEVStep()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setCurrentEVStep(I)Z

    goto :goto_0

    .line 154
    :cond_9
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 165
    return-void
.end method

.method public onTouchEVSliderTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 233
    :cond_0
    :goto_0
    return v1

    .line 170
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVControlAreaRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 171
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusArea(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->initTouchEVSlider()V

    .line 174
    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    .line 175
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    goto :goto_0

    .line 178
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    .line 181
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FAST_REACTIVE_AF:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFocusState()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeHideTouchEVMessage()V

    move v1, v2

    .line 183
    goto :goto_0

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    if-eqz v1, :cond_4

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->onStartMove(FF)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->startEVSliderAnimation()V

    .line 190
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeHideTouchEVMessage()V

    move v1, v2

    .line 191
    goto :goto_0

    .line 195
    :pswitch_1
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    .line 196
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartHideTouchEVMessage()V

    .line 197
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    if-eqz v3, :cond_5

    .line 198
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeMSGToStopTouchAE()V

    .line 199
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    .line 201
    :cond_5
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    if-eqz v3, :cond_0

    .line 204
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    move v1, v2

    .line 205
    goto :goto_0

    .line 207
    :pswitch_2
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    if-eqz v3, :cond_0

    .line 211
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FAST_REACTIVE_AF:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFocusState()I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartHideTouchEVMessage()V

    move v1, v2

    .line 213
    goto/16 :goto_0

    .line 216
    :cond_6
    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    if-nez v1, :cond_8

    .line 217
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 218
    .local v0, "moveY":I
    int-to-float v1, v0

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVStartMoveThreshold:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    .line 219
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    .end local v0    # "moveY":I
    :cond_7
    :goto_1
    move v1, v2

    .line 229
    goto/16 :goto_0

    .line 222
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    if-eqz v1, :cond_9

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->onStartMove(FF)V

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->startEVSliderAnimation()V

    .line 226
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartHideTouchEVMessage()V

    goto :goto_1

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setTouchEVSliderChangeListener(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;

    .line 238
    return-void
.end method

.method public showTouchEVSlider()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 241
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->initTouchEVSlider()V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 249
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0080

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 253
    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    .line 254
    return-void
.end method
