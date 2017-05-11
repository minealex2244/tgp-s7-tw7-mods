.class Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;
.super Landroid/view/animation/RotateAnimation;
.source "AfButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/gl/AfButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhaseRotateAnimation"
.end annotation


# instance fields
.field private mFromDegrees:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPivotX:F

.field private mPivotY:F

.field private mToDegrees:F


# direct methods
.method public constructor <init>(FFIFIF)V
    .locals 1
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "pivotXType"    # I
    .param p4, "pivotXValue"    # F
    .param p5, "pivotYType"    # I
    .param p6, "pivotYValue"    # F

    .prologue
    .line 275
    invoke-direct/range {p0 .. p6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 276
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->mFromDegrees:F

    .line 277
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->mToDegrees:F

    .line 278
    iput p4, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->mPivotX:F

    .line 279
    iput p6, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->mPivotY:F

    .line 280
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->setFillAfter(Z)V

    .line 281
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 300
    invoke-super {p0, p1, p2}, Landroid/view/animation/RotateAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 301
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->mFromDegrees:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->mToDegrees:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->mFromDegrees:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v0, v1

    .line 302
    .local v0, "degrees":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->mPivotX:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->mPivotY:F

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 303
    return-void
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public setDegree(FF)V
    .locals 0
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F

    .prologue
    .line 294
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->mFromDegrees:F

    .line 295
    iput p2, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->mToDegrees:F

    .line 296
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/AfButton$PhaseRotateAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 291
    return-void
.end method
