.class Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;
.super Landroid/view/animation/Animation;
.source "AnimationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/AnimationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwitchAnimation"
.end annotation


# instance fields
.field mDepth:F

.field mDirection:I

.field mFromDegrees:I

.field mMaxOffsetY:F

.field mPivotX:F

.field mPivotY:F

.field mRotationAxis:I

.field mToDegrees:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/16 v8, 0x65

    const/16 v7, 0x64

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 637
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 639
    .local v0, "cam":Landroid/graphics/Camera;
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDepth:F

    invoke-virtual {v0, v5, v5, v3}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 640
    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_2

    .line 641
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mMaxOffsetY:F

    mul-float v4, p1, v6

    mul-float v2, v3, v4

    .line 646
    .local v2, "translate":F
    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mRotationAxis:I

    if-nez v3, :cond_4

    .line 647
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDirection:I

    if-ne v3, v7, :cond_3

    .line 648
    neg-float v3, v2

    invoke-virtual {v0, v5, v3, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 652
    :cond_0
    :goto_1
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mFromDegrees:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mToDegrees:I

    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mFromDegrees:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 662
    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 663
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 665
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotX:F

    neg-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotY:F

    neg-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 666
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotX:F

    iget v4, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotY:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 667
    return-void

    .line 643
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .end local v2    # "translate":F
    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mMaxOffsetY:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    mul-float/2addr v4, v6

    mul-float v2, v3, v4

    .restart local v2    # "translate":F
    goto :goto_0

    .line 649
    :cond_3
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDirection:I

    if-ne v3, v8, :cond_0

    .line 650
    invoke-virtual {v0, v5, v2, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_1

    .line 653
    :cond_4
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mRotationAxis:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 654
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDirection:I

    if-ne v3, v7, :cond_6

    .line 655
    neg-float v3, v2

    invoke-virtual {v0, v3, v5, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 659
    :cond_5
    :goto_3
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mFromDegrees:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mToDegrees:I

    iget v5, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mFromDegrees:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_2

    .line 656
    :cond_6
    iget v3, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDirection:I

    if-ne v3, v8, :cond_5

    .line 657
    invoke-virtual {v0, v2, v5, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_3
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 608
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 609
    int-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotX:F

    .line 610
    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mPivotY:F

    .line 611
    return-void
.end method

.method public setDepth(F)V
    .locals 0
    .param p1, "depth"    # F

    .prologue
    .line 614
    iput p1, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDepth:F

    .line 615
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 618
    iput p1, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mDirection:I

    .line 619
    return-void
.end method

.method public setMaxOffsetY(F)V
    .locals 0
    .param p1, "offsetY"    # F

    .prologue
    .line 622
    iput p1, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mMaxOffsetY:F

    .line 623
    return-void
.end method

.method public setRotationAxis(I)V
    .locals 0
    .param p1, "axis"    # I

    .prologue
    .line 626
    iput p1, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mRotationAxis:I

    .line 627
    return-void
.end method

.method public setRotationDegrees(II)V
    .locals 0
    .param p1, "fromDegrees"    # I
    .param p2, "toDegrees"    # I

    .prologue
    .line 630
    iput p1, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mFromDegrees:I

    .line 631
    iput p2, p0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->mToDegrees:I

    .line 632
    return-void
.end method
