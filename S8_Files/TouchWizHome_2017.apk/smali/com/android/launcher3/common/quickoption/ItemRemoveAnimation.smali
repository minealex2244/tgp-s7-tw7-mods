.class final Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;
.super Ljava/lang/Object;
.source "ItemRemoveAnimation.java"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHasCanceled:Z

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mHasCanceled:Z

    .line 14
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    .line 15
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 16
    return-void
.end method


# virtual methods
.method animate()V
    .locals 9

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 19
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 20
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 21
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 22
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 23
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [F

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 24
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [F

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 25
    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 26
    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 27
    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 22
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 29
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 30
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 31
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mHasCanceled:Z

    .line 42
    :cond_0
    return-void
.end method

.method getAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method hasCanceled()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->mHasCanceled:Z

    return v0
.end method
