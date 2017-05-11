.class public Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;
.super Lcom/samsung/android/glview/GLView;
.source "TouchEVSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;
    }
.end annotation


# static fields
.field private static final EV_SLIDER_BAR_ALPHA_VALUE:F = 0.45f

.field private static final EV_SLIDER_BAR_ANIMATION_DURATION:I = 0x258

.field private static final TAG:Ljava/lang/String; = "TouchEVSlider"


# instance fields
.field private mAlphaDivideFactor:F

.field private mBasePositionStep:I

.field private mCurrentStep:I

.field private mGaugeMarkerPos:Landroid/graphics/PointF;

.field private mHeight:F

.field private mImage1:Lcom/samsung/android/glview/GLImage;

.field private mImage2:Lcom/samsung/android/glview/GLImage;

.field private mImage3:Lcom/samsung/android/glview/GLImage;

.field private mLastTouchPosY:F

.field private mMarkerHeight:F

.field private mMarkerOffset:F

.field private mMarkerWidth:F

.field private mNumOfStep:I

.field private mOrientation:I

.field private mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

.field private mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

.field protected mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

.field private mSliderEmptyHeight:F

.field private mSliderOffset:F

.field private mStepPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchEVShowAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFFFFFIIF)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "sliderEmptyHeight"    # F
    .param p7, "markerOffset"    # F
    .param p8, "markerWidth"    # F
    .param p9, "markerHeight"    # F
    .param p10, "backgroundResId"    # I
    .param p11, "numOfStep"    # I
    .param p12, "sliderOffset"    # F

    .prologue
    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    .line 50
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mAlphaDivideFactor:F

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderEmptyHeight:F

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mHeight:F

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderOffset:F

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    .line 58
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mOrientation:I

    .line 61
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    .line 69
    if-lez p11, :cond_0

    .line 70
    move/from16 v0, p11

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    .line 73
    :cond_0
    iput p7, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    .line 74
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    .line 75
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    .line 76
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderEmptyHeight:F

    .line 77
    iput p5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mHeight:F

    .line 78
    move/from16 v0, p12

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderOffset:F

    .line 80
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p4

    move v6, p5

    move/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    .line 81
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v1, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    .line 82
    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p4

    move v6, p5

    move/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    .line 83
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v1, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    .line 85
    add-int/lit8 v1, p11, -0x1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    .line 86
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mAlphaDivideFactor:F

    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->initEVSlider()V

    .line 89
    return-void
.end method

.method private initEVSlider()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    .line 377
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->setStepIndicatorPosition()V

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 381
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const v4, 0x7f02001a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-nez v0, :cond_1

    .line 394
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const v4, 0x7f02001b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-nez v0, :cond_2

    .line 403
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const v4, 0x7f02001c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerOffset:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerWidth:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLImage;->setLeftTop(IFF)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    iput-object p0, v0, Lcom/samsung/android/glview/GLImage;->mParent:Lcom/samsung/android/glview/GLView;

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    .line 412
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 416
    :cond_3
    return-void
.end method

.method private setStepIndicatorPosition()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 419
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v0

    mul-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getWidth()F

    move-result v2

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getHeight()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 428
    :cond_1
    return-void
.end method

.method private declared-synchronized updateEVSliderVI()V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    .line 432
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getCurrentEVStep()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mBasePositionStep:I

    sub-int v1, v6, v7

    .line 433
    .local v1, "delta":I
    int-to-float v6, v1

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mAlphaDivideFactor:F

    mul-float v0, v6, v7

    .line 434
    .local v0, "alphaOffset":F
    if-nez v1, :cond_6

    .line 435
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_0

    .line 436
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 438
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_1

    .line 439
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 457
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_2

    .line 458
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FFZ)V

    .line 460
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_3

    .line 461
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FFZ)V

    .line 463
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_4

    .line 464
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FFZ)V

    .line 467
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v6, :cond_5

    .line 469
    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mOrientation:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_a

    .line 470
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mMarkerHeight:F

    .line 474
    .local v2, "emptyHeight":F
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float v7, v2, v11

    sub-float v3, v6, v7

    .line 475
    .local v3, "height":F
    cmpg-float v6, v3, v10

    if-gtz v6, :cond_b

    .line 476
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 481
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float v7, v2, v11

    add-float v4, v6, v7

    .line 482
    .local v4, "posY":F
    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mHeight:F

    sub-float v5, v6, v4

    .line 483
    .local v5, "rightHeight":F
    cmpg-float v6, v5, v10

    if-gtz v6, :cond_c

    .line 484
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 489
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .end local v2    # "emptyHeight":F
    .end local v3    # "height":F
    .end local v4    # "posY":F
    .end local v5    # "rightHeight":F
    :cond_5
    monitor-exit p0

    return-void

    .line 441
    :cond_6
    if-gez v1, :cond_8

    .line 442
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_7

    .line 443
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    add-float v7, v9, v0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 445
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_1

    .line 446
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    add-float v7, v8, v0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 432
    .end local v0    # "alphaOffset":F
    .end local v1    # "delta":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 448
    .restart local v0    # "alphaOffset":F
    .restart local v1    # "delta":I
    :cond_8
    if-lez v1, :cond_1

    .line 449
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_9

    .line 450
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 452
    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v6, :cond_1

    .line 453
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    add-float v7, v8, v0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    goto/16 :goto_0

    .line 472
    :cond_a
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderEmptyHeight:F

    .restart local v2    # "emptyHeight":F
    goto :goto_1

    .line 478
    .restart local v3    # "height":F
    :cond_b
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6, v3}, Lcom/samsung/android/glview/GLNinePatch;->setHeight(F)V

    .line 479
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_2

    .line 486
    .restart local v4    # "posY":F
    .restart local v5    # "rightHeight":F
    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6, v5}, Lcom/samsung/android/glview/GLNinePatch;->setHeight(F)V

    .line 487
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    .line 113
    :cond_4
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected findNearestStepId(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, "interval":F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getHeight()F

    move-result v3

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mHeight:F

    sub-float v2, v3, v5

    .line 279
    .local v2, "slideBarHeight":F
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 281
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_1

    .line 282
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v1, v4

    add-float/2addr v3, v4

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    .line 294
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 285
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v3

    if-gez v3, :cond_3

    move v0, v4

    .line 290
    goto :goto_1

    .line 291
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v3

    if-lez v3, :cond_4

    .line 292
    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    .line 294
    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCurrentEVStep()I
    .locals 3

    .prologue
    .line 117
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    sub-int v0, v1, v2

    .line 118
    .local v0, "step":I
    return v0
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v0

    .line 138
    :goto_0
    return v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v0

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v0

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v0

    goto :goto_0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v0

    goto :goto_0

    .line 138
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initSize()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onAlphaUpdated()V

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onAlphaUpdated()V

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onAlphaUpdated()V

    .line 164
    :cond_4
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->draw([FLandroid/graphics/Rect;)V

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    .line 314
    :cond_4
    return-void
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onLayoutUpdated()V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onLayoutUpdated()V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->onLayoutUpdated()V

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onLayoutUpdated()V

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onLayoutUpdated()V

    .line 335
    :cond_4
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    .prologue
    .line 339
    const/4 v0, 0x1

    .line 341
    .local v0, "loaded":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_2

    .line 348
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 350
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_3

    .line 351
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 353
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_4

    .line 354
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 356
    :cond_4
    return v0
.end method

.method protected onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 361
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mOrientation:I

    if-eq v0, p1, :cond_3

    .line 362
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mOrientation:I

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->onOrientationChanged(I)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->onOrientationChanged(I)V

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->onOrientationChanged(I)V

    .line 372
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->updateEVSliderVI()V

    .line 374
    :cond_3
    return-void
.end method

.method public onReset()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "TouchEVSlider"

    const-string v1, "onReset"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->reset()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->reset()V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->reset()V

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    .line 184
    :cond_4
    return-void
.end method

.method public onStartMove(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 188
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderOffset:F

    sub-float v0, p2, v2

    .line 190
    .local v0, "fixedY":F
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    sub-float v4, v0, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 191
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    .line 192
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v3, Landroid/graphics/PointF;->y:F

    .line 193
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    .line 201
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getLeft()F

    move-result v2

    sub-float v2, p1, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->findNearestStepId(FF)I

    move-result v1

    .line 202
    .local v1, "tempStep":I
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;->onStepChanged(I)V

    .line 205
    :cond_0
    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    .line 206
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->updateEVSliderVI()V

    .line 207
    return-void

    .line 194
    .end local v1    # "tempStep":I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    .line 195
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v3, Landroid/graphics/PointF;->y:F

    .line 196
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    goto :goto_0

    .line 198
    :cond_2
    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    goto :goto_0
.end method

.method public resetEVSliderAlpha()V
    .locals 2

    .prologue
    const v1, 0x3ee66666    # 0.45f

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->cancelAnimation()V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAlpha(F)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->cancelAnimation()V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAlpha(F)V

    .line 216
    :cond_0
    return-void
.end method

.method public setCurrentEVStep(I)Z
    .locals 6
    .param p1, "step"    # I

    .prologue
    const/4 v2, 0x1

    .line 219
    const-string v1, "TouchEVSlider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCurrentEVStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-ltz p1, :cond_2

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    if-ge p1, v1, :cond_2

    .line 222
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mNumOfStep:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 223
    .local v0, "newStep":I
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    if-ne v1, v0, :cond_0

    move v1, v2

    .line 235
    .end local v0    # "newStep":I
    :goto_0
    return v1

    .line 226
    .restart local v0    # "newStep":I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;->onStepChanged(I)V

    .line 229
    :cond_1
    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    .line 230
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mStepPosition:Ljava/util/List;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mCurrentStep:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mLastTouchPosY:F

    .line 232
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->updateEVSliderVI()V

    move v1, v2

    .line 233
    goto :goto_0

    .line 235
    .end local v0    # "newStep":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSliderChangeListener(Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;)V
    .locals 0
    .param p1, "onSliderChangeListener"    # Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;

    .line 241
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage1:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage2:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mImage3:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->setTint(I)V

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLNinePatch;->setTint(I)V

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_4

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLNinePatch;->setTint(I)V

    .line 261
    :cond_4
    return-void
.end method

.method public startEVSliderAnimation()V
    .locals 3

    .prologue
    const v2, 0x3ee66666    # 0.45f

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getAlpha()F

    move-result v0

    invoke-static {v0, v2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_L:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getAlpha()F

    move-result v0

    invoke-static {v0, v2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mTouchEVShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->mSliderBarBG_R:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V

    .line 274
    :cond_1
    return-void
.end method
