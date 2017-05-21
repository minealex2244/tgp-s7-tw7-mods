.class public Lcom/sec/android/app/camera/widget/gl/TickSlider;
.super Lcom/samsung/android/glview/GLSlider;
.source "TickSlider.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/TickSlider$SliderHandler;,
        Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final LONG_PRESS_DURATION:I = 0x1f4

.field private static final LONG_PRESS_MSG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TickSlider"


# instance fields
.field private final GAUGE_MARKER_POINT_ALPHA_OFFSET:F

.field private final LONG_PRESS_TOUCH_AREA:F

.field private final TICK_BAR_HEIGHT:F

.field private final TICK_MARGIN:F

.field private mExpandAnimation:Landroid/animation/ValueAnimator;

.field private mGaugeMarkerPoint:Lcom/samsung/android/glview/GLImage;

.field private mHandler:Lcom/sec/android/app/camera/widget/gl/TickSlider$SliderHandler;

.field private mInterval:F

.field private mIsAnimationEnabled:Z

.field private mIsExpanded:Z

.field private mIsLongPressStarted:Z

.field private mOffset:F

.field private mShrinkAnimation:Landroid/animation/ValueAnimator;

.field private mSubStep:I

.field private mTick:[Lcom/samsung/android/glview/GLView;

.field private mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mTickSliderLayoutUpdateListener:Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;

.field private mTouchDownPosition:Landroid/graphics/PointF;

.field private mTouchOfStep:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V
    .locals 10
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "mainStep"    # I
    .param p7, "subStep"    # I
    .param p8, "isAnimationEnabled"    # Z

    .prologue
    .line 69
    add-int/lit8 v1, p7, -0x1

    add-int/lit8 v2, p6, -0x1

    mul-int/2addr v1, v2

    add-int v7, p6, v1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    .line 45
    const v1, 0x7f0a03ca

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->TICK_MARGIN:F

    .line 46
    const v1, 0x7f0a03c9

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->TICK_BAR_HEIGHT:F

    .line 47
    const v1, 0x7f0a03c6

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->LONG_PRESS_TOUCH_AREA:F

    .line 48
    const v1, 0x7f0a03c4

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->GAUGE_MARKER_POINT_ALPHA_OFFSET:F

    .line 50
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTouchDownPosition:Landroid/graphics/PointF;

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mInterval:F

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsLongPressStarted:Z

    .line 65
    new-instance v1, Lcom/sec/android/app/camera/widget/gl/TickSlider$SliderHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider$SliderHandler;-><init>(Lcom/sec/android/app/camera/widget/gl/TickSlider;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mHandler:Lcom/sec/android/app/camera/widget/gl/TickSlider$SliderHandler;

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickSliderLayoutUpdateListener:Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;

    .line 70
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsAnimationEnabled:Z

    .line 71
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mSubStep:I

    .line 72
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->TICK_BAR_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mNumOfStep:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float v1, p5, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mNumOfStep:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mOffset:F

    .line 73
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 74
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 76
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mNumOfStep:I

    new-array v1, v1, [Lcom/samsung/android/glview/GLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTick:[Lcom/samsung/android/glview/GLView;

    .line 79
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mNumOfStep:I

    if-ge v8, v1, :cond_1

    .line 80
    rem-int v1, v8, p7

    if-nez v1, :cond_0

    const v9, 0x7f020082

    .line 81
    .local v9, "resId":I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTick:[Lcom/samsung/android/glview/GLView;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->TICK_MARGIN:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->TICK_BAR_HEIGHT:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mOffset:F

    add-float/2addr v4, v5

    int-to-float v5, v8

    mul-float/2addr v4, v5

    invoke-direct {v2, p1, v3, v4, v9}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v8

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTick:[Lcom/samsung/android/glview/GLView;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 79
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 80
    .end local v9    # "resId":I
    :cond_0
    const v9, 0x7f020084

    goto :goto_1

    .line 86
    :cond_1
    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->TICK_BAR_HEIGHT:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const v3, 0x7f020081

    const v4, 0x7f020083

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setGaugeMarker(FFII)V

    .line 87
    new-instance v1, Lcom/sec/android/app/camera/widget/gl/TickSlider$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider$1;-><init>(Lcom/sec/android/app/camera/widget/gl/TickSlider;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setGaugeMarkerPositionUpdatedListener(Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;)V

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->updateStepPosition()V

    .line 97
    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsAnimationEnabled:Z

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setAnimation()V

    .line 101
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->init()V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setClipping(Z)V

    .line 104
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setFocusable(Z)V

    .line 105
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->setDraggable(Z)V

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsLongPressStarted:Z

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsExpanded:Z

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/TickSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/TickSlider;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->updateGaugeMarkerPoint()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/widget/gl/TickSlider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/TickSlider;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsExpanded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/TickSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/TickSlider;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsLongPressStarted:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/TickSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/TickSlider;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->startSliderExpandAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/gl/TickSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/widget/gl/TickSlider;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->stopLongPressTimer()V

    return-void
.end method

.method private getNearestMainStep(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_1

    .line 326
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mSubStep:I

    rem-int v1, v0, v1

    if-nez v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTick:[Lcom/samsung/android/glview/GLView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->GAUGE_MARKER_POINT_ALPHA_OFFSET:F

    sub-float/2addr v1, v2

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTick:[Lcom/samsung/android/glview/GLView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->TICK_BAR_HEIGHT:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->GAUGE_MARKER_POINT_ALPHA_OFFSET:F

    add-float/2addr v1, v2

    cmpl-float v1, v1, p2

    if-ltz v1, :cond_0

    .line 332
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 325
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    iput-object p0, v0, Lcom/samsung/android/glview/GLViewGroup;->mParent:Lcom/samsung/android/glview/GLView;

    .line 339
    :cond_0
    return-void
.end method

.method private isLongPressTouchArea(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTouchDownPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->LONG_PRESS_TOUCH_AREA:F

    add-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTouchDownPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->LONG_PRESS_TOUCH_AREA:F

    sub-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    .line 343
    :cond_0
    const/4 v0, 0x0

    .line 345
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startLongPressTimer()V
    .locals 4

    .prologue
    .line 349
    const-string v0, "TickSlider"

    const-string v1, "startLongPressTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mHandler:Lcom/sec/android/app/camera/widget/gl/TickSlider$SliderHandler;

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsLongPressStarted:Z

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mHandler:Lcom/sec/android/app/camera/widget/gl/TickSlider$SliderHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/TickSlider$SliderHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 355
    :cond_0
    return-void
.end method

.method private startSliderExpandAnimation()V
    .locals 2

    .prologue
    .line 358
    const-string v0, "TickSlider"

    const-string v1, "startSliderExpandAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mCurrentStep:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsAnimationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mExpandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsExpanded:Z

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mCurrentStep:I

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTouchOfStep:I

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mExpandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private startSliderShrinkAnimation()V
    .locals 2

    .prologue
    .line 368
    const-string v0, "TickSlider"

    const-string v1, "startSliderShrinkAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mShrinkAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 370
    return-void
.end method

.method private stopLongPressTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 373
    const-string v0, "TickSlider"

    const-string v1, "stopLongPressTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mHandler:Lcom/sec/android/app/camera/widget/gl/TickSlider$SliderHandler;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mHandler:Lcom/sec/android/app/camera/widget/gl/TickSlider$SliderHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider$SliderHandler;->removeMessages(I)V

    .line 378
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsLongPressStarted:Z

    .line 379
    return-void
.end method

.method private updateGaugeMarkerPoint()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 382
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarkerPoint:Lcom/samsung/android/glview/GLImage;

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarkerPoint:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->TICK_BAR_HEIGHT:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarkerPoint:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    .line 384
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getBottom()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getCurrentTop()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getTop()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getCurrentTop()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    .line 385
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getCurrentLeft()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getCurrentTop()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getNearestMainStep(FF)I

    move-result v0

    .line 386
    .local v0, "nearestMainStep":I
    if-ltz v0, :cond_2

    .line 387
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getCurrentTop()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTick:[Lcom/samsung/android/glview/GLView;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v4

    sub-float/2addr v3, v4

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTick:[Lcom/samsung/android/glview/GLView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getCurrentTop()F

    move-result v4

    sub-float v1, v3, v4

    .line 388
    .local v1, "offset":F
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarkerPoint:Lcom/samsung/android/glview/GLImage;

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->GAUGE_MARKER_POINT_ALPHA_OFFSET:F

    div-float/2addr v4, v7

    sub-float v4, v1, v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    :goto_1
    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    .line 395
    .end local v0    # "nearestMainStep":I
    .end local v1    # "offset":F
    :goto_2
    return-void

    .line 387
    .restart local v0    # "nearestMainStep":I
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getCurrentTop()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTick:[Lcom/samsung/android/glview/GLView;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v4

    sub-float v1, v3, v4

    goto :goto_0

    .line 388
    .restart local v1    # "offset":F
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->GAUGE_MARKER_POINT_ALPHA_OFFSET:F

    div-float/2addr v2, v7

    sub-float v2, v1, v2

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->GAUGE_MARKER_POINT_ALPHA_OFFSET:F

    div-float/2addr v2, v4

    goto :goto_1

    .line 390
    .end local v1    # "offset":F
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarkerPoint:Lcom/samsung/android/glview/GLImage;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    goto :goto_2

    .line 393
    .end local v0    # "nearestMainStep":I
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarkerPoint:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLImage;->setAlpha(F)V

    goto :goto_2
.end method

.method private updateGaugeMarkerPosition()V
    .locals 4

    .prologue
    .line 398
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mStepPosition:Ljava/util/List;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mCurrentStep:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mStepPosition:Ljava/util/List;

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mCurrentStep:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FF)V

    .line 402
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLSlider;->clear()V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/samsung/android/glview/GLSlider;->getLoaded()Z

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->load()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsAnimationEnabled:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mExpandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsExpanded:Z

    or-int/2addr v0, v1

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/samsung/android/glview/GLSlider;->onAlphaUpdated()V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->onAlphaUpdated()V

    .line 139
    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 143
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mInterval:F

    .line 145
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mNumOfStep:I

    if-gt v0, v1, :cond_2

    .line 146
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTouchOfStep:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mNumOfStep:I

    if-ge v1, v2, :cond_0

    .line 147
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTick:[Lcom/samsung/android/glview/GLView;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTouchOfStep:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mInterval:F

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-virtual {v1, v5, v2, v6}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickSliderLayoutUpdateListener:Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickSliderLayoutUpdateListener:Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTouchOfStep:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->translateStepByOrdering(I)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mInterval:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;->onTickSliderLayoutUpdating(IF)V

    .line 152
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTouchOfStep:I

    sub-int/2addr v1, v0

    if-ltz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTick:[Lcom/samsung/android/glview/GLView;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTouchOfStep:I

    sub-int/2addr v2, v0

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mInterval:F

    neg-float v2, v2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-virtual {v1, v5, v2, v6}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickSliderLayoutUpdateListener:Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickSliderLayoutUpdateListener:Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTouchOfStep:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->translateStepByOrdering(I)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mInterval:F

    neg-float v3, v3

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;->onTickSliderLayoutUpdating(IF)V

    .line 145
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickSliderLayoutUpdateListener:Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;

    if-eqz v1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickSliderLayoutUpdateListener:Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;->onTickSliderLayoutUpdated()V

    .line 164
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->updateStepPosition()V

    .line 165
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->updateGaugeMarkerPosition()V

    .line 166
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->updateGaugeMarkerPoint()V

    .line 167
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->draw([FLandroid/graphics/Rect;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->draw([FLandroid/graphics/Rect;)V

    .line 305
    :cond_1
    return-void
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Lcom/samsung/android/glview/GLSlider;->onLayoutUpdated()V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->onLayoutUpdated()V

    .line 313
    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Lcom/samsung/android/glview/GLSlider;->onLoad()Z

    move-result v0

    .line 318
    .local v0, "loaded":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 321
    :cond_0
    return v0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/samsung/android/glview/GLSlider;->onReset()V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->reset()V

    .line 175
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 179
    const/4 v0, 0x1

    .line 181
    .local v0, "retValue":Z
    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsAnimationEnabled:Z

    if-eqz v1, :cond_9

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mExpandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 187
    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsExpanded:Z

    if-nez v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTouchDownPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 189
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->startLongPressTimer()V

    .line 190
    const/4 v0, 0x1

    .line 211
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->updateGaugeMarkerPoint()V

    .line 212
    return v0

    .line 192
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 193
    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsLongPressStarted:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mExpandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->isLongPressTouchArea(FF)Z

    move-result v1

    if-nez v1, :cond_3

    .line 195
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->stopLongPressTimer()V

    .line 198
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 200
    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsLongPressStarted:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mExpandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_6

    .line 201
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->stopLongPressTimer()V

    .line 203
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mExpandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsExpanded:Z

    if-eqz v1, :cond_8

    .line 204
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->stopSliderExpand()V

    .line 206
    :cond_8
    const/4 v0, 0x1

    goto :goto_0

    .line 209
    :cond_9
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 217
    new-array v0, v5, [F

    aput v2, v0, v3

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mOffset:F

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mExpandAnimation:Landroid/animation/ValueAnimator;

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mExpandAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mExpandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mExpandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mExpandAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/TickSlider$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider$2;-><init>(Lcom/sec/android/app/camera/widget/gl/TickSlider;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 231
    new-array v0, v5, [F

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mOffset:F

    aput v1, v0, v3

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mShrinkAnimation:Landroid/animation/ValueAnimator;

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mShrinkAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mShrinkAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mShrinkAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 235
    return-void
.end method

.method public setCurrentStep(I)Z
    .locals 2
    .param p1, "step"    # I

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "retValue":Z
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 242
    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->updateGaugeMarkerPoint()V

    .line 246
    :cond_0
    return v0
.end method

.method public setGaugeMarker(FFII)V
    .locals 5
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "normalId"    # I
    .param p4, "pressResId"    # I

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(FFII)V

    .line 253
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->TICK_MARGIN:F

    neg-float v2, v2

    const/4 v3, 0x0

    const v4, 0x7f020085

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarkerPoint:Lcom/samsung/android/glview/GLImage;

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarkerPoint:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 255
    return-void
.end method

.method public setMarkerVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLSlider;->setMarkerVisible(I)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mGaugeMarkerPoint:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 261
    return-void
.end method

.method public setTickSliderOffsetChangeListener(Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickSliderLayoutUpdateListener:Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;

    .line 265
    return-void
.end method

.method public stopSliderExpand()V
    .locals 2

    .prologue
    .line 268
    const-string v0, "TickSlider"

    const-string v1, "stopSliderExpand"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->stopLongPressTimer()V

    .line 272
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsAnimationEnabled:Z

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mExpandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mExpandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 276
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mIsExpanded:Z

    .line 277
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/TickSlider;->startSliderShrinkAnimation()V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickSliderLayoutUpdateListener:Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickSliderLayoutUpdateListener:Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;->onTickSliderLayoutReset()V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTickSliderLayoutUpdateListener:Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;->onTickSliderLayoutUpdated()V

    .line 286
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mInterval:F

    .line 287
    return-void
.end method

.method public updateStepPosition()V
    .locals 5

    .prologue
    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mNumOfStep:I

    if-ge v0, v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 292
    .local v1, "pt":Landroid/graphics/PointF;
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTick:[Lcom/samsung/android/glview/GLView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLayoutX()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTick:[Lcom/samsung/android/glview/GLView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getLayoutY()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/TickSlider;->mTick:[Lcom/samsung/android/glview/GLView;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "pt":Landroid/graphics/PointF;
    :cond_0
    return-void
.end method
