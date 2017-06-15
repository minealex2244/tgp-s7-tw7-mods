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
.field private final TOUCH_AREA_OFFSET_WIDTH:I

.field private final TOUCH_EV_CONTROL_ICON_HEIGHT:I

.field private final TOUCH_EV_CONTROL_ICON_WIDTH:I

.field private final TOUCH_EV_ICON_HEIGHT:I

.field private final TOUCH_EV_ICON_PADDING:I

.field private final TOUCH_EV_LEVEL_ICON_MARGIN:I

.field private final TOUCH_EV_LEVEL_ICON_POS_X:I

.field private final TOUCH_EV_NUM_OF_STEP:I

.field private final TOUCH_EV_OFFSET:I

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
    .line 75
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    .line 42
    const v0, 0x7f0a03e2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_WIDTH:I

    .line 43
    const v0, 0x7f0a0058

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_HEIGHT:I

    .line 44
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f0a0059

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_X:I

    .line 45
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_Y:I

    .line 46
    const v0, 0x7f0a03e3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_WIDTH:I

    .line 47
    const v0, 0x7f0a005b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_HEIGHT:I

    .line 48
    const v0, 0x7f0a005a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_EMPTY_SPACE_HEIGHT:I

    .line 49
    const v0, 0x7f0a03e0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    .line 50
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDEBAR_POS_X:I

    .line 51
    const v0, 0x7f0a03e1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_PADDING:I

    .line 52
    const v0, 0x7f0a0057

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    .line 53
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_POS_X:I

    .line 54
    const v0, 0x7f0a03df

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_CONTROL_ICON_WIDTH:I

    .line 55
    const v0, 0x7f0a03de

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_CONTROL_ICON_HEIGHT:I

    .line 56
    const v0, 0x7f0b0050

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_NUM_OF_STEP:I

    .line 57
    const v0, 0x7f0b005a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_OFFSET:I

    .line 58
    const v0, 0x7f0a005c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_AREA_OFFSET_WIDTH:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVStartMoveThreshold:F

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    .line 63
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

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    .line 77
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->setBypassTouch(Z)V

    .line 80
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

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setFocusable(Z)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClickable(Z)V

    .line 85
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const v4, 0x7f02001e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mPlusImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 91
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

    const v4, 0x7f02001d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mMinusImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 99
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_SLIDE_GROUP_POS_Y:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_LEVEL_ICON_MARGIN:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_ICON_HEIGHT:I

    add-int/2addr v0, v1

    int-to-float v12, v0

    .line 100
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

    const v10, 0x7f02001f

    iget v11, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_NUM_OF_STEP:I

    invoke-direct/range {v0 .. v12}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFFIIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setClipping(Z)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setFocusable(Z)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setClickable(Z)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    const v1, 0x7f0900cb

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setTitle(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;-><init>(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setSliderChangeListener(Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVStartMoveThreshold:F

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_OFFSET:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    return-object v0
.end method

.method private initTouchEVSlider()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->TOUCH_EV_OFFSET:I

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setCurrentEVStep(I)Z

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->resetEVSliderAlpha()V

    .line 253
    :cond_0
    return-void
.end method


# virtual methods
.method public hideTouchEVSlider()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 133
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    .line 134
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    .line 135
    return-void
.end method

.method public isTouchEVStartMove()Z
    .locals 1

    .prologue
    .line 138
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

    .line 143
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartHideTouchEVMessage()V

    .line 145
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    .line 146
    .local v0, "orientation":I
    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v2, v7, :cond_3

    :cond_0
    if-ne v0, v1, :cond_1

    .line 147
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

    .line 148
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_4

    .line 149
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getCurrentEVStep()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setCurrentEVStep(I)Z

    .line 157
    :goto_0
    return v1

    .line 151
    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v2, v6, :cond_8

    :cond_5
    if-ne v0, v1, :cond_6

    .line 152
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

    .line 153
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_9

    .line 154
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getCurrentEVStep()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setCurrentEVStep(I)Z

    goto :goto_0

    .line 157
    :cond_9
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 168
    return-void
.end method

.method public onTouchEVSliderTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 173
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

    .line 174
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchPreviewArea(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->initTouchEVSlider()V

    .line 177
    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    .line 178
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    goto :goto_0

    .line 181
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    if-eqz v1, :cond_3

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->onStartMove(FF)V

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->startEVSliderAnimation()V

    .line 187
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeHideTouchEVMessage()V

    move v1, v2

    .line 188
    goto :goto_0

    .line 192
    :pswitch_1
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    .line 193
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartHideTouchEVMessage()V

    .line 194
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    if-eqz v3, :cond_4

    .line 195
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    .line 197
    :cond_4
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    if-eqz v3, :cond_0

    .line 200
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    .line 201
    const-string v1, "1071"

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    move v1, v2

    .line 202
    goto :goto_0

    .line 204
    :pswitch_2
    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchStarted:Z

    if-eqz v3, :cond_0

    .line 208
    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    if-nez v1, :cond_6

    .line 209
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 210
    .local v0, "moveY":I
    int-to-float v1, v0

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVStartMoveThreshold:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 211
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    .end local v0    # "moveY":I
    :cond_5
    :goto_1
    move v1, v2

    .line 221
    goto/16 :goto_0

    .line 214
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    if-eqz v1, :cond_7

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->onStartMove(FF)V

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSlider:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->startEVSliderAnimation()V

    .line 218
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mLastTouchPosY:I

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartHideTouchEVMessage()V

    goto :goto_1

    .line 171
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
    .line 229
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;

    .line 230
    return-void
.end method

.method public showTouchEVSlider()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->initTouchEVSlider()V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mSliderGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    .line 240
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

    .line 241
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
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

    const v2, 0x7f090082

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 245
    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mIsTouchDragging:Z

    .line 246
    return-void
.end method
