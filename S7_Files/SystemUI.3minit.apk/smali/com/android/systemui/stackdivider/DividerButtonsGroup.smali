.class public Lcom/android/systemui/stackdivider/DividerButtonsGroup;
.super Landroid/widget/RelativeLayout;
.source "DividerButtonsGroup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerButtonsGroup$-void_onFinishInflate__LambdaImpl0;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mButtons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/view/GestureDetector;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonsWrapper:Landroid/view/View;

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mRippleView:Landroid/view/View;

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerButtonsGroup;)Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerButtonsGroup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->playTouchSound()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAudioManager:Landroid/media/AudioManager;

    .line 48
    return-void
.end method

.method private changeSnapButtonLook()V
    .locals 5

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 267
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "v$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 268
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f130279

    if-ne v3, v4, :cond_0

    .line 269
    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "v":Landroid/view/View;
    const v3, 0x7f020324

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    :cond_1
    return-void
.end method

.method private createGestureDetector(I)Landroid/view/GestureDetector$SimpleOnGestureListener;
    .locals 1
    .param p1, "buttonType"    # I

    .prologue
    .line 157
    new-instance v0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;-><init>(Lcom/android/systemui/stackdivider/DividerButtonsGroup;I)V

    return-object v0
.end method

.method private drawRipple(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    .line 140
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 141
    .local v5, "rippleSize":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 142
    .local v4, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtonsWrapper:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtonsWrapper:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 143
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int v1, v6, v7

    .line 144
    .local v1, "layoutLeft":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    add-int v2, v6, v7

    .line 145
    .local v2, "layoutRight":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int v3, v6, v7

    .line 146
    .local v3, "layoutTop":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    add-int v0, v6, v7

    .line 148
    .local v0, "layoutBottom":I
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v6, v1, v3, v2, v0}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 149
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mRippleView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 150
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mRippleView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setPressed(Z)V

    .line 138
    .end local v0    # "layoutBottom":I
    .end local v1    # "layoutLeft":I
    .end local v2    # "layoutRight":I
    .end local v3    # "layoutTop":I
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "rippleSize":I
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 152
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mRippleView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

.method private playTouchSound()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 253
    :cond_0
    return-void
.end method

.method private showToast(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    .line 277
    .local v0, "loc":[I
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 278
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v5, :cond_0

    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v2, v2, 0x30

    .line 279
    aget v3, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    aget v4, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v6, v5

    const-wide v8, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v6, v8

    double-to-int v5, v6

    add-int/2addr v4, v5

    .line 278
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 280
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 275
    return-void

    .line 278
    :cond_0
    const/4 v2, 0x3

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_systemui_stackdivider_DividerButtonsGroup_lambda$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->drawRipple(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method animate(Z)V
    .locals 11
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v6, 0x2

    .line 202
    if-eqz p1, :cond_0

    .line 203
    const-string/jumbo v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 204
    .local v0, "anim1":Landroid/animation/ObjectAnimator;
    const-string/jumbo v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 205
    .local v1, "anim2":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    .line 206
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v0, v5, v7

    aput-object v1, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 207
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 208
    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v2, v9, v4}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;-><init>(FF)V

    .line 209
    .local v2, "elasticEaseOut":Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 212
    invoke-virtual {p0, v8}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setAlpha(F)V

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0xa7

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 201
    .end local v2    # "elasticEaseOut":Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;
    :goto_0
    return-void

    .line 215
    .end local v0    # "anim1":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim2":Landroid/animation/ObjectAnimator;
    :cond_0
    const-string/jumbo v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 216
    .restart local v0    # "anim1":Landroid/animation/ObjectAnimator;
    const-string/jumbo v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_3

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 217
    .restart local v1    # "anim2":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    .line 218
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v0, v5, v7

    aput-object v1, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 219
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x14d

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 220
    new-instance v3, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    .line 221
    .local v3, "sineInOut90":Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 222
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/systemui/stackdivider/DividerButtonsGroup$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup$2;-><init>(Lcom/android/systemui/stackdivider/DividerButtonsGroup;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 242
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0xa7

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 203
    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 204
    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 215
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data

    .line 216
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data
.end method

.method cancelAnimate()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 195
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 185
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 188
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    sget v2, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->FLAG_ANIMATE:I

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 189
    return v3

    .line 192
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifySnapMode(Z)V
    .locals 0
    .param p1, "snapViewMode"    # Z

    .prologue
    .line 260
    if-eqz p1, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->changeSnapButtonLook()V

    .line 259
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 59
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    sget v2, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->FLAG_ANIMATE:I

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 249
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 65
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    const v10, 0x7f130279

    const/16 v9, 0x8

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 70
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v2, :cond_1

    .line 72
    .local v2, "port":Z
    :goto_0
    if-eqz v2, :cond_2

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v6, :cond_2

    .line 73
    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_DYNAMIC_ENABLED:Z

    .line 72
    if-eqz v6, :cond_2

    .line 74
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    invoke-virtual {p0, v10}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    const v7, 0x7f13027a

    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v6, :cond_3

    .line 80
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    const v7, 0x7f13027b

    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    const v7, 0x7f13027c

    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const v6, 0x7f130278

    invoke-virtual {p0, v6}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtonsWrapper:Landroid/view/View;

    .line 87
    const v6, 0x7f130277

    invoke-virtual {p0, v6}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mRippleView:Landroid/view/View;

    .line 88
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mRippleView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/RippleDrawable;

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 89
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAudioManager:Landroid/media/AudioManager;

    .line 91
    invoke-virtual {p0, p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 94
    .local v0, "margin":I
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "view$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 95
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 96
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f13027c

    if-eq v6, v7, :cond_0

    .line 97
    if-eqz v2, :cond_5

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_4

    .line 99
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 106
    :goto_4
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    :cond_0
    const/4 v3, -0x1

    .line 110
    .local v3, "target":I
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 129
    :goto_5
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    new-instance v7, Landroid/view/GestureDetector;

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->createGestureDetector(I)Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {v6, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v6, Lcom/android/systemui/stackdivider/DividerButtonsGroup$-void_onFinishInflate__LambdaImpl0;

    invoke-direct {v6, p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup$-void_onFinishInflate__LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/DividerButtonsGroup;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_3

    .end local v0    # "margin":I
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "port":Z
    .end local v3    # "target":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "view$iterator":Ljava/util/Iterator;
    :cond_1
    move v2, v6

    .line 71
    goto/16 :goto_0

    .line 76
    .restart local v2    # "port":Z
    :cond_2
    invoke-virtual {p0, v10}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 82
    :cond_3
    const v6, 0x7f13027b

    invoke-virtual {p0, v6}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 101
    .restart local v0    # "margin":I
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "view":Landroid/view/View;
    .restart local v5    # "view$iterator":Ljava/util/Iterator;
    :cond_4
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    .line 104
    :cond_5
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_4

    .line 112
    .restart local v3    # "target":I
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_5

    .line 116
    :pswitch_1
    const/4 v3, 0x1

    goto :goto_5

    .line 120
    :pswitch_2
    const/4 v3, 0x5

    goto :goto_5

    .line 124
    :pswitch_3
    const/4 v3, 0x2

    goto :goto_5

    .line 69
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "target":I
    .end local v4    # "view":Landroid/view/View;
    :cond_6
    return-void

    .line 110
    :pswitch_data_0
    .packed-switch 0x7f130279
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->showToast(Landroid/view/View;)V

    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 175
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    const/4 v0, 0x0

    return v0

    .line 177
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    sget v2, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->FLAG_ANIMATE:I

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 178
    const/4 v0, 0x1

    return v0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setWindowManager(Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;)V
    .locals 0
    .param p1, "windowManager"    # Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    .line 52
    return-void
.end method
