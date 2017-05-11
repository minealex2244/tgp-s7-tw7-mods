.class public Lcom/android/launcher3/home/SwipeAffordance;
.super Landroid/widget/FrameLayout;
.source "SwipeAffordance.java"


# static fields
.field public static final KEY_APPS_VISIT_COUNT:Ljava/lang/String; = "KEY_APPS_VISIT_COUNT_BY_SWIPE"

.field public static final KEY_EXIT_TIME_STAMP:Ljava/lang/String; = "KEY_AFFORDANCE_EXIT_TIME_STAMP"

.field public static final MAX_APPS_VISIT_COUNT:I = 0x19

.field public static final TAG:Ljava/lang/String; = "SwipeAffordance"


# instance fields
.field private final ANIM_START_DELAY:I

.field private final CANCEL_ANIM_DURATION:I

.field private final GAP_OF_ARROW_START_ANIM:I

.field private final SHOW_ANIM_ALPHA:F

.field private final TEXT_HIDE_ANIM_DURATION:I

.field private final TEXT_HIDE_ANIM_START_DELAY:I

.field private final TEXT_SHOW_ANIM_DURATION:I

.field private mAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mArrowFrameView:Landroid/view/View;

.field private mArrowView1:Landroid/widget/ImageView;

.field private mArrowView2:Landroid/widget/ImageView;

.field private mCancelAnim:Landroid/animation/AnimatorSet;

.field private mCancelAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mCancelWithIndicatorAnim:Landroid/animation/AnimatorSet;

.field private mDescriptionString:Ljava/lang/String;

.field private mExitTime:J

.field private mIsStartedAnim:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOneTimeAnim:Landroid/animation/AnimatorSet;

.field private mString:Ljava/lang/String;

.field private mTextReduceSize:F

.field private mTextSize:F

.field private mTextTranslateY:F

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewMaxWidth:I

.field private mThreeTimesAnim:Landroid/animation/AnimatorSet;

.field private mVisitCountToApps:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/SwipeAffordance;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/SwipeAffordance;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x12c

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->ANIM_START_DELAY:I

    .line 55
    const/16 v1, 0x29b

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->TEXT_SHOW_ANIM_DURATION:I

    .line 56
    iput v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->TEXT_HIDE_ANIM_DURATION:I

    .line 57
    iput v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->CANCEL_ANIM_DURATION:I

    .line 58
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->TEXT_HIDE_ANIM_START_DELAY:I

    .line 59
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->GAP_OF_ARROW_START_ANIM:I

    .line 61
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->SHOW_ANIM_ALPHA:F

    .line 65
    iput v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    .line 81
    iput-boolean v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mIsStartedAnim:Z

    .line 347
    new-instance v1, Lcom/android/launcher3/home/SwipeAffordance$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/SwipeAffordance$1;-><init>(Lcom/android/launcher3/home/SwipeAffordance;)V

    iput-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 364
    new-instance v1, Lcom/android/launcher3/home/SwipeAffordance$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/SwipeAffordance$2;-><init>(Lcom/android/launcher3/home/SwipeAffordance;)V

    iput-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    .line 101
    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextTranslateY:F

    .line 102
    const v1, 0x7f0900ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextReduceSize:F

    .line 103
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    const v2, 0x7f090024

    .line 104
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x7f090000

    .line 105
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextViewMaxWidth:I

    .line 106
    const v1, 0x7f08009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mDescriptionString:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isATTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08009a

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mString:Ljava/lang/String;

    .line 109
    return-void

    .line 107
    :cond_0
    const v1, 0x7f080099

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/SwipeAffordance;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/SwipeAffordance;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/SwipeAffordance;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/SwipeAffordance;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/SwipeAffordance;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/SwipeAffordance;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher3/home/SwipeAffordance;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/SwipeAffordance;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mIsStartedAnim:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/SwipeAffordance;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/SwipeAffordance;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->endAnimators()V

    return-void
.end method

.method private endAnimators()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 220
    :cond_1
    return-void
.end method

.method private getArrowAnimSet()Landroid/animation/AnimatorSet;
    .locals 6

    .prologue
    .line 241
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 243
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050012

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 244
    .local v1, "arrowAnim":Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050010

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 245
    .local v2, "arrowAnim1":Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050011

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    .line 247
    .local v3, "arrowAnim2":Landroid/animation/Animator;
    iget-object v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowFrameView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 248
    const/16 v4, 0x22

    invoke-static {v4}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    iget-object v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 251
    iget-object v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 252
    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 254
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 256
    return-object v0
.end method

.method private getCancelAnimator()Landroid/animation/ObjectAnimator;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 274
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 275
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    .line 274
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 276
    .local v0, "pvhHideAlpha":Landroid/animation/PropertyValuesHolder;
    new-array v1, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v4

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 277
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method private getHideObjectAnimator()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 268
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 269
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 268
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 270
    .local v0, "pvhHideAlpha":Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1

    .line 269
    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x0
    .end array-data
.end method

.method private getShowObjectAnimator()Landroid/animation/ObjectAnimator;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 260
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 261
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    .line 260
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 262
    .local v0, "pvhShowAlpha":Landroid/animation/PropertyValuesHolder;
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 263
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [F

    iget v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextTranslateY:F

    aput v4, v3, v6

    const/4 v4, 0x0

    aput v4, v3, v7

    .line 262
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 264
    .local v1, "pvhShowTransY":Landroid/animation/PropertyValuesHolder;
    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    return-object v2

    .line 261
    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method private getTextShowHideAnimSet()Landroid/animation/AnimatorSet;
    .locals 6

    .prologue
    .line 223
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 225
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getShowObjectAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 226
    .local v2, "showAnim":Landroid/animation/ObjectAnimator;
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getHideObjectAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 228
    .local v1, "hideAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x29b

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 229
    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 231
    const/16 v3, 0x22

    invoke-static {v3}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 232
    const/16 v3, 0x1e

    invoke-static {v3}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 235
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 237
    return-object v0
.end method

.method private isAffordanceTime()Z
    .locals 4

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mExitTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnderVisitCount()Z
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needToCreateAffordance(Lcom/android/launcher3/Launcher;)Z
    .locals 5
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 342
    .local v0, "currentTimeMillis":J
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "KEY_APPS_VISIT_COUNT_BY_SWIPE"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x19

    if-ge v2, v3, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "KEY_AFFORDANCE_EXIT_TIME_STAMP"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setAnimatingString()V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mDescriptionString:Ljava/lang/String;

    .line 313
    .local v0, "newString":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    :goto_1
    return-void

    .line 310
    .end local v0    # "newString":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mString:Ljava/lang/String;

    .restart local v0    # "newString":Ljava/lang/String;
    goto :goto_0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->setSuitableTextSize()V

    goto :goto_1
.end method

.method private setCountForSwipe()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_APPS_VISIT_COUNT_BY_SWIPE"

    const/4 v2, -0x1

    .line 322
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    .line 323
    const-string v0, "SwipeAffordance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create and show swipe affordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method private setExitTime()V
    .locals 8

    .prologue
    .line 327
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "KEY_AFFORDANCE_EXIT_TIME_STAMP"

    const-wide/16 v6, -0x1

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 328
    .local v2, "exitTime":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xa4cb800

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mExitTime:J

    .line 331
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 332
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "KEY_AFFORDANCE_EXIT_TIME_STAMP"

    iget-wide v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mExitTime:J

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 337
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    const-string v1, "SwipeAffordance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set SwipeAffordance exit time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/launcher3/home/SwipeAffordance;->mExitTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 335
    :cond_0
    iput-wide v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mExitTime:J

    goto :goto_0
.end method

.method private setSuitableTextSize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 130
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 131
    .local v1, "paint":Landroid/graphics/Paint;
    iget v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 132
    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 133
    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextViewMaxWidth:I

    if-gt v2, v3, :cond_0

    .line 148
    :goto_0
    return-void

    .line 139
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextViewMaxWidth:I

    if-le v2, v3, :cond_1

    .line 140
    iget v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    iget v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextReduceSize:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    .line 141
    iget v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 142
    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    .line 143
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 142
    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_1

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 147
    const-string v2, "SwipeAffordance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reduced TextSize : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method appsVisitCountUp()V
    .locals 3

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->isUnderVisitCount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iget v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    .line 299
    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 300
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "KEY_APPS_VISIT_COUNT_BY_SWIPE"

    iget v2, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 303
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method changeColorForBg(Z)V
    .locals 3
    .param p1, "whiteBg"    # Z

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 282
    return-void
.end method

.method isStartedAnim()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mIsStartedAnim:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 114
    const v0, 0x7f0f00c7

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mDescriptionString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    const v0, 0x7f0f00c4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowFrameView:Landroid/view/View;

    .line 118
    const v0, 0x7f0f00c6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f0f00c5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;

    .line 121
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->changeColorForBg(Z)V

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->setSuitableTextSize()V

    .line 126
    return-void
.end method

.method setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/view/PageIndicator;)V
    .locals 9
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "pageIndicator"    # Lcom/android/launcher3/common/view/PageIndicator;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 151
    iput-object p1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 153
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    const/16 v1, 0x8

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-virtual {p2, v5}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v5

    .line 155
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getArrowAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getTextShowHideAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v6

    .line 156
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getArrowAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getTextShowHideAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 157
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getArrowAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getTextShowHideAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 158
    invoke-virtual {p2, v4}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v1, v2

    .line 154
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 162
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    new-array v1, v8, [Landroid/animation/Animator;

    invoke-virtual {p2, v5}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v5

    .line 164
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getArrowAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getTextShowHideAnimSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v6

    .line 165
    invoke-virtual {p2, v4}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v7

    .line 163
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 166
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 169
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelWithIndicatorAnim:Landroid/animation/AnimatorSet;

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelWithIndicatorAnim:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getCancelAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 171
    invoke-virtual {p2, v4}, Lcom/android/launcher3/common/view/PageIndicator;->getPageIndicatorAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v1, v4

    .line 170
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelWithIndicatorAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 174
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnim:Landroid/animation/AnimatorSet;

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnim:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->getCancelAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 178
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->setCountForSwipe()V

    .line 179
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->setExitTime()V

    .line 180
    return-void
.end method

.method startAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 183
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->isUnderVisitCount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->isAffordanceTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->endAnimators()V

    .line 186
    invoke-direct {p0}, Lcom/android/launcher3/home/SwipeAffordance;->setAnimatingString()V

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/SwipeAffordance;->setAlpha(F)V

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mArrowView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mIsStartedAnim:Z

    .line 196
    iget v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mVisitCountToApps:I

    if-gez v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/android/launcher3/home/SwipeAffordance;->appsVisitCountUp()V

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mThreeTimesAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mOneTimeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method startCancelAnim(Z)V
    .locals 1
    .param p1, "needToShowIndicator"    # Z

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelWithIndicatorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/SwipeAffordance;->mCancelAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
