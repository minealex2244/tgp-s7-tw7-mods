.class public Lcom/android/launcher3/pagetransition/effects/Carousal;
.super Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;
.source "Carousal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/launcher3/pagetransition/effects/AbstractTransitionEffects;-><init>()V

    return-void
.end method


# virtual methods
.method protected adjustScrollProgress(F)F
    .locals 1
    .param p1, "scrollProgress"    # F

    .prologue
    .line 63
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method protected getPivotValueX(FI)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "pageWidth"    # I

    .prologue
    .line 51
    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getPivotValueY(FI)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "pageHeight"    # I

    .prologue
    .line 55
    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getRotationValue(FF)F
    .locals 1
    .param p1, "scrollProgress"    # F
    .param p2, "rotation"    # F

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method protected getScrollDrawInward()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/launcher3/pagetransition/effects/Carousal;->mNormalScrollDrawInward:F

    return v0
.end method

.method protected getTranslationValueDeltaX(FF)F
    .locals 4
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/pagetransition/effects/Carousal;->mShrinkTranslateX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getTranslationValueX(FF)F
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "translationX"    # F

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/launcher3/pagetransition/effects/Carousal;->mEndPage:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getScrollX()F

    move-result v0

    invoke-static {}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getMaxScrollX()F

    move-result v1

    sub-float p2, v0, v1

    .line 39
    :cond_0
    return p2
.end method

.method protected getTranslationValueY(FF)F
    .locals 4
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/pagetransition/effects/Carousal;->mShrinkTranslateY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getZoomValueX(FF)F
    .locals 3
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 24
    const/high16 v0, 0x40000000    # 2.0f

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    sub-float v0, p2, v0

    return v0
.end method

.method protected getZoomValueY(FF)F
    .locals 3
    .param p1, "scrollProgress"    # F
    .param p2, "zoom"    # F

    .prologue
    .line 28
    const/high16 v0, 0x40000000    # 2.0f

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    sub-float v0, p2, v0

    return v0
.end method
